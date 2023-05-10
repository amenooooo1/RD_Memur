unit UHesNet;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Uni, DBAccess, MemDS,  Buttons,
  ComCtrls, Tabnotbk,Math,dialogs, Mask, ExtCtrls;

type
  TFHesNet = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Sicno: TDBText;
    Adi: TDBText;
    Soyadi: TDBText;
    Dair: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Donem: TDBText;
    Ay: TDBText;
    Yil: TDBText;
    Label70: TLabel;
    Label71: TLabel;
    GeriBt: TBitBtn;
    IlerBt: TBitBtn;
    HesaptBt: TBitBtn;
    Vazgec: TBitBtn;
    Silme: TBitBtn;
    TabbedNotebook1: TTabbedNotebook;
    Label6: TLabel;
    Kazadi2: TDBText;
    Kazadi3: TDBText;
    Kazadi4: TDBText;
    Kazadi8: TDBText;
    Kazadi9: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    DBText45: TDBText;
    DBText46: TDBText;
    Kazadi10: TDBText;
    Kazadi11: TDBText;
    Kazadi12: TDBText;
    DBText50: TDBText;
    DBText51: TDBText;
    DBText53: TDBText;
    DBText54: TDBText;
    DBText55: TDBText;
    DBText56: TDBText;
    DBText57: TDBText;
    DBText58: TDBText;
    DBText59: TDBText;
    DBText60: TDBText;
    DBText61: TDBText;
    DBText62: TDBText;
    Kesad1: TDBText;
    Kesad2: TDBText;
    Kesad3: TDBText;
    Kesad4: TDBText;
    Kesad8: TDBText;
    Kesad9: TDBText;
    SskMat: TDBText;
    Label10: TLabel;
    SskIs: TDBText;
    SskIsv: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    GelirMat: TDBText;
    GelirVer: TDBText;
    Label13: TLabel;
    Kesad10: TDBText;
    Kesad11: TDBText;
    Kesad12: TDBText;
    Label14: TLabel;
    BrutGelir: TDBText;
    DamVer: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    YasalKes: TDBText;
    OzelKes: TDBText;
    Kesad13: TDBText;
    Kesad14: TDBText;
    Label17: TLabel;
    NetKes: TDBText;
    Net: TDBText;
    Label18: TLabel;
    DamMat: TDBText;
    Kesad5: TDBText;
    Kesad6: TDBText;
    Kesad7: TDBText;
    Kesad15: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel2: TPanel;
    Label22: TLabel;
    Kayit: TBitBtn;
    Label23: TLabel;
    Kazadi13: TDBText;
    Kazadi5: TDBText;
    Kazadi6: TDBText;
    Kazadi7: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText41: TDBText;
    DBText42: TDBText;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Animate1: TAnimate;
    Edit1: TEdit;
    Label28: TLabel;
    BitBtn1: TBitBtn;
    procedure GeriBtClick(Sender: TObject);
    procedure IlerBtClick(Sender: TObject);
    procedure HesaptBtClick(Sender: TObject);
    procedure KayitClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
    procedure HES0;
    procedure KDV;
    procedure Gos;
    procedure gost;
    procedure Arama;
    procedure sil;
    procedure sil1;
    procedure SilmeClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure PEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit27Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Edit26Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FHesNet: TFHesNet;
  Fark,yuv,sst,sss,kat,a,r:integer;
  nett,ode:Currency;

implementation

uses UData, USicilAra, UHesapi;

{$R *.DFM}

procedure TFHesNet.sil;
begin
DBEdit1.ReadOnly:=True;
DBEdit27.ReadOnly:=True;
DBEdit2.ReadOnly:=True;
DBEdit4.ReadOnly:=True;
DBEdit7.ReadOnly:=True;
DBEdit8.ReadOnly:=True;
DBEdit3.ReadOnly:=True;
DBEdit5.ReadOnly:=True;
DBEdit6.ReadOnly:=True;
DBEdit9.ReadOnly:=True;
DBEdit10.ReadOnly:=True;
end;

