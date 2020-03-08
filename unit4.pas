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
   cardResults:ARRAY [0..29] of integer;
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

procedure aufgabenErstellen(ergebnisse: Array of Integer);
begin

end;

procedure TForm4.FormCreate(Sender: TObject);
var i, result, arraySize:Integer;
begin
       Randomize;
       // lege 15 Ergebnisse fest
       i := 0;
       arraysize := Length(cardResults);
       while i <= arraySize-2 do
       begin
            result := random(100); // kann zu duplikaten führen :(
            WriteLn('idx: ', i, ' = ', result);
            cardResults[i] := result;
            cardResults[i+1] := result;
            i := i+2;
       end;

       // mische liste
       for i:=0 to arraySize-1 do
       begin
            swap(cardResults[i], cardResults[random(arraySize-1)]);
       end;

       // erstelle Aufgabe anhand des vordefinierten Ergebnis

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

