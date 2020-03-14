Unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Types;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    procedure level1Clicked(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure kartenLeeren();
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}
 VAR
   ergebnisArray:ARRAY [0..29] of integer;
   aufgabenArray:ARRAY [0..29] of string;
   wieVieleOffen, letzteErgebnis, spielStand, letzterIdx: Integer;
{ TForm4 }


procedure TForm4.FormClick(Sender: TObject);
begin

end;

procedure TForm4.level1Clicked(Sender: TObject);
begin
       WriteLn('lvl 1 clicked!');
end;

procedure TForm4.kartenLeeren();
var x, y:Integer;
begin
       for y:=0 to StringGrid1.RowCount-1 do
       begin
            for x:=0 to StringGrid1.ColCount-1 do
            begin
                 StringGrid1.Cells[x, y] := '';
            end;
       end;
end;

procedure swap(var a,b : integer);
var
   tmp : integer;
begin
    tmp := a;
    a := b;
    b := tmp;
end;

function aufgabeSubtrahieren(ergebnis:integer): string;
var x, y: Real;
begin
    {y festlegen und x anhand ergebnis ausrechnen}
     y := random(10);
     x := ergebnis + y;
     aufgabeSubtrahieren := FloatToStr(x)+'-'+FloatToStr(y);
end;

function aufgabeAddieren(ergebnis:integer): string;
var x, y: Real;
begin
    {y festlegen und x anhand ergebnis ausrechnen}
     y := random(10);
     x := ergebnis - y;
     aufgabeAddieren := FloatToStr(x)+'+'+FloatToStr(y);
end;

function aufgabeMultiplizieren(ergebnis:integer): string;
var x: Real;
    y: Integer;
begin
    {y festlegen und x anhand ergebnis ausrechnen}
     repeat {solang probieren bis keine Gleitkomma Rechnung entsteht}
           y := random(10)+1; {+1 um division mit Null verhindern}
           x := ergebnis / y;
     until (ergebnis mod y) = 0;

     aufgabeMultiplizieren := FloatToStr(x)+'*'+FloatToStr(y);
end;

function aufgabeDividieren(ergebnis:integer): string;
var x, y: Real;
begin
    {y festlegen und x anhand ergebnis ausrechnen}
     y := random(4)+1; {+1 um division mit Null verhindern}
     x := ergebnis * y;
     aufgabeDividieren := FloatToStr(x)+'/'+FloatToStr(y);
end;

procedure aufgabenErstellen(ergebnisse: Array of Integer);
var i, arraySize, operation:Integer;
    aufgabe: string;
begin
     arraySize := Length(ergebnisse);
     {ergebnisArray druchgehen und für jedes Ergebniss
     eine zufällige Aufgabe generieren und in aufgabenArray schreiben}
     for i:= 0 to arraySize-1 do
     begin
          operation := random(4);
          case operation of
               0: aufgabe := aufgabeSubtrahieren(ergebnisse[i]);
               1: aufgabe := aufgabeAddieren(ergebnisse[i]);
               2: aufgabe := aufgabeMultiplizieren(ergebnisse[i]);
               3: aufgabe := aufgabeDividieren(ergebnisse[i]);
          end;
          aufgabenArray[i] := aufgabe;
     end;
end;

procedure TForm4.FormCreate(Sender: TObject);
var i, res, arraySize, x, y:Integer;
begin
       Randomize;
       {lege 15 zufällige Ergebnisse fest}
       i := 0;
       arraysize := Length(ergebnisArray);
       while i <= arraySize-2 do
       begin
            res := random(100); {kann zu Duplikaten führen :( }
            ergebnisArray[i] := res;
            ergebnisArray[i+1] := res;
            i := i+2;
       end;

       {mische array: durchgehen und mit zufälligen Index tauschen}
       for i:=0 to arraySize-1 do
       begin
            swap(ergebnisArray[i], ergebnisArray[random(arraySize-1)]);
       end;

       {erstelle Aufgaben anhand der vordefinierten Ergebnisse}
       aufgabenErstellen(ergebnisArray);

       {init}
       letzteErgebnis:= 999999;
       spielStand:= 0;
       letzterIdx:= -1;
end;

procedure TForm4.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
    idx: Integer;
begin
     idx := StringGrid1.ColCount * aRow + aCol;

     {nur gelb ausfüllen wenn aufgabenArray an dieser Stelle leer ist}
     if aufgabenArray[idx] = '' then
     begin
       with StringGrid1.Canvas do
       begin
            Brush.Color := clyellow;
            FillRect(aRect);
       end;
     end;
end;

procedure TForm4.StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var col,row, idx:integer;
begin
      Stringgrid1.MouseToCell(x,y,col,row);
      Edit2.Text:=InttoStr(col);
      Edit3.Text:=InttoStr(row);
      idx := StringGrid1.ColCount * row + col;

      if letzterIdx = idx then
         begin
           {nichts machen wenn letzte Karte erneut geklickt wurde}
           letzterIdx := -1;
           Exit;
         end;

      wieVieleOffen:= wieVieleOffen + 1;
      if(wieVieleOffen > 2) then
          begin
          {Spielfeld bereinigen}
          kartenLeeren();
          wieVieleOffen:=0;
          WriteLn('---------');
          letzteErgebnis:= 999999; {letzteErgebnis ungültig machen}
          end
      else
          begin


          {Karte aufdecken, Zug auswerten, Ergebnismerken}
          StringGrid1.Cells[col, row] := '     ' + aufgabenArray[idx];
          WriteLn('result: ', ergebnisArray[idx]);

          if(ergebnisArray[idx] = letzteErgebnis) then {wenn richtige Karte}
          begin
              spielStand:= spielStand + 1;
              Edit1.Text:=IntToStr(spielStand);

              {Diese und letze Aufgabe aus dem Array löschen}
              aufgabenArray[idx] := '';
              aufgabenArray[letzterIdx] := '';
          end;

          letzterIdx := idx;
          letzteErgebnis:= ergebnisArray[idx];
          end;

end;

end.