procedure TFHesNet.sil1;
begin
DBEdit1.ReadOnly:=False;
DBEdit27.ReadOnly:=False;
DBEdit2.ReadOnly:=False;
DBEdit4.ReadOnly:=False;
DBEdit7.ReadOnly:=False;
DBEdit8.ReadOnly:=False;
DBEdit3.ReadOnly:=False;
DBEdit5.ReadOnly:=False;
DBEdit6.ReadOnly:=False;
DBEdit9.ReadOnly:=False;
DBEdit10.ReadOnly:=False;
end;


procedure TFHesNet.Arama;
begin
{with DMEMUR do
begin
try
 THESAP.SetKey;
 THESAP.FieldByName('Yil').asString:=
 TDONEM.FieldByName('Yil').asString;
 THESAP.FieldByName('Ay').asString:=
 TDONEM.FieldByName('Ay').asString;
 THESAP.FieldByName('Donem').asString:=
 TDONEM.FieldByName('Donem').asString;
 THESAP.FieldByName('Sicno').asString:=
 TSICIL.FieldByName('SicNo').asString;
 sil1;
 HesaptBt.Enabled:=True;
 Silme.Enabled:=True;
 if not THESAP.GotoKey then
  Begin
   Panel2.Visible:=True;
   HesaptBt.Enabled:=False;
   Silme.Enabled:=False;
  If DMEMUR.TDONEM.FieldByName('Issizhes').asstring='H' Then
   Panel2.Visible:=False else
   Kayit.SetFocus;
  end
 else
  THESAP.GotoKey
 Except
End;
 THESAP1.SetKey;
 THESAP1.FieldByName('No').AsString:=
 THESAP.FieldByName('No').Asstring;
 THESAP1.GotoKey
end;
If DMEMUR.TDONEM.FieldByName('Issizhes').asstring='H' Then
begin
  sil;
  Silme.Enabled:=False;
  HesaptBt.Enabled:=False;
end;}
End;

procedure TFHesNet.GeriBtClick(Sender: TObject);
begin
 Panel2.Visible:=False;
 FData.TSICIL.Prior;
 Arama;
end;

procedure TFHesNet.IlerBtClick(Sender: TObject);
begin
 Panel2.Visible:=False;
 FData.TSICIL.Next;
 Arama;
end;


procedure TFHesNet.HES0;
Begin
with FData do
begin
THESAP.Edit;
IF TSICIL.FieldByName('Ask').asstring = 'H' then THESAP.FieldByName('Pkaz7').value:=0
else
THESAP.FieldByName('Pkaz7').value:=TKATSAY.FieldByName('TabKay').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz7').value:=(THESAP.FieldByName('Pkaz7').value/3)*1;
  2 : THESAP.FieldByName('Pkaz7').value:=(THESAP.FieldByName('Pkaz7').value/3)*2;
End;
THESAP.FieldByName('Pkaz8').value:=
(TSICIL.FieldByName('Kid').value*20)*TKATSAY.FieldByName('Katsayi').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz8').value:=(THESAP.FieldByName('Pkaz8').value/3)*1;
  2 : THESAP.FieldByName('Pkaz8').value:=(THESAP.FieldByName('Pkaz8').value/3)*2;
End;
THESAP.FieldByName('Pkaz9').value:=
(TKATSAY.FieldByName('Katsayi').value*TKATSAY.FieldByName('Mik').value)*
TSICIL.FieldByName('Ozhiz').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz9').value:=(THESAP.FieldByName('Pkaz9').value/3)*1;
  2 : THESAP.FieldByName('Pkaz9').value:=(THESAP.FieldByName('Pkaz9').value/3)*2;
End;

THESAP.FieldByName('Pkaz10').value:=0;
If TSICIL.FieldByName('Aile').asstring = 'E' then
begin
THESAP.FieldByName('Pkaz10').value:=
TKATSAY.fieldbyname('Katsayi').Value*TKATSAY.fieldbyname('Aile').Value;
End;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz10').value:=(THESAP.FieldByName('Pkaz10').value/3)*1;
  2 : THESAP.FieldByName('Pkaz10').value:=(THESAP.FieldByName('Pkaz10').value/3)*2;
