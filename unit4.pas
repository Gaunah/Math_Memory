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
    procedure cardSelected(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure level1Clicked(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
{ TForm4 }


procedure TForm4.FormClick(Sender: TObject);
begin

end;

procedure TForm4.level1Clicked(Sender: TObject);
begin
       WriteLn('lvl 1 clicked!');
end;

procedure TForm4.cardSelected(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
       WriteLn('col: ', aCol, ' row: ', aRow);
end;

procedure swap(var a,b : integer);
var
   tmp : integer;
begin
    tmp := a;
    a := b;
    b := tmp;
end;

function aufgabeSubtrahien(ergebnis:integer): string;
var x, y: Real;
begin
     // y festlegen und x anhand ergebnis ausrechnen
     y := random(10);
     x := ergebnis + y;
     aufgabeSubtrahien := FloatToStr(x)+'-'+FloatToStr(y)+'='+IntToStr(ergebnis);
end;

function aufgabeAddieren(ergebnis:integer): string;
var x, y: Real;
begin
     // y festlegen und x anhand ergebnis ausrechnen
     y := random(10);
     x := ergebnis - y;
     aufgabeAddieren := FloatToStr(x)+'+'+FloatToStr(y)+'='+IntToStr(ergebnis);
end;

function aufgabeMultiplizerien(ergebnis:integer): string;
var x: Real;
    y: Integer;
begin
     // y festlegen und x anhand ergebnis ausrechnen
     repeat // solang probieren bis keine Gleitkomma Rechnung entsteht
           y := random(10)+1; // +1 um division mit Null verhindern
           x := ergebnis / y;
     until (ergebnis mod y) = 0;

     aufgabeMultiplizerien := FloatToStr(x)+'*'+FloatToStr(y)+'='+IntToStr(ergebnis);
end;

function aufgabeDividieren(ergebnis:integer): string;
var x, y: Real;
begin
     // y festlegen und x anhand ergebnis ausrechnen
     y := random(4)+1; // +1 um division mit Null verhindern
     x := ergebnis * y;
     aufgabeDividieren := FloatToStr(x)+'/'+FloatToStr(y)+'='+IntToStr(ergebnis);
end;

procedure aufgabenErstellen(ergebnisse: Array of Integer);
var i, arraySize, operation:Integer;
    aufgabe: string;
begin
     arraySize := Length(ergebnisse);
     for i:= 0 to arraySize-1 do
     begin
          operation := random(4);
          case operation of
               0: aufgabe := aufgabeSubtrahien(ergebnisse[i]);
               1: aufgabe := aufgabeAddieren(ergebnisse[i]);
               2: aufgabe := aufgabeMultiplizerien(ergebnisse[i]);
               3: aufgabe := aufgabeDividieren(ergebnisse[i]);
          end;
          aufgabenArray[i] := aufgabe;
     end;
end;

procedure TForm4.FormCreate(Sender: TObject);
var i, result, arraySize, x, y:Integer;
begin
       Randomize;
       // lege 15 Ergebnisse fest
       i := 0;
       arraysize := Length(ergebnisArray);
       while i <= arraySize-2 do
       begin
            result := random(100); // kann zu duplikaten führen :(
            ergebnisArray[i] := result;
            ergebnisArray[i+1] := result;
            i := i+2;
       end;

       // mische liste
       for i:=0 to arraySize-1 do
       begin
            swap(ergebnisArray[i], ergebnisArray[random(arraySize-1)]);
       end;

       // erstelle Aufgaben anhand der vordefinierten Ergebnisse
       aufgabenErstellen(ergebnisArray);

       // Grid füllen
       for i:=0 to arraySize-1 do
       begin
            x:=i mod 3;
            y:=i mod 10;
            StringGrid1.Cells[y, x] := aufgabenArray[i];
       end;
end;

procedure TForm4.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin

end;

procedure TForm4.StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var Col,Row:integer;
begin
      Stringgrid1.MouseToCell(x,y,col,row);
      Edit2.Text:=InttoStr(Col);
      Edit3.Text:=InttoStr(row);
end;

end.

