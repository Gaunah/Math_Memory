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
    procedure Button1Click(Sender: TObject);
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
 VAR n:ARRAY [0..9,0..2] of integer;
   al:ARRAY [0..30] of integer;
{ TForm4 }


procedure TForm4.FormClick(Sender: TObject);
begin

end;

procedure TForm4.Button1Click(Sender: TObject);
begin

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  randomize;
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