End;
THESAP.FieldByName('Pkaz11').value:=TSICIL.fieldbyname('Cosay').value*
(TKATSAY.fieldbyname('Katsayi').Value*TKATSAY.fieldbyname('Cocuk').Value);
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz11').value:=(THESAP.FieldByName('Pkaz11').value/3)*1;
  2 : THESAP.FieldByName('Pkaz11').value:=(THESAP.FieldByName('Pkaz11').value/3)*2;
End;
THESAP.FieldByName('Pkaz12').value:=TSICIL.FieldByName('Mals').value*
TKATSAY.FieldByName('YanKat').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz12').value:=(THESAP.FieldByName('Pkaz12').value/3)*1;
  2 : THESAP.FieldByName('Pkaz12').value:=(THESAP.FieldByName('Pkaz12').value/3)*2;
End;
THESAP.FieldByName('Pkaz13').value:=
TSICIL.FieldByName('YanPu').value*TKATSAY.FieldByName('YanKat').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz13').value:=(THESAP.FieldByName('Pkaz13').value/3)*1;
  2 : THESAP.FieldByName('Pkaz13').value:=(THESAP.FieldByName('Pkaz13').value/3)*2;
End;
THESAP.FieldByName('Pkaz14').value:=
TSICIL.FieldByName('Isri').value* TKATSAY.FieldByName('YanKat').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz14').value:=(THESAP.FieldByName('Pkaz14').value/3)*1;
  2 : THESAP.FieldByName('Pkaz14').value:=(THESAP.FieldByName('Pkaz14').value/3)*2;
End;
THESAP.FieldByName('Pkaz15').value:=
TSICIL.FieldByName('Temg').value*TKATSAY.FieldByName('YanKat').value;
Case TSICIL.FieldByName('Vekor').value of
  1 : THESAP.FieldByName('Pkaz15').value:=(THESAP.FieldByName('Pkaz15').value/3)*1;
  2 : THESAP.FieldByName('Pkaz15').value:=(THESAP.FieldByName('Pkaz15').value/3)*2;
End;
THESAP.FieldByName('Pkaz16').value:=TSICIL.fieldbyname('Kiray').Value;
THESAP.FieldByName('Pkaz18').value:=TSICIL.fieldbyname('Yakacaky').Value;
THESAP.FieldByName('Pkaz19').value:=TSICIL.fieldbyname('Suty').Value;
THESAP.FieldByName('Pkaz20').value:=TSICIL.fieldbyname('Egity').Value;
THESAP.FieldByName('Pkaz21').value:=TSICIL.fieldbyname('Temizy').Value;
THESAP.FieldByName('Pkaz22').value:=ode;
If TSICIL.fieldbyname('Rap').Value-7 <6 then
  R:=TSICIL.fieldbyname('Rap').Value-7
 Else
  R:=THESAP.FieldByName('Kaz11').value;
If (THESAP.FieldByName('Kaz11').value <> 0) and
  TSICIL.fieldbyname('Rap').Value>6 Then
Begin
  THESAP.FieldByName('Pkaz9').value:=(THESAP.FieldByName('Pkaz9').value-
  (THESAP.FieldByName('Pkaz9').value/120)*R);
  THESAP.FieldByName('Pkaz13').value:=(THESAP.FieldByName('Pkaz13').value-
  (THESAP.FieldByName('Pkaz13').value/120)*R);
  THESAP.FieldByName('Pkaz14').value:=(THESAP.FieldByName('Pkaz14').value-
  (THESAP.FieldByName('Pkaz14').value/120)*R);
  THESAP.FieldByName('Pkaz15').value:=(THESAP.FieldByName('Pkaz15').value-
  (THESAP.FieldByName('Pkaz15').value/120)*R);
  THESAP.FieldByName('Pkaz16').value:=(THESAP.FieldByName('Pkaz16').value-
  (THESAP.FieldByName('Pkaz16').value/120)*R);
end;
THESAP.FieldByName('Pkaz17').value:=0;
If (TSICIL.FieldByName('Ttar').AsDateTime >=TDONEM.FieldByName('Ilktar').AsDateTime) and
   (TSICIL.FieldByName('Ttar').AsDateTime <=TDONEM.FieldByName('Sontar').AsDateTime) Then
