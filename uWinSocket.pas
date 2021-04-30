unit uWinSocket;

interface

const
  AR_CONNECT_SUCCESS = 1;
  AR_CONNECT_FAIL = 0;
  AR_CONNECT_TIMEOUT = -1;
  AR_CONNECT_SENDRECEIVE_FAIL = -2;

function ConnectTimeOut(InHost: String; InPort: Integer; msTimeout: Integer; SendReceive: Boolean; ToSend: String; var ToReceive: String): Integer;

implementation

uses
  Windows, SysUtils, WinSock, uCommonTools;

var
  WSAD: TWSAData;

function ConnectTimeOut(InHost: String; InPort: Integer; msTimeout: Integer; SendReceive: Boolean; ToSend: String; var ToReceive: String): Integer;
 const
   BUFFER_LENGTH = 8192;
   SLEEP_PAUSE = 100;
 var
   Sock: TSocket;
   Timeout: TTimeVal;
   Addr: TSockAddrIn;
   setW, setE: TFDSet;
   Block, iRecv: LongInt;
   HostEnt: PHostEnt;
   InAddr: TInAddr;
   Buffer: array[0..BUFFER_LENGTH - 1] of AnsiChar;
   Received: String;
begin
  Result := AR_CONNECT_FAIL;
  Sock := socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
  if Sock <> INVALID_SOCKET then try
    Addr.sin_family := AF_INET;
    if icsGetStringWithoutChars(InHost, '.') = icsExtractDigits(InHost) then Addr.sin_addr.S_addr := inet_addr(PAnsiChar(AnsiString(InHost))) else begin
      HostEnt := gethostbyname(PAnsiChar(AnsiString(InHost)));
      FillChar(InAddr, SizeOf(InAddr), 0);
      if HostEnt <> nil then with InAddr, HostEnt^ do begin
        S_un_b.s_b1 := h_addr^[0];
        S_un_b.s_b2 := h_addr^[1];
        S_un_b.s_b3 := h_addr^[2];
        S_un_b.s_b4 := h_addr^[3];
      end;
      Addr.sin_addr := InAddr;
    end;
    Addr.sin_port := htons(InPort);
    Block := 1;
    if ioctlsocket(Sock, FIONBIO, Block) = 0 then try
      connect(Sock, Addr, SizeOf(Addr));
      if WSAGetLastError = WSAEWOULDBLOCK then begin
        FD_ZERO(setW);
        FD_SET(Sock, setW);
        FD_ZERO(setE);
        FD_SET(Sock, setE);
        Timeout.tv_sec := msTimeout div 1000;
        Timeout.tv_usec := (msTimeout mod 1000) * 1000;
        select(0, nil, @setW, @setE, @Timeout);
        if FD_ISSET(Sock, setW) then Result := AR_CONNECT_SUCCESS else if FD_ISSET(Sock, setE) then Result := AR_CONNECT_FAIL else Result := AR_CONNECT_TIMEOUT;
        if (Result = 1) and SendReceive then begin
          if ToSend <> '' then begin
            Sleep(SLEEP_PAUSE);
            send(Sock, ToSend[1], Length(ToSend), 0);
          end;
          Received := '';
          repeat
            ZeroMemory(@Buffer, SizeOf(Buffer));
            Sleep(SLEEP_PAUSE);
            iRecv := recv(Sock, Buffer[0], SizeOf(Buffer), 0);
            if (iRecv > 0) and (iRecv <> INVALID_SOCKET) then Received := Received + Trim(String(Buffer));
          until ((iRecv <= 0) or (iRecv = INVALID_SOCKET));
          if Trim(Received) <> Trim(ToReceive) then Result := AR_CONNECT_SENDRECEIVE_FAIL;
          ToReceive := Received;
        end;
      end;
    finally
      Block := 0;
      ioctlsocket(Sock, FIONBIO, Block);
    end;
  finally
    shutdown(Sock, SD_BOTH);
    closesocket(Sock);
  end;
end;

initialization

  WSAStartup($0101, WSAD);

finalization

  WSACleanUp;

end.
