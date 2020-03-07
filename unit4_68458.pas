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
VAR r,z,o,u,i,k,j,m,g,a,c,w,v,y,t,b,col,row,d,e,s,l,ia,p,hi:integer; f,h:string;
begin
   l:=0 ;
   repeat
   r:= random (101);
   z:= random (101);
   u:=random (11);
   o:=random (11);
   i:=random(5);
   l:=l+1 ;
    if i=1 then
    begin
     f:='+';
     hi:=(r)+(f)+(z);
     end
      else If i=2 then
       begin
        f:='-';
        hi:=(r)+(f)+(z);
       end
        else if i=3 then
         begin
          f:='*';
          hi:=(u)+(f)+(o);
         end
          else
          begin
           f:='/';
           k:=random (11);
           j:=random (11);
           m:=k*j;
           hi:=(m)+(f)+(k);
            end;
      al[l]:=hi;

   if i=1 then
   g:=r+z
    else if i=2 then
    g:=r-z
     else if i=3 then
     g:=u*o
      else g:=j;
    until l:=15;

   l:=15
   repeat
   l:=l+1
   e:=random(10);
   s:=random(3);
   a:=random(5);
   c:=random (101);
   w:= random (11);
   if a=1 then
   begin
   h:= '+';
   d:= g-c;
   ui:=(d)+h+(c)
   end
    else if a=2 then
    begin
    h:='-';
    v:=g+c;
    ui:=(v)+h+(c)
    end
     else if a=3 then
      begin
      h:='*';
      y:=(g) div (w);
      ui:=(w)+h+(y);
      end
       else
       begin
       h:= '/';
       t:=(g)*(w);
       ui:=(t)+h+(w);
       end;
       al[l]:=ui;
     until l:=30

    for ia:=0 to 9 do
    for p:= 0 to 2 do
    begin
    n[ia,p]:=random(al[30]);
    StrindGrid1.cells[ia,p]:=IntToStr(n[ia,p];
    end;
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