Begin
// TGOS1.SetKey;
 TGOS1.FieldByName('Der').asstring:=
 TSICIL.FieldByName('Tder').value;
// TGOS1.GotoKey;
 kat:=TSICIL.FieldByName('Tkad').value;
 Gos;
 Fark:=kat;
// TGOS1.SetKey;
 TGOS1.FieldByName('Der').asstring:=
 TSICIL.FieldByName('Mder').value;
// TGOS1.GotoKey;
 kat:=TSICIL.FieldByName('Mkad').value;
 Gos;
   Fark:=(Fark-kat)+20+(TSICIL.FieldByName('TekGos').value-
  TSICIL.FieldByName('MekGos').value);
  THESAP.FieldByName('Pkaz17').value:=Fark*TKATSAY.FieldByName('Katsayi').value;
  THESAPPkaz17.Value:= RoundTo(THESAPPkaz17.Value,-2);
  THESAPPkaz27.value:=THESAPPkaz17.Value*2;
End;

THESAP.FieldByName('Adi').asstring:=FData.TSICIL.fieldbyname('Adi').asstring;
THESAP.FieldByName('Soyadi').asstring:=FData.TSICIL.fieldbyname('Soyadi').asstring;
THESAP.FieldByName('Unvan').asstring:=FData.TSICIL.fieldbyname('Unvan').asstring;
FData.THESAP.FieldByName('Dair').asstring:=FData.TSICIL.fieldbyname('Dair').asstring;
FData.THESAP.FieldByName('SskNo').asstring:=FData.TSICIL.fieldbyname('EmNo').asstring;
THESAP.Post;
end;
End;

procedure TFHesNet.gost;
begin
//FData.TGOS1.SetKey;
FData.TGOS1.FieldByName('Der').asstring:=
FData.THESAP.FieldByName('Kaz1').asstring;
//FData.TGOS1.GotoKey;
kat:=FData.THESAP.FieldByName('Kaz2').value;
Gos;
kat:=FData.TKATSAY.fieldbyname('Katsayi').Value*kat;
end;

procedure TFHesNet.HesaptBtClick(Sender: TObject);
Var ss,yy,de:string;
J:integer;
begin
Animate1.Visible :=True;
Animate1.Active :=Animate1.Visible;
with FData.THESAP do
begin
ode:=StrToCurr(Edit1.text);
nett:=fieldbyname('Net').Value;
If FData.TSICIL.fieldbyname('Dirp').Value=0 then
nett:=1;
while nett<>StrToCurr(Edit1.text) do
begin
a:=0;
FHesap.SSkHES0;
FHesap.GELHES0;
HES0;
edit;
ode:=ode-((nett-StrToCurr(Edit1.text))/2);
FData.THESAP.Edit;
FieldByName('SskMat').Value:=0;
FieldByName('IszSigMat').Value:=0;
FieldByName('GelirMat').Value:=0;
FieldByName('DamMat').Value:=0;
FieldByName('BrutGelir').Value:=0;
FieldByName('OzelKes').Value:=0;
FData.THESAP.FieldByName('Pkaz22').value:=ode;
For  j:=1 to 25 do
Begin
 yy:='Pkaz'+ IntToStr(j);
 ss:='G'+ IntToStr(j);
 de:=FData.TKAZANC.FieldByName(ss).asstring;
 FData.THESAP.FieldByName(yy).Value:=
 RoundTo(FData.THESAP.FieldByName(yy).Value,-2);
 FieldByName('BrutGelir').Value:=FieldByName('BrutGelir').Value+FData.THESAP.FieldByName(yy).Value;
 if de = 'E' then
  FieldByName('GelirMat').Value:=FieldByName('GelirMat').Value+FData.THESAP.FieldByName(yy).Value;
 ss:='D'+ IntToStr(j);
 de:=FData.TKAZANC.FieldByName(ss).asstring;
 if de = 'E' then
  FieldByName('DamMat').Value:=FieldByName('DamMat').Value+FData.THESAP.FieldByName(yy).Value;
  ss:='I'+ IntToStr(j);
  de:=FData.TKAZANC.FieldByName(ss).asstring;
 if de = 'E' then
  FieldByName('IszSigMat').Value:=FieldByName('IszSigMat').Value+FData.THESAP.FieldByName(yy).Value;
  ss:='S'+IntToStr(j);
  de:=FData.TKAZANC.FieldByName(ss).asstring;
 if de = 'E' then
  FieldByName('SskMat').Value:=FieldByName('SskMat').Value+FData.THESAP.FieldByName(yy).Value;
