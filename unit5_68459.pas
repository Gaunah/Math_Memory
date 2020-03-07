unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
 Var r,z,i,e,g,s1,s2,l,u,o,k,j,m,c,d,v,w,y,t,a,b:integer; f,h:string;
begin
  //s1:=0;
  //s2:=0;
  //l:=15;
  //While l>30 do
  //begin
  // While s1<l do
  // begin
   r:= random (101);
   z:= random (101);
   u:=random (11);
   o:=random (11);
   i:=random(5);
   If i=1 then
    begin
     f:='+';
     Edit1.text:=IntToStr(r)+f+IntToStr(z);
     end
      else If i=2 then
       begin
        f:='-';
        Edit1.text:=IntToStr(r)+f+IntToStr(z);
       end
        else if i=3 then
         begin
          f:='*';
          edit1.text:=IntToStr(u)+f+IntToStr(o);
         end
          else
          begin
           f:='/';
           k:=random (11);
           j:=random (11);
           m:=k*j;
           edit1.text:=IntToStr(m)+f+IntToStr(k);
            end;

   if i=1 then
   g:=r+z
    else if i=2 then
    g:=r-z
     else if i=3 then
     g:=u*o
      else g:=j;

   a:=random(5);
   c:=random (101);
   w:= random (11);
   if a=1 then
   begin
   h:= '+';
   d:= g-c;
   Edit4.Text:=IntToStr(d)+h+IntToStr(c)
   end
    else if a=2 then
    begin
    h:='-';
    v:=g+c;
    Edit4.Text:=IntToStr(v)+h+IntToStr(c)
    end
     else if a=3 then
      begin
      h:='*';
      y:=(g) div (w);
      Edit4.Text:=IntToStr(w)+h+IntToStr(y);
      end
       else
       begin
       h:= '/';
       t:=(g)*(w);
       Edit4.Text:=IntToStr(t)+h+IntToStr(w);
       end;

    b:=g;


   //If b=g then
   //begin
   //Edit3.Text:=('Richtiges Paar');
     // s1:=s1+1;
    //  end
     // else
     // Edit3.Text:= ('Falsches Paar');
   //end;
   //If s1>s2
   //then
   //begin
   //Edit3.Text:=('Spieler 1 hat gewonnen');
   //l:=l+5 ;
   //end
    //else
    //begin
    //Edit3.Text:= ('Spieler 2 hat gewonnen');
    //l:=l+5;
    //end;
   //end;
   //Edit3.Text:= ('Spiel beendet');
end;
end.
