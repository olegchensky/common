unit uBeep;

interface

type
  TOctave = 0..9;
  TNote = (nC, nCs, nD, nDs, nE, nF, nFs, nG, nGs, nA, nAs, nB);
  TPlayable = nC..nB;

  { Approximate frequencies based on table in 'Electronic Music And Musique Concreté' }
  { By F. C. Judd A.Inst.E. Neville Spearman, London, 1961                            }

const
  Freq: array [TPlayable, TOctave] of Word=(
     (16, 33,  65, 131, 262, 523, 1047, 2093, 4168,  8372 ),
     (17, 35,  69, 139, 277, 554, 1109, 2217, 4435,  8870 ),
     (18, 37,  73, 147, 294, 587, 1174, 2344, 4699,  9397 ),
     (19, 39,  78, 156, 311, 622, 1245, 2489, 4978,  9956 ),
     (21, 41,  82, 165, 330, 659, 1319, 2637, 5274, 10548 ),
     (22, 44,  87, 175, 349, 698, 1397, 2794, 5588, 11175 ),
     (23, 46,  92, 185, 370, 740, 1480, 2960, 5920, 11840 ),
     (24, 49,  98, 196, 392, 784, 1568, 3136, 6271, 12542 ),
     (26, 52, 104, 208, 415, 831, 1661, 3322, 6645, 13290 ),
     (28, 55, 110, 220, 440, 880, 1760, 3520, 7040, 14080 ),
     (29, 59, 117, 233, 466, 932, 1865, 3729, 7459, 14917 ),
     (31, 62, 123, 247, 494, 988, 1976, 3951, 7902, 15804 )
    );

Procedure ShutUp; { Added to help counter the effects of DoBeep(Freq, -1).
If you are producing a tone, & you want to stop without doing another Beep, call this procedure }

Procedure DoBeep(Freq: Word; MSecs: Integer); { Duration of -1 means bleep until the next bleep sent, or ShutUp is called }

Procedure BeepPause(MSecs: Integer);

implementation

uses
  Windows, uCommonTools;

procedure BeepPause(MSecs: LongInt);
 const HiValue = High(DWord);
 var
   iCurrTickCount, iFirstTickCount: DWord;
   iElapTime: Integer;
Begin
  iFirstTickCount := GetTickCount;
  repeat
    iCurrTickCount := GetTickCount;
    if iCurrTickCount < iFirstTickCount then iElapTime := HiValue - iFirstTickCount + iCurrTickCount else iElapTime := iCurrTickCount - iFirstTickCount;
  until iElapTime >= MSecs;
end;

procedure DoBeep(Freq: Word; MSecs: Integer);
Begin
  if MSecs < -1 Then MSecs := 0;
  Windows.Beep(Freq, MSecs);
End;

procedure ShutUp;
begin
  Windows.Beep(1, 0);
end;

end.