end;
FieldByName('SskMat').Value:=FieldByName('SskMat').Value+((FData.TKATSAY.FieldByName('Katsayi').value*
FData.TKATSAY.FieldByName('Mik').value)*(FData.TSICIL.FieldByName('Kat').value/100));
FData.TGOS1.FieldByName('Der').asstring:=
FData.THESAP.FieldByName('Kaz1').value;
kat:=FData.THESAP.FieldByName('Kaz2').value;
Gos;
FieldByName('SskMat').Value:=FieldByName('SskMat').Value-FData.THESAP.FieldByName('Pkaz1').Value;
FieldByName('SskMat').Value:=FieldByName('SskMat').Value-
FData.THESAP.FieldByName('Pkaz2').value;
FieldByName('SskMat').Value:=FieldByName('SskMat').Value+(((kat+FData.THESAP.FieldByName('Kaz3').value)*
FData.TKATSAY.fieldbyname('Katsayi').Value)*1);
FieldByName('Dair').asstring:=FData.TSICIL.FieldByName('Dair').asstring;
post;
FData.THESAP.post;
FHesap.DamIsz;
FHesap.SSkHES;
FHesap.GELHES;
FHesap.YASKE;
nett:=FData.THESAP.FieldByName('Net').Value;
If FData.TSICIL.fieldbyname('Dirp').Value=0 then
nett:=0;
end;
FData.TSICIL.Edit;
FData.TSICIL.fieldbyname('Dirp').Value:=FData.THESAP.FieldByName('Pkaz22').value;
FData.TSICIL.Post;
end;
Animate1.Visible :=False;
Animate1.Active :=Animate1.Visible;

end;

procedure TFHesNet.KDV;
Var i:Currency;
Begin
{with FData do
begin
tkdv.Edit;
THESAP1.Edit;
i:=TKDV.FieldByName('A2').Value+TKDV.FieldByName('A3').Value+
TKDV.FieldByName('A4').Value+TKDV.FieldByName('A5').Value+
TKDV.FieldByName('A6').Value+TKDV.FieldByName('A7').Value+
TKDV.FieldByName('A8').Value+TKDV.FieldByName('A9').Value+
TKDV.FieldByName('A10').Value+TKDV.FieldByName('A11').Value+
TKDV.FieldByName('A12').Value;
If TKDV.FieldByName('s9').Value>=i then
Begin
  Case  TDONEM.FieldByName('Ay').value of
   2: begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A2').Value:=TKDV.FieldByName('A2').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   3 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A3').Value:=TKDV.FieldByName('A3').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   4 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A4').Value:=TKDV.FieldByName('A4').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   5 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A5').Value:=TKDV.FieldByName('A5').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   6 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A6').Value:=TKDV.FieldByName('A6').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   7 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A7').Value:=TKDV.FieldByName('A7').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   8 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A8').Value:=TKDV.FieldByName('A8').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
  9 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A9').Value:=TKDV.FieldByName('A9').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   10 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A10').Value:=TKDV.FieldByName('A10').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   11 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=THESAP.FieldByName('GelirVer').Value
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A11').Value:=TKDV.FieldByName('A11').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
   12 :  begin
     If (TKDV.FieldByName('s9').Value-i)>THESAP.FieldByName('GelirVer').Value then
     Begin
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i
    End
    Else
      THESAP1.FieldByName('Pkaz23').Value:=TKDV.FieldByName('s9').Value-i;
    TKDV.FieldByName('A12').Value:=TKDV.FieldByName('A12').Value+
    THESAP1.FieldByName('Pkaz23').Value;
   End;
