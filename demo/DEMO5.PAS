uses mcga,crt;
var a:byte;

{$f+}
Procedure Sunet;
begin
  if keypressed then ScrollBreak:=true;
end;
{$f-}

begin
setmcga;
loadfont('..\mcga-img\soft.fnt');
loadvisualpal('..\mcga-img\pallette.pal');
rectangle(47,157,262,179);
setcolor(234);Print(2,6,'Demonstratie la unitul MCGA');
outtextxy(30,100,5,'VMA SOFT 1996');
  SetScrollStyle(0,1,false);
  ScrollProc:=sunet;
  repeat
   SHRText(50,260,160,
   'ACEST PROGRAM ESTE REALIZAT DE MARIAN VETEANU DE LA VMA SOFT 1996 !  '+
   'DACA DORITI SA REALIZATI ASEMENEA EFECTE FOLOSITI UNITUL PASCAL MCGA '+
   'REALIZAT DE VETEANU MARIAN ADRIAN            ');
  until keypressed;
freefont;
fadedown(0,0,0);
settext;
end.
