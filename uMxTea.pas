{$Q-}

unit uMxTEA;
(*****************************************************************************)
(* MXTEA.PAS  -  XTEA Encryption/Decryption Algorithm                        *)
(*                                                                           *)
(* (C) TDi GmbH                                                              *)
(*                                                                           *)
(* Include File for Delphi                                                   *)
(*****************************************************************************)
(* The 'Extended Tiny Encryption Algorithm' (XTEA) by David Wheeler and      *)
(* Roger Needham of the Cambridge Computer Laboratory.                       *)
(* XTEA is a Feistel cipher with XOR and AND addition as the non-linear      *)
(* mixing functions.                                                         *)
(* Takes 64 bits (8 Bytes block) of data in Data[0] and Data[1].             *)
(* Returns 64 bits of encrypted data in Data[0] and Data[1].                 *)
(* Takes 128 bits of key in Key[0] - Key[3].                                 *)
(*                                                                           *)
(* In this unit the checking for integer overflow must be disabled: {$Q-}    *)
(*                                                                           *)
(* Copy MxTEA.PAS into the program directory and add 'MxTEA' to the uses     *)
(* list of your program                                                      *)
(*                                                                           *)
(* In the calling routine, declare:                                          *)
(*    Key:  array[0..3] of longword;                                         *)
(*    Data: array[0..1] of longword;                                         *)
(*                                                                           *)
(* Then call the functions:                                                  *)
(*    MxApp_Encrypt(@Data, @Key);                                            *)
(*    MxApp_Decrypt(@Data, @Key);                                            *)
(*****************************************************************************)

Interface

Type
  ta3tea = array [0..3] of longword;            (* stat. Array    *)
  ta1tea = array [0..1] of longword;            (* stat. Array    *)
  tpa3tea = ^ta3tea;                            (* Pointertype to Array  *)
  tpa1tea = ^ta1tea;                            (* Pointertype to Array  *)

FUNCTION MxApp_Encrypt(Data: tpa1tea;          (* Pointer CbValue *)
                       Key: tpa3tea): Word;    (* Pointer CbValue *)

FUNCTION MxApp_Decrypt(Data: tpa1tea;          (* Pointer CbValue *)
                       Key: tpa3tea): Word;    (* Pointer CbValue *)

Implementation

FUNCTION MxApp_Encrypt(Data: tpa1tea; Key: tpa3tea): Word;
VAR
   delta: LongWord;
   sum  : LongWord;
   cnt  : Word;

BEGIN

   sum   := 0;
   delta := $9E3779B9;

   FOR cnt:=1 TO 32 DO BEGIN
      Data^[0] := Data^[0] + ( (((Data^[1] shl 4) XOR (Data^[1] shr 5)) + Data^[1]) XOR (sum + Key^[sum AND 3]) );
      sum := sum + delta;
      Data^[1] := Data^[1] + ( (((Data^[0] shl 4) XOR (Data^[0] shr 5)) + Data^[0]) XOR (sum + Key^[sum shr 11 AND 3]) );
   END;

   MxApp_Encrypt := 0;

END;


FUNCTION MxApp_Decrypt (Data: tpa1tea;
                        Key : tpa3tea): Word;
VAR
   delta: LongWord;
   sum  : LongWord;
   cnt  : Word;

BEGIN

   sum   := $C6EF3720;
   delta := $9E3779B9;

   FOR cnt:=1 TO 32 DO BEGIN
      Data^[1] := Data^[1] - ( (((Data^[0] shl 4) XOR (Data^[0] shr 5)) + Data^[0]) XOR (sum + Key^[sum shr 11 AND 3]) );
      sum := sum - delta;
      Data^[0] := Data^[0] - ( (((Data^[1] shl 4) XOR (Data^[1] shr 5)) + Data^[1]) XOR (sum + Key^[sum AND 3]) );
   END;

   MxApp_Decrypt := 0;

END;

end.