End;
TKDV.Post;
THESAP1.Post;
THESAP.Edit;
THESAP.FieldByName('BrutGelir').Value:=THESAP.FieldByName('BrutGelir').Value+
THESAP1.FieldByName('Pkaz23').Value;
THESAP.FieldByName('DamMat').Value:=THESAP.FieldByName('DamMat').Value+
THESAP1.FieldByName('Pkaz23').Value;
THESAP.FieldByName('YasalKes').value:=THESAP.FieldByName('YasalKes').value-
THESAP.FieldByName('DamVer').value;
THESAP.FieldByName('DamVer').value:=THESAP.FieldByName('DamMat').value*
FData.TKATSAY.FieldByName('Damor').value;
THESAP.FieldByName('DamVer').Value:=
yuvar(THESAP.FieldByName('DamVer').Value,FData.TKATSAY.FieldByName('Yuv').value);
THESAP.FieldByName('YasalKes').value:=THESAP.FieldByName('YasalKes').value+
THESAP.FieldByName('DamVer').value;
FData.THESAP.FieldByName('NetKes').value:=THESAP.FieldByName('YasalKes').value+
THESAP.FieldByName('OzelKes').value;
FData.THESAP.FieldByName('Net').value:= THESAP.FieldByName('BrutGelir').value-
THESAP.FieldByName('NetKes').value;
THESAP.Post;
End;
End; }
End;

Function Gelir(t,m,m1,o1,o2:real):real;export;
var ss,st:real;
begin
IF (t+m)<m1 Then
begin
Gelir:=m*o1
end
Else
begin
ss:=(t+m)-m1;
st:=m-ss;
Gelir:=(ss*o2)+(st*o1);
end;
end;


procedure TFHesNet.KayitClick(Sender: TObject);
begin
with FData do
begin
If (TSICIL.FieldByName('Ciktar').value>TDONEM.FieldByName('Ilktar').value) Or
(TSICIL.FieldByName('Ciktar').asstring='') then Begin
 UniSistem.Edit;
 UniSistem.FieldByName('No').value:=UniSistem.FieldByName('No').value+ 1;
 UniSistem.post;
 THESAP.Append;
 THESAP.FieldByName('SicNo').AsString:=TSICIL.FieldByName('Sicno').AsString;
 THESAP.FieldByName('No').AsString:=IntToStr(UniSistem.FieldByName('No').value);
 THESAP.FieldByName('Yil').AsString:=TDONEM.FieldByName('Yil').AsString;
 THESAP.FieldByName('Ay').AsString:=TDONEM.FieldByName('Ay').AsString;
 THESAP.FieldByName('Donem').AsString:=TDONEM.FieldByName('Donem').AsString;
 THESAP.FieldByName('Dair').AsString:=TSICIL.FieldByName('Dair').AsString;
 THESAP.FieldByName('No').AsString:=THESAP.FieldByName('No').AsString;
 THESAP.FieldByName('Adi').AsString:=TSICIL.FieldByName('Adi').AsString;
 THESAP.FieldByName('Soyadi').AsString:=TSICIL.FieldByName('Soyadi').AsString;
 THESAP.post;
 Panel2.Visible:=False;
 HesaptBt.Enabled:=True;
 Silme.Enabled:=True;
 TabbedNotebook1.ActivePage:='Safya 1';
 TabbedNotebook1.Enabled:=True;
 DBEdit1.SetFocus; end
else begin
      ShowMessage( 'Bu Ki�inin ��k��� Verilmi�tir.' );
      Arama;
end;
end;
End;

procedure TFHesNet.VazgecClick(Sender: TObject);
begin
Close;
end;

procedure TFHesNet.Gos;
begin
  Case kat of
   1 : kat:=FData.TGOS1.FieldByName('K1').value;
   2 : kat:=FData.TGOS1.FieldByName('K2').value;
   3 : kat:=FData.TGOS1.FieldByName('K3').value;
   4 : kat:=FData.TGOS1.FieldByName('K4').value;
   5 : kat:=FData.TGOS1.FieldByName('K5').value;
   6 : kat:=FData.TGOS1.FieldByName('K6').value;
   7 : kat:=FData.TGOS1.FieldByName('K7').value;
   8 : kat:=FData.TGOS1.FieldByName('K8').value;
   9 : kat:=FData.TGOS1.FieldByName('K9').value;
 end;

