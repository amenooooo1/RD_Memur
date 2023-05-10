unit Paracevir;
interface
Uses SysUtils, StdCtrls;
function yazdir(sayi1:string):string;
implementation

uses Math;
function yazdir(sayi1:string):string;
type
    dizi=array[0..9] of string;
var
   Ara1: dizi;
   Ara2:dizi;
   Ara3:dizi;
   tasi:array[0..15] of Integer;
   tasitx:array[1..15] of string;
   i,n,k: Integer;
   yazi,yazi1: String;
   Ara4:string[15];
   para,para1,para2:Currency;
   devam:boolean;
begin
   Ara1[0]:= '';
   Ara1[1]:='';
   Ara1[2]:='Ýki';
   Ara1[3]:='Üç';
   Ara1[4]:='Dört';
   Ara1[5]:='Beþ';
   Ara1[6]:='Altý';
   Ara1[7]:='Yedi';
   Ara1[8]:='Sekiz';
   Ara1[9]:='Dokuz';

   Ara2[0]:='';
   Ara2[1]:='Bir';
   Ara2[2]:='Ýki';
   Ara2[3]:='Üç';
   Ara2[4]:='Dört';
   Ara2[5]:='Beþ';
   Ara2[6]:='Altý';
   Ara2[7]:='Yedi';
   Ara2[8]:='Sekiz';
   Ara2[9]:='Dokuz';

   Ara3[0]:='';
   Ara3[1]:='On';
   Ara3[2]:='Yirmi';
   Ara3[3]:='Otuz';
   Ara3[4]:='Kýrk';
   Ara3[5]:='Elli';
   Ara3[6]:='Altmýþ';
   Ara3[7]:='Yetmiþ';
   Ara3[8]:='Seksen';
   Ara3[9]:='Doksan';
   devam:=True;para:=0;
   try
      para:=StrToCurr(Sayi1);
   except
      On EConvertError do
        begin
         devam:=false;
         yazdir:='Sayi deðil';
        end;
   end;
If devam then
begin
  para:=(Round(para/0.01))*0.01;
  para2:=para;
  para:=Floor(para2);
  para1:=(frac(para2))*100;
 IF para > 0 Then
 BEGIN
   If para < 0 Then para:=para*-1;
   Ara4:=CurrToStr(para);
   n:=Length(Ara4);
   yazi:='';
   for i:=0 to 15  do begin
       Tasi[i]:=0;
       end;
   for i:=1 to n  do begin
       Tasi[i]:=StrToInt(copy(Ara4,i,1));
       tasitx[i]:='';
       end;
   k:=1;
   if n = 15 then  begin tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1; end;
   if n >= 14 then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n >= 13 then begin tasitx[k]:=Ara2[tasi[k]]+'Trilyon';k:=k+1;end;
   if n >= 12 then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 11 then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 10 then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyar' else tasitx[k]:='';k:=k+1;end;
   if n = 10 then begin if  (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyar' else tasitx[k]:='';k:=k+1;end;

   if n >= 9  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 8  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 7  then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyon' else tasitx[k]:='';k:=k+1;end;
   if n = 7  then begin if (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyon' else tasitx[k]:='';k:=k+1;end;

   if n >= 6  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 5  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 4   then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Bin' else tasitx[k]:='';k:=k+1;end;
   if n = 4   then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Bin';k:=k+1;end;
   if n >= 3  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 2  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n >= 1  then begin if tasi[k]>0 then tasitx[k]:=Ara2[tasi[k]];k:=k+1;end;

   For i:=1 to n do
    begin
       yazi:=yazi+tasitx[i];
    end;
   yazi:=yazi+' TL ';
   END;
    para:=para1;
 IF para > 0 Then
 BEGIN
   If para < 0 Then para:=para*-1;
   Ara4:=CurrToStr(para);
   n:=Length(Ara4);
   for i:=0 to 15  do begin
       Tasi[i]:=0;
       end;
   for i:=1 to n  do begin
       Tasi[i]:=StrToInt(copy(Ara4,i,1));
       tasitx[i]:='';
       end;
   k:=1;
   if n = 15 then  begin tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1; end;
   if n >= 14 then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n >= 13 then begin tasitx[k]:=Ara2[tasi[k]]+'Trilyon';k:=k+1;end;
   if n >= 12 then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 11 then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 10 then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyar' else tasitx[k]:='';k:=k+1;end;
   if n = 10 then begin if  (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyar' else tasitx[k]:='';k:=k+1;end;

   if n >= 9  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 8  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 7  then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyon' else tasitx[k]:='';k:=k+1;end;
   if n = 7  then begin if (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Milyon' else tasitx[k]:='';k:=k+1;end;

   if n >= 6  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 5  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n > 4   then begin if (tasi[k-2]>0) or (tasi[k-1]>0) or (tasi[k]>0) then
                   tasitx[k]:=Ara2[tasi[k]]+'Bin' else tasitx[k]:='';k:=k+1;end;
   if n = 4   then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Bin';k:=k+1;end;
   if n >= 3  then begin if tasi[k]>0 then tasitx[k]:=Ara1[tasi[k]]+'Yüz';k:=k+1;end;
   if n >= 2  then begin if tasi[k]>0 then tasitx[k]:=Ara3[tasi[k]];k:=k+1;end;
   if n >= 1  then begin if tasi[k]>0 then tasitx[k]:=Ara2[tasi[k]];k:=k+1;end;

   For i:=1 to n do
    begin
       yazi1:=yazi1+tasitx[i];
    end;
   yazi:=yazi+yazi1+' Kr';
  end;
  END;
   yazdir:=yazi;
 end;

end.