End;

procedure TFHesNet.SilmeClick(Sender: TObject);
begin
if messagebox (handle,'Bu Kayd� Silmek �stiyor musunuz?', 'D�KKAT',mb_YesNo +
mb_iconquestion) <> mrNo then
Begin
FHesap.SSkHES0;
FHesap.GELHES0;
FData.THESAP.Delete;
Panel2.Visible:=False;
FData.TSICIL.Prior;
Arama
end;
End;

procedure TFHesNet.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFHesNet.DBEdit3Exit(Sender: TObject);
begin
FData.THESAP.Edit;
FData.THESAP.FieldByName('Pkaz3').value:=FData.TSICIL.fieldbyname('Otm').Value*
FData.THESAP.FieldByName('Kaz4').value;
FData.THESAP.Post;
end;

procedure TFHesNet.PEdit25KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFHesNet.DBEdit1Enter(Sender: TObject);
begin
FData.THESAP.edit;
DBEdit1.Field.value:=
FData.TSICIL.FieldByName('Der').value;
FData.THESAP.Post;
end;

procedure TFHesNet.DBEdit27Enter(Sender: TObject);
begin
FData.THESAP.edit;
DBEdit27.Field.value:=FData.TSICIL.FieldByName('Kad').value;
FData.THESAP.Post;
end;

procedure TFHesNet.DBEdit2Enter(Sender: TObject);
begin
FData.THESAP.edit;
DBEdit2.Field.value:=
FData.TSICIL.FieldByName('EkGos').value;
FData.THESAP.Post;

end;

procedure TFHesNet.DBEdit6Exit(Sender: TObject);
begin
FData.THESAP.Edit;
FData.THESAP.FieldByName('Pkaz5').value:=0;
IF FData.THESAP.FieldByName('Kaz6').value > 0 THEN
BEGIN
FData.THESAP.FieldByName('Pkaz5').Value:=
FData.THESAP.FieldByName('Kaz6').value*
FData.TSICIL.fieldbyname('Yemeky').Value;
end;
FData.THESAP.Post;
END;

procedure TFHesNet.DBEdit4Enter(Sender: TObject);
begin
with FData do
begin
THESAP.edit;
If (TSICIL.FieldByName('Ttar').AsDateTime>=TDONEM.FieldByName('Ilktar').AsDateTime) and
   (TSICIL.FieldByName('Ttar').AsDateTime<=TDONEM.FieldByName('Sontar').AsDateTime) Then
    THESAP.FieldByName('Kaz7').value:=TSICIL.FieldByName('Tder').value
 Else
THESAP.FieldByName('Kaz7').value:=TSICIL.FieldByName('Mder').value;
THESAP.Post;
end;
End;

procedure TFHesNet.DBEdit7Enter(Sender: TObject);
begin
with FData do
begin
THESAP.edit;
If (TSICIL.FieldByName('Ttar').AsDateTime >=TDONEM.FieldByName('Ilktar').AsDateTime) and
   (TSICIL.FieldByName('Ttar').AsDateTime <=TDONEM.FieldByName('Sontar').AsDateTime) Then
    THESAP.FieldByName('Kaz8').value:=TSICIL.FieldByName('Tkad').value
 Else
   THESAP.FieldByName('Kaz8').value:=TSICIL.FieldByName('Mkad').value;
THESAP.Post;
end;
End;

procedure TFHesNet.DBEdit8Enter(Sender: TObject);
begin
with FData do
begin
THESAP.edit;
If (TSICIL.FieldByName('Ttar').AsDateTime >=TDONEM.FieldByName('Ilktar').AsDateTime) and
   (TSICIL.FieldByName('Ttar').AsDateTime <=TDONEM.FieldByName('Sontar').AsDateTime) Then
   THESAP.FieldByName('Kaz9').value:=TSICIL.FieldByName('TekGos').value
  Else
    THESAP.FieldByName('Kaz9').value:=TSICIL.FieldByName('MekGos').value;
THESAP.Post;
end;
End;

procedure TFHesNet.DBEdit8Exit(Sender: TObject);
begin
with FData do
begin
THESAP.Edit;
THESAP.FieldByName('Pkaz2').value:=THESAP.FieldByName('Kaz9').value*
TKATSAY.FieldByName('Katsayi').value;
end;
end;

procedure TFHesNet.DBEdit5Exit(Sender: TObject);
begin
FData.THESAP.Edit;
FData.THESAP.FieldByName('Pkaz4').value:=FData.TSICIL.fieldbyname('Keft').Value*
FData.THESAP.FieldByName('Kaz5').value;
FData.THESAP.Post;
end;

procedure TFHesNet.Edit26Enter(Sender: TObject);
begin
with FData do
begin
THESAP.Edit;
TSICIL.Edit;
TSICIL.FieldByName('Keft').value:=TSICIL.FieldByName('Keft').value-
THESAP.FieldByName('Pkaz26').value;
If TSICIL.FieldByName('Kef').asstring = 'E' then
begin
 THESAP.FieldByName('Pkaz26').value:=TKATSAY.Fieldbyname('Kef2').Value*
 THESAP.FieldByName('PKaz1').value;
End;
 THESAPPkaz26.Value:=RoundTo(THESAPPkaz26.Value,-2);
TSICIL.Post;
THESAP.Post;
end;
End;

procedure TFHesNet.DBEdit7Exit(Sender: TObject);
begin
with FData do
begin
//TGOS1.SetKey;
TGOS1.FieldByName('Der').asstring:=
THESAP.FieldByName('Kaz7').value;
//TGOS1.GotoKey;
kat:=THESAP.FieldByName('Kaz8').value;
Gos;
THESAP.Edit;
THESAP.FieldByName('Pkaz1').value:=TKATSAY.fieldbyname('Katsayi').Value*kat;
  Case TSICIL.FieldByName('Vekor').value of
   1 : THESAP.FieldByName('Pkaz1').value:=(THESAP.FieldByName('Pkaz1').value/3)*1;
   2 : THESAP.FieldByName('Pkaz1').value:=(THESAP.FieldByName('Pkaz1').value/3)*2;
  End;
fark:=kat;
THESAP.Post;
End;
end;

procedure TFHesNet.DBEdit9Exit(Sender: TObject);
begin
with FData do
begin
THESAP.Edit;
THESAP.FieldByName('Pkaz6').value:=0;
If THESAP.FieldByName('Kaz10').value > 0 then
Begin
{TGOS1.SetKey;
TGOS1.FieldByName('Der').asstring:=
TSICIL.FieldByName('Vder').asstring;
if TGOS1.GotoKey then
 Begin
  TGOS1.GotoKey;
  kat:=TSICIL.FieldByName('Vkad').value;
  Gos;
  THESAP1.FieldByName('Pkaz6').value:=((TKATSAY.fieldbyname('Katsayi').Value*
  (kat+TSICIL.FieldByName('VekGos').value))/90)*THESAP1.FieldByName('Kaz10').value;
  end;
end;}
end;
THESAP.post;
end;
end;

procedure TFHesNet.DBEdit10Enter(Sender: TObject);
begin
FData.THESAP.edit;
FData.TSICIL.edit;
FData.TSICIL.FieldByName('Rap').value:=
FData.TSICIL.FieldByName('Rap').value-FData.THESAP.FieldByName('Kaz11').value;
FData.TSICIL.post;
FData.THESAP.Post;
end;

procedure TFHesNet.DBEdit10Exit(Sender: TObject);
begin
with FData do
begin
THESAP.edit;
TSICIL.edit;
TSICIL.FieldByName('Rap').value:=
TSICIL.FieldByName('Rap').value+THESAP.FieldByName('Kaz11').value;
TSICIL.post;
THESAP.Post;
end;
End;


procedure TFHesNet.FormPaint(Sender: TObject);
begin
 Arama;
end;



procedure TFHesNet.BitBtn1Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFSicilAra.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
 Arama;

end;

end.
