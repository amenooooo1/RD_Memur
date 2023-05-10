unit UHesapi;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Uni, DBAccess, MemDS, Mask, ExtCtrls,
  Buttons,  ComCtrls, Tabnotbk, Math, dialogs, ADODB, Grids, DBGrids;

type
  TFHesap = class(TForm)
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
    Silme: TBitBtn;
    BitBtn1: TBitBtn;
    Toplu: TBitBtn;
    Vazgec: TBitBtn;
    Panel4: TPanel;
    Label6: TLabel;
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
    Kazadi10: TDBText;
    Kazadi11: TDBText;
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
    Label23: TLabel;
    Kazadi13: TDBText;
    Kazadi5: TDBText;
    Kazadi6: TDBText;
    Kazadi7: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
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
    Label26: TLabel;
    Label27: TLabel;
    Label8: TLabel;
    Label9: TLabel;
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
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText41: TDBText;
    Kesad15: TDBText;
    DBText42: TDBText;
    DBText8: TDBText;
    DBText26: TDBText;
    Label28: TLabel;
    DBText43: TDBText;
    DBEdit1: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Animate1: TAnimate;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBText44: TDBText;
    DBText46: TDBText;
    Label7: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBText47: TDBText;
    Label29: TLabel;
    DBText48: TDBText;
    Label30: TLabel;
    DBText49: TDBText;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Label22: TLabel;
    Kayit: TBitBtn;
    Kesad16: TDBText;
    DBText63: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    DBText52: TDBText;
    Label31: TLabel;
    DBText64: TDBText;
    Label32: TLabel;
    DBText65: TDBText;
    Label33: TLabel;
    procedure GeriBtClick(Sender: TObject);
    procedure IlerBtClick(Sender: TObject);
    procedure HesaptBtClick(Sender: TObject);
    procedure KayitClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
    procedure DamIsz;
    procedure SSkHES;
    procedure HES0;
    procedure HES1;
    procedure SSkHES0;
    procedure Sendik;
    procedure GELHES0;
    procedure GELHES;
    procedure GELHES1;
    procedure YASKE;
    procedure Gos;
    procedure gost;
    procedure Arama;
    procedure kayit1;
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
    procedure Edit26Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure TopluClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ailecocuk;
  private
    { private declarations }
    procedure BesKesinti(Oran: Currency);
    procedure MaasSil(Sicil: Integer; Yil, Ay, Donem: string);
    procedure IcraKesinti(NetMaas: Currency; IcraOran: Integer);
    procedure VergiMuaf;
    function NakdiKumanya(Sicil:Integer; Ay, Donem: String): Currency;
    function NakdiSgk(Sicil:Integer; Ay: String): Currency;
  public
    { public declarations }
  end;

var
  FHesap: TFHesap;
  iz, Fark, yuv, sst, sss, kat, a, r, sg, sa, sy, kidd: integer;
  etar, mtar, ktar, Emtar, MaTar: String;
  gosfark, gosfark1, icrakal, icra, MaasOran, SSKMatrah, pekFark, pekFark20, pekFark12_5: Currency;

implementation

uses UData, UTopHesap, USicilAra, USicil;

{$R *.DFM}

procedure TFHesap.IcraKesinti(NetMaas: Currency; IcraOran: Integer);
var
  IcraTutar: Currency;
begin
  with FData do
  begin
    if IcraOran > 0 then
      IcraTutar := RoundTo(NetMaas / IcraOran, -2)
    else
      IcraTutar :=  FData.TSICILIcra.AsCurrency;
    if IcraTutar > FData.TSICILIcrakal.AsCurrency then
      IcraTutar := FData.TSICILIcrakal.AsCurrency;
    if IcraTutar < 0 then
      IcraTutar := 0;
    if IcraTutar > 0 then
    begin
      THESAP.Edit;
      THESAPPkaz29.AsCurrency := IcraTutar;
      THESAPOzelKes.AsCurrency := THESAPOzelKes.AsCurrency + IcraTutar;
      THESAPNetKes.AsCurrency := THESAPNetKes.AsCurrency + IcraTutar;
      THESAPNet.AsCurrency :=  THESAPNet.AsCurrency - IcraTutar;
      THESAP.Post;
    end;
    TSICIL.Edit;
    TSICILIcrakal.AsCurrency := TSICILIcrakal.AsCurrency - IcraTutar;
    TSICIL.Post;
  end;
end;

procedure TFHesap.sil;
begin
  DBEdit1.ReadOnly := True;
  DBEdit2.ReadOnly := True;
  DBEdit4.ReadOnly := True;
  DBEdit7.ReadOnly := True;
  DBEdit8.ReadOnly := True;
  DBEdit3.ReadOnly := True;
  DBEdit5.ReadOnly := True;
  DBEdit6.ReadOnly := True;
  DBEdit9.ReadOnly := True;
  DBEdit10.ReadOnly := True;
  DBEdit27.ReadOnly := True;
end;

procedure TFHesap.sil1;
begin
  DBEdit1.ReadOnly := False;
  DBEdit2.ReadOnly := False;
  DBEdit4.ReadOnly := False;
  DBEdit7.ReadOnly := False;
  DBEdit8.ReadOnly := False;
  DBEdit3.ReadOnly := False;
  DBEdit5.ReadOnly := False;
  DBEdit6.ReadOnly := False;
  DBEdit9.ReadOnly := False;
  DBEdit10.ReadOnly := False;
  DBEdit27.ReadOnly := False;
end;

procedure TFHesap.Arama;
begin
  HesaptBt.Enabled := True;
  sil1;
  Silme.Enabled := True;
  if FData.THESAPYil.AsString = '' then
  Begin
    Panel2.Visible := True;
    HesaptBt.Enabled := False;
    Silme.Enabled := False;
  end;

  If FData.TDONEM.FieldByName('Issizhes').AsString = 'H' Then
  begin
    sil;
    Silme.Enabled := False;
    HesaptBt.Enabled := False;
    Toplu.Enabled := False;
  end;
End;

procedure TFHesap.GeriBtClick(Sender: TObject);
begin
  Panel2.Visible := False;
  FData.TSICIL.Prior;
  Arama;
end;

procedure TFHesap.IlerBtClick(Sender: TObject);
begin
  Panel2.Visible := False;
  FData.TSICIL.Next;
  Arama;
end;

procedure TFHesap.HES1;
begin
  kat := 0;
  FData.THESAP.Edit;
  Emtar := FData.TSICILETerGun.AsString + '.' + FData.TSICILETerAy.AsString +
  '.' + FData.TSICILETerYil.AsString;
  MaTar := FData.TSICILMTerGun.AsString + '.' + FData.TSICILMTerAy.AsString +
  '.' + FData.TSICILMTerYil.AsString;
  if FData.TSICILETerGun.Value = 0 then
    Emtar := '01.01.2030';
  if FData.TSICILMTerGun.Value = 0 then
    MaTar := '01.01.2030';
  If((StrToDate(Emtar) >= FData.TDONEM.FieldByName('Ilktar').AsDateTime) and
    (StrToDate(Emtar) <= FData.TDONEM.FieldByName('Sontar').AsDateTime)) Then
  begin
    FData.THESAPKaz1.Value := FData.TSICILMtder.Value;
    FData.THESAPKaz2.Value := FData.TSICILMtkad.Value;
    FData.THESAPKaz3.Value := FData.TSICILMtgos.Value;
  end
  else
  begin
    FData.THESAPKaz1.Value := FData.TSICILDer.Value;
    FData.THESAPKaz2.Value := FData.TSICILKad.Value;
    FData.THESAPKaz3.Value := FData.TSICILEkGos.Value;
  end;
  If((StrToDate(MaTar) >= FData.TDONEM.FieldByName('Ilktar').AsDateTime) and
    (StrToDate(MaTar) <= FData.TDONEM.FieldByName('Sontar').AsDateTime)) Then
  begin
    FData.THESAPKaz7.Value := FData.TSICILTder.Value;
    FData.THESAPKaz8.Value := FData.TSICILTkad.Value;
    FData.THESAPKaz9.Value := FData.TSICILTekGos.Value;
  end
  else
  begin
    FData.THESAPKaz7.Value := FData.TSICILMder.Value;
    FData.THESAPKaz8.Value := FData.TSICILMkad.Value;
    FData.THESAPKaz9.Value := FData.TSICILMekGos.Value;
  end;
  if FData.TGOS1.Locate('Der', FData.THESAPKaz7.Value, [loCaseInsensitive]) then
  begin
    kat := FData.THESAPKaz8.Value;
    Gos;
  end;
  FData.THESAPPkaz1.Value := ( kat * FData.TKATSAYKatsayi.Value ) * MaasOran;
  FData.THESAPPkaz2.Value :=  FData.THESAPKaz9.Value * FData.TKATSAYKatsayi.Value * MaasOran
end;

procedure TFHesap.HES0;
var
  mafar, mafar1: Currency;
Begin
  // FData.THESAP.Edit;
  icrakal := FData.TSICILIcrakal.AsCurrency;

  FData.THESAPPkaz21.AsCurrency := 0;
  If FData.TSICIL.FieldByName('Ask').AsString = 'H'
  then FData.THESAP.FieldByName('Pkaz7').AsCurrency := 0
  else
    FData.THESAP.FieldByName('Pkaz7').Value :=
      FData.TKATSAY.FieldByName('TabKay').Value  * MaasOran ;

  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz1').Value :=
        (FData.THESAP.FieldByName('Pkaz1').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz1').Value :=
        (FData.THESAP.FieldByName('Pkaz1').Value / 3) * 2;
    3:
      FData.THESAP.FieldByName('Pkaz1').Value :=
        (FData.THESAP.FieldByName('Pkaz1').Value / 3) * 2;
    4:
      FData.THESAP.FieldByName('Pkaz1').Value :=
        (FData.THESAP.FieldByName('Pkaz1').Value / 3) * 2;
  End;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz2').Value :=
        (FData.THESAP.FieldByName('Pkaz2').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz2').Value :=
        (FData.THESAP.FieldByName('Pkaz2').Value / 3) * 2;
    3:
      FData.THESAP.FieldByName('Pkaz2').Value :=
        (FData.THESAP.FieldByName('Pkaz2').Value / 3) * 2;
    4:
      FData.THESAP.FieldByName('Pkaz2').Value :=
        (FData.THESAP.FieldByName('Pkaz2').Value / 3) * 2;
  End;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz7').Value :=
        (FData.THESAP.FieldByName('Pkaz7').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz7').Value :=
        (FData.THESAP.FieldByName('Pkaz7').Value / 3) * 2;
    3:
      FData.THESAP.FieldByName('Pkaz7').Value :=
        (FData.THESAP.FieldByName('Pkaz7').Value / 3) * 2;
    4:
      FData.THESAP.FieldByName('Pkaz7').Value :=
        (FData.THESAP.FieldByName('Pkaz7').Value / 3) * 2;
  End;
  if FData.TSICIL.FieldByName('Kid').Value < 26 then
    FData.THESAP.FieldByName('Pkaz8').Value :=
      (FData.TSICIL.FieldByName('Kid').Value * 20) * FData.TKATSAY.FieldByName
      ('Katsayi').Value * MaasOran
  else
    FData.THESAP.FieldByName('Pkaz8').Value := (25 * 20) *
      ( FData.TKATSAY.FieldByName('Katsayi').Value* MaasOran);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz8').Value :=
        (FData.THESAP.FieldByName('Pkaz8').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz8').Value :=
        (FData.THESAP.FieldByName('Pkaz8').Value / 3) * 2;
    4:
      FData.THESAP.FieldByName('Pkaz8').Value :=
        (FData.THESAP.FieldByName('Pkaz8').Value / 3) * 2;
  End;
  FData.THESAP.FieldByName('Pkaz5').Value := FData.THESAP.FieldByName('Kaz6')
    .Value * FData.TSICIL.FieldByName('Yemeky').Value;
  FData.THESAP.FieldByName('Pkaz9').Value :=
    (( FData.TKATSAY.FieldByName('Katsayi').Value * MaasOran )*
      FData.TKATSAY.FieldByName('Mik').Value) *
      FData.TSICIL.FieldByName('Ozhiz').Value;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz9').Value :=
        (FData.THESAP.FieldByName('Pkaz9').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz9').Value :=
        (FData.THESAP.FieldByName('Pkaz9').Value / 3) * 2;
  End;

  FData.THESAP.FieldByName('Pkaz4').Value :=
    FData.TSICIL.FieldByName('Keft').Value;
  FData.THESAP.FieldByName('Pkaz10').Value := 0;
  If FData.TSICIL.FieldByName('Aile').AsString = 'E' then
  begin
    FData.THESAP.FieldByName('Pkaz10').AsFloat :=
      FData.TKATSAYKatsayi.AsFloat * FData.TKATSAYAile.AsFloat* MaasOran ;
  End;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz10').Value :=
        (FData.THESAP.FieldByName('Pkaz10').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz10').Value :=
        (FData.THESAP.FieldByName('Pkaz10').Value / 3) * 2;
  End;
  FData.THESAP.FieldByName('Pkaz11').Value := FData.TSICIL.FieldByName('Cosay')
    .AsFloat * ((FData.TKATSAY.FieldByName('Katsayi').AsFloat * MaasOran) *
    FData.TKATSAY.FieldByName('Cocuk').AsFloat) +
    (FData.TSICIL.FieldByName('Otm').AsFloat * 2) *
    ((FData.TKATSAY.FieldByName('Katsayi').AsFloat * MaasOran) *
    FData.TKATSAY.FieldByName('Cocuk').AsFloat);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz11').AsFloat :=
        (FData.THESAP.FieldByName('Pkaz11').AsFloat / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz11').AsFloat :=
        (FData.THESAP.FieldByName('Pkaz11').AsFloat / 3) * 2;
  End;
  FData.THESAP.FieldByName('Pkaz12').Value := FData.TSICIL.FieldByName('Mals')
    .Value * (FData.TKATSAY.FieldByName('YanKat').Value * MaasOran);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz12').Value :=
        (FData.THESAP.FieldByName('Pkaz12').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz12').Value :=
        (FData.THESAP.FieldByName('Pkaz12').Value / 3) * 2;
  End;

  FData.THESAP.FieldByName('Pkaz13').Value := FData.TSICIL.FieldByName('YanPu')
    .Value * ( FData.TKATSAY.FieldByName('YanKat').Value * MaasOran);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz13').Value :=
        (FData.THESAP.FieldByName('Pkaz13').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz13').Value :=
        (FData.THESAP.FieldByName('Pkaz13').Value / 3) * 2;
  End;
  FData.THESAP.FieldByName('Pkaz14').Value := FData.TSICIL.FieldByName('Isri')
    .Value * (FData.TKATSAY.FieldByName('YanKat').Value * MaasOran);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz14').Value :=
        (FData.THESAP.FieldByName('Pkaz14').Value / 3) * 1;
    2: FData.THESAP.FieldByName('Pkaz14').Value :=
        (FData.THESAP.FieldByName('Pkaz14').Value / 3) * 2;
  End;

  FData.THESAP.FieldByName('Pkaz15').Value := (FData.TSICIL.FieldByName('Temg')
    .Value * FData.TKATSAY.FieldByName('YanKat').Value) * MaasOran;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    1:
      FData.THESAP.FieldByName('Pkaz15').Value :=
        (FData.THESAP.FieldByName('Pkaz15').Value / 3) * 1;
    2:
      FData.THESAP.FieldByName('Pkaz15').Value :=
        (FData.THESAP.FieldByName('Pkaz15').Value / 3) * 2;
  End;
  if FData.TKATSAYOzo1.Value = 0 then
    FData.THESAP.FieldByName('Pkaz16').Value := ((FData.TKATSAYKatsayi.Value *
      MaasOran) * 9500) * (FData.TSICILKiray.Value / 100)
  else
    FData.THESAP.FieldByName('Pkaz16').Value := (FData.TKATSAYOzo1.Value * MaasOran * 9500) *
      (FData.TSICILKiray.Value / 100);
  FData.THESAP.FieldByName('Pkaz18').Value :=
    FData.TSICIL.FieldByName('Yakacaky').Value;
  FData.THESAP.FieldByName('Pkaz19').Value :=
    FData.TSICIL.FieldByName('Suty').Value;
  FData.THESAP.FieldByName('Pkaz20').Value :=
    FData.TSICIL.FieldByName('Egity').Value;
  FData.THESAP.FieldByName('Pkaz21').Value :=
    FData.TSICIL.FieldByName('Temizy').Value;
  FData.THESAP.FieldByName('Pkaz22').AsFloat :=
    (FData.TSICIL.FieldByName('Dirp').AsFloat *
    FData.TKATSAYKatsayi.AsFloat )* MaasOran;
  FData.QRaporGun.Close;
  FData.QRaporGun.Params[0].AsInteger := FData.TSICILSicno.AsInteger;
  FData.QRaporGun.Open;
  if FData.THESAPKaz11.Value>0 then
  begin

     r :=7- (FData.QRaporGunRaporGun.AsInteger-FData.THESAPKaz11.Value) ;
    if r<0 then
      r:=0;

    if r<8 then
      r:=  FData.THESAPKaz11.Value-r;
  If r > 0 then
  Begin
    FData.THESAP.FieldByName('Pkaz9').Value :=
      (FData.THESAP.FieldByName('Pkaz9').Value -
      (FData.THESAP.FieldByName('Pkaz9').Value / 120) * r);
    FData.THESAP.FieldByName('Pkaz12').Value :=
      (FData.THESAP.FieldByName('Pkaz12').Value -
      (FData.THESAP.FieldByName('Pkaz12').Value / 120) * r);
    FData.THESAP.FieldByName('Pkaz13').Value :=
      (FData.THESAP.FieldByName('Pkaz13').Value -
      (FData.THESAP.FieldByName('Pkaz13').Value / 120) * r);
    FData.THESAP.FieldByName('Pkaz14').Value :=
      (FData.THESAP.FieldByName('Pkaz14').Value -
      (FData.THESAP.FieldByName('Pkaz14').Value / 120) * r);
    FData.THESAP.FieldByName('Pkaz15').Value :=
      (FData.THESAP.FieldByName('Pkaz15').Value -
      (FData.THESAP.FieldByName('Pkaz15').Value / 120) * r);
    FData.THESAP.FieldByName('Pkaz18').Value :=
      (FData.THESAP.FieldByName('Pkaz18').Value -
      (FData.THESAP.FieldByName('Pkaz18').Value / 120) * r);
  end;
  end;
  FData.THESAP.FieldByName('Pkaz23').Value := 0;
  gosfark := 0;
  gosfark1 := 0;
  FData.THESAP.FieldByName('Pkaz17').Value := 0;
  FData.THESAP.FieldByName('Pkaz27').Value := 0;
//  if (FData.TSICILOnce5510.Value = False) then      if þartý kaldýrýldý 15.09.2017 Erdem
//  begin
  If((StrToDate(Emtar) >= FData.TDONEM.FieldByName('Ilktar').AsDateTime) and
    (StrToDate(Emtar) <= FData.TDONEM.FieldByName('Sontar').AsDateTime)) Then
  // if (FData.TSICILETerAy.AsInteger=FData.TDONEMAy.AsInteger) and (FData.TSICILETerYil.AsInteger=FData.TDONEMYil.AsInteger) then
  begin
    FData.THESAPKaz1.Value := FData.TSICILMtder.Value;
    FData.THESAPKaz2.Value := FData.TSICILMtkad.Value;
    FData.THESAPKaz3.Value := FData.TSICILMtgos.Value;
    if FData.TGOS1.Locate('Der', FData.THESAPKaz1.Value, [loCaseInsensitive])
    then
    begin
      kat := FData.THESAPKaz2.Value;
      Gos;
      gosfark := kat * (FData.TKATSAYKatsayi.Value * MaasOran);
      gosfark := RoundTo(gosfark, -2);
      gosfark := gosfark + (FData.THESAPKaz3.AsInteger *
        (FData.TKATSAYKatsayi.Value * MaasOran));
      gosfark := RoundTo(gosfark, -2);
    end;
    if FData.TGOS1.Locate('Der', FData.TSICILDer.Value, [loCaseInsensitive])
    then
    begin
      kat := FData.TSICILKad.Value;
      Gos;
      gosfark1 := (kat * ( FData.TKATSAYKatsayi.Value * MaasOran));
      gosfark1 := RoundTo(gosfark1, -2);
      gosfark1 := gosfark1 + (FData.TSICILEkGos.AsInteger *
        (FData.TKATSAYKatsayi.Value * MaasOran));
      gosfark1 := RoundTo(gosfark1, -2);
    end;
  end;
  if (FData.TSICILKid.AsInteger < 26) then
  begin
    if (FData.TSICILKidAy.AsInteger = 0) and (FData.TSICILKid.AsInteger > 0)
    then
      gosfark := gosfark + ((20 * FData.TKATSAYKatsayi.Value)* MaasOran);
  end;
  gosfark := RoundTo(gosfark, -2);
  FData.THESAP.FieldByName('Pkaz17').Value := gosfark - gosfark1;
  FData.THESAPPkaz17.Value := RoundTo(FData.THESAPPkaz17.Value, -2);
  FData.THESAP.FieldByName('Pkaz27').Value := FData.THESAPPkaz17.Value * 2;
//  end;
  FData.TSICIL.Edit;
  FData.THESAP.Edit;
  FData.THESAP.FieldByName('Pkaz26').Value := 0;
  FData.THESAP.FieldByName('Pkaz35').Value := 0;
  FData.THESAP.FieldByName('Pkaz36').Value := 0;
  If FData.TSICIL.FieldByName('Kef').AsString = 'E' then FData.THESAP.FieldByName
    ('Pkaz26').Value := (100 * FData.TKATSAY.FieldByName('Katsayi').Value) * MaasOran;
  If FData.TSICIL.FieldByName('Kef').AsString = 'G' then FData.THESAP.FieldByName
    ('Pkaz26').Value := (375 * FData.TKATSAY.FieldByName('Katsayi').Value)* MaasOran;
  FData.THESAP.FieldByName('Pkaz28').Value :=
    FData.TSICIL.FieldByName('Avans').Value;
// icra hesaplamasý HesapBtn tuþunun sonuna alýndý IcraKesinti();
  {if FData.TSICILIcrakal.AsCurrency < 0 then
    FData.TSICILIcrakal.AsCurrency := 0;
  if FData.TSICILIcrakal.AsCurrency > FData.TSICILIcra.AsCurrency then
    FData.THESAPPkaz29.Value := FData.TSICILIcra.Value
  else
    FData.THESAPPkaz29.Value := FData.TSICILIcrakal.Value;

  FData.TSICIL.FieldByName('Icrakal').Value := FData.TSICIL.FieldByName('Icrakal')
    .Value - FData.THESAP.FieldByName('Pkaz29').AsCurrency;

  if FData.TSICILIcrakal.AsCurrency < 0 then
    FData.TSICILIcrakal.AsCurrency := 0; }
 //
  FData.THESAP.FieldByName('Pkaz30').Value :=
    FData.TSICIL.FieldByName('YemK').Value;
  FData.THESAP.FieldByName('Pkaz31').Value :=
    FData.TSICIL.FieldByName('Nafaka').Value;
  FData.THESAP.FieldByName('Pkaz32').Value :=
    FData.TSICIL.FieldByName('Loj').Value;
  FData.THESAP.FieldByName('Pkaz33').Value :=
    FData.TSICIL.FieldByName('Ozelsig').Value;
  if FData.TSICILAstop.AsCurrency < 0 then
    FData.TSICILAstop.AsCurrency := 0;
  if FData.TSICILAstop.AsCurrency > FData.TSICILAske.AsCurrency then
    FData.THESAPPkaz34.Value := FData.TSICILAske.Value
  else
    FData.THESAPPkaz34.Value := FData.TSICILAstop.Value;
  FData.TSICIL.FieldByName('Astop').Value := FData.TSICIL.FieldByName('Astop')
    .Value - FData.THESAP.FieldByName('Pkaz34').Value;
  if FData.TSICILIcrakal.AsCurrency < 0 then
    FData.TSICILIcrakal.AsCurrency := 0;
  if FData.TSICILCezakal.AsCurrency < 0 then
    FData.TSICILCezakal.AsCurrency := 0;
  if FData.TSICILCezakal.AsCurrency > FData.TSICILCeza.AsCurrency then
    FData.THESAPPkaz35.Value := FData.TSICILCeza.Value
  else
    FData.THESAPPkaz35.Value := FData.TSICILCezakal.Value;

  FData.TSICIL.FieldByName('Cezakal').Value := FData.TSICIL.FieldByName('Cezakal')
    .AsCurrency - FData.THESAP.FieldByName('Pkaz35').Value;
  if FData.TSICILCezakal.AsCurrency < 0 then
    FData.TSICILCezakal.AsCurrency := 0;
  FData.THESAP.FieldByName('Pkaz36').Value := 0;
  If FData.TSICILSendika.AsInteger > 0 Then FData.THESAP.FieldByName('Pkaz36')
    .Value := FData.TKATSAY.FieldByName('Geme').Value;
  FData.THESAP.FieldByName('Pkaz37').Value :=
    FData.TSICIL.FieldByName('Zim').Value;
  FData.THESAP.FieldByName('Pkaz38').Value :=
    FData.TSICIL.FieldByName('Kes1').Value;
  FData.THESAP.FieldByName('Pkaz39').Value :=
    FData.TSICIL.FieldByName('Kes2').Value;
  FData.THESAP.FieldByName('Pkaz40').Value :=
    FData.TSICIL.FieldByName('Ilac').Value;
  FData.THESAP.FieldByName('Adi').AsString :=
    FData.TSICIL.FieldByName('Adi').AsString;
  FData.THESAP.FieldByName('Soyadi').AsString :=
    FData.TSICIL.FieldByName('Soyadi').AsString;
  FData.THESAP.FieldByName('Unvan').AsString :=
    FData.TSICIL.FieldByName('Unvan').AsString;
  FData.THESAP.FieldByName('Dair').AsString :=
    FData.TSICIL.FieldByName('Dair').AsString;
  FData.THESAP.FieldByName('SskNo').AsString :=
    FData.TSICIL.FieldByName('EmNo').AsString;
  FData.TSICIL.Post;
  FData.THESAP.Edit;
  FData.THESAPPka1.Value := FData.TSicilK1.Value;
  FData.THESAPPka2.Value := FData.TSicilK2.Value;
  FData.THESAPPka3.Value := FData.TSicilK3.Value;
  FData.THESAPPka4.Value := FData.TSicilK4.Value;
  FData.THESAPPka5.Value := FData.TSicilK5.Value;
  FData.THESAPPka6.Value := FData.TSicilK6.Value;
  FData.THESAPPka7.Value := FData.TSicilK7.Value;
  FData.THESAPPka8.Value := FData.TSicilK8.Value;
  FData.THESAPPka9.Value := FData.TSicilK9.Value;
  FData.THESAPPka10.Value := FData.TSicilk10.Value;
  if FData.TSICILKid.Value > 9 then
    FData.THESAPPka11.AsString := FData.TSICILKid.AsString
  else
    FData.THESAPPka11.AsString := '0' + FData.TSICILKid.AsString;
  FData.THESAPPka12.Value := FData.TSICILOzhiz.Value * 100;
  FData.THESAPPka13.Value := FData.TSICILMals.Value;
  FData.THESAPPka14.Value := FData.TSICILYanPu.Value;
  FData.THESAPPka15.Value := FData.TSICILIsri.Value;
  FData.THESAPPka16.Value := FData.TSICILTemg.Value;
  if FData.TSICILETerAy.Value < 10 then
    etar := '0' + FData.TSICILETerAy.AsString
  else
    etar := FData.TSICILETerAy.AsString;
  if FData.TSICILETerGun.Value < 10 then
    etar := etar + '0' + FData.TSICILETerGun.AsString
  else
    etar := etar + FData.TSICILETerGun.AsString;
  FData.THESAPA1.Value := etar;
  if FData.TSICILKid.Value < 10 then
    etar := '0' + FData.TSICILKid.AsString
  else
    etar := FData.TSICILKid.AsString;
  if FData.TSICILKidAy.Value < 10 then
    etar := etar + '0' + FData.TSICILKidAy.AsString
  else
    etar := etar + FData.TSICILKidAy.AsString;
  if FData.TSICILKidGun.Value < 10 then
    etar := etar + '0' + FData.TSICILKidGun.AsString
  else
    etar := etar + FData.TSICILKidGun.AsString;
  FData.THESAPA2.Value := etar;
  FData.THESAPA3.Value := FData.TSICILIlkssk.Value;
  FData.THESAP.Post;
End;

procedure TFHesap.ailecocuk;
var
  taa: String;
begin
  FData.TSICIL3.First;
  FData.TSICIL.Edit;
  FData.TSICILAsgaCOK.Value := 0;
  FData.TSICILCosay.Value := 0;
  FData.TSICILOtm.Value := 0;
  FData.TSICILAile.Value := 'H';
  FData.TSICILAsgaaile.Value := 'H';
  while not FData.TSicil3.Eof do
  begin
    If(FData.TSicil3V1.Value = 'Eþ') and (FData.TSicil3Calis.Value = 'H') then
      FData.TSICILAsgaaile.Value := 'E';
    If(FData.TSicil3V1.Value = 'Eþ') and (FData.TSicil3Ailyar.Value = 'E') then
      FData.TSICILAile.Value := 'E';
    If(FData.TSicil3V1.Value = 'Çocuk') then
    begin
      taa := DateToStr(FData.TDONEMIlktar.Value - FData.TSicil3V7.Value);
      a := StrToInt(copy(taa, 9, 2));
      If a < 25 then FData.TSICILAsgaCOK.Value := FData.TSICILAsgaCOK.Value + 1
      else
      begin
        If(FData.TSicil3Tarih.AsString <> '') or (FData.TSicil3V4.AsString = 'K')
        then FData.TSICILAsgaCOK.Value := FData.TSICILAsgaCOK.Value + 1;
      end;
      If a < 7 then FData.TSICILOtm.Value := FData.TSICILOtm.Value + 1;
    end;
  FData.TSicil3.Next;
  end;
  FData.TSICILCosay.Value := FData.TSICILAsgaCOK.Value - FData.TSICILOtm.Value;
  FData.TSICIL.Post;
end;

procedure TFHesap.gost;
begin
  if FData.TGOS1.Locate('Der', FData.THESAP.FieldByName('Kaz1').AsString,
  [loPartialKey]) then
  begin
    kat := FData.THESAP.FieldByName('Kaz2').Value;
    Gos;
  end;
  kat := (FData.TKATSAY.FieldByName('Katsayi').Value * kat)* MaasOran;
end;

procedure TFHesap.HesaptBtClick(Sender: TObject);
var
  ss, yy, de: string;
  J: integer;
begin
  Animate1.Visible := True;
  Animate1.Active := Animate1.Visible;
  MaasOran := FData.TSICILMaasOran.AsCurrency / 3;
  FData.TKatoran.Refresh;
  if FData.TKatoranA30.Value = 10 then
    ailecocuk;
  a := 0;
  SSkHES0;
  GELHES0;
  HES1;
  HES0;
  FData.THESAP.Edit;
  FData.THESAP.FieldByName('SskMat').Value := 0;
  FData.THESAP.FieldByName('IszSigMat').Value := 0;
  FData.THESAP.FieldByName('GelirMat').Value := 0;
  FData.THESAP.FieldByName('DamMat').Value := 0;
  FData.THESAP.FieldByName('BrutGelir').Value := 0;
  FData.THESAP.FieldByName('OzelKes').Value := 0;
  FData.THESAP.FieldByName('Pkaz41').AsFloat := 0;
  FData.THESAP.FieldByName('IsMYS').Value := 0;
  FData.THESAP.FieldByName('ISGSS').Value := 0;
  FData.THESAP.FieldByName('ISVMYS').Value := 0;
  FData.THESAP.FieldByName('ISvGSS').Value := 0;
  FData.THESAP.FieldByName('PKaz25').Value := 0;
  FData.THESAP.FieldByName('PKaz29').Value := 0;
  FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency := 0;
  FData.THESAPIstisnaMatrah.AsCurrency := 0;
  For J := 1 to 25 do
  Begin
    yy := 'Pkaz' + IntToStr(J);
    ss := 'G' + IntToStr(J);
    de := FData.TKAZANC.FieldByName(ss).AsString;
    if FData.THESAP.FieldByName(yy).AsString = '' then
      FData.THESAP.FieldByName(yy).Value := 0;
    if FData.THESAP.FieldByName(yy).Value = 0 then
      Continue;
//    FData.THESAP.FieldByName(yy).Value :=
//      RoundTo(FData.THESAP.FieldByName(yy).Value, -2);
    if j = 25 then
      FData.THESAP.FieldByName(yy).Value :=
        NakdiKumanya(FData.THESAPSicno.AsInteger, FData.THESAPAy.AsString,
        FData.THESAPDonem.AsString)
    else
      FData.THESAP.FieldByName(yy).Value :=
        RoundTo(FData.THESAP.FieldByName(yy).Value, -2);
    If FData.TSICILDirp.Value <> 0 then
    begin
      FData.THESAP.FieldByName('BrutGelir').Value := FData.THESAPPkaz3.Value +
        FData.THESAPPkaz5.Value + //Yemek yardýmý
        FData.THESAPPkaz22.Value + FData.THESAPPkaz10.Value +
        FData.THESAPPkaz11.Value + FData.THESAPPkaz16.Value +
        FData.THESAPPkaz17.Value + FData.THESAPPkaz18.Value +
        FData.THESAPPkaz19.Value + FData.THESAPPkaz20.Value +
        FData.THESAPPkaz21.Value + FData.THESAPPkaz24.Value;
      FData.THESAP.FieldByName('GelirMat').Value := FData.THESAPPkaz3.Value +
         FData.THESAPPkaz5.Value + //Yemek yardýmý
        FData.THESAPPkaz22.Value + FData.THESAPPkaz24.Value +
        FData.THESAPPkaz16.Value + FData.THESAPPkaz19.Value;   // samsat baþkaný sosyal denge tazminat için ilave
      FData.THESAP.FieldByName('DamMat').Value := FData.THESAPPkaz3.Value +
        FData.THESAPPkaz5.Value + //Yemek yardýmý
        FData.THESAPPkaz22.Value + FData.THESAPPkaz24.Value +
        FData.THESAPPkaz16.Value + FData.THESAPPkaz19.Value;   // samsat baþkaný sosyal denge tazminat için  ilave
    end
    else if de = 'E' then
    FData.THESAP.FieldByName('GelirMat').Value :=
      FData.THESAP.FieldByName('GelirMat').Value + FData.THESAP.FieldByName
      (yy).Value;
    ss := 'D' + IntToStr(J);
    de := FData.TKAZANC.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('DamMat').Value :=
        FData.THESAP.FieldByName('DamMat').Value + FData.THESAP.FieldByName
        (yy).Value;
    ss := 'I' + IntToStr(J);
    de := FData.TKAZANC.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('BrutGelir').Value :=
        FData.THESAP.FieldByName('BrutGelir').Value + FData.THESAP.FieldByName
        (yy).Value;
    ss := 'S' + IntToStr(J);
    de := FData.TKAZANC.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('SskMat').Value :=
        FData.THESAP.FieldByName('SskMat').Value + FData.THESAP.FieldByName
        (yy).Value;
  end;
  if FData.TSICIL.FieldByName('Kid').Value > 25 then
  begin
    FData.THESAP.FieldByName('SskMat').Value :=
      FData.THESAP.FieldByName('SskMat').Value -
      FData.THESAP.FieldByName('Pkaz8').Value;
    FData.THESAP.FieldByName('SskMat').Value :=
      FData.THESAP.FieldByName('SskMat').Value +
      (25 * 20) * (FData.TKATSAY.FieldByName('Katsayi').Value * MaasOran);
  end;
  if FData.THESAPPkaz25.AsCurrency > 0 then
    FData.THESAPSskMat.AsCurrency := FData.THESAPSskMat.AsCurrency +
      NakdiSgk(FData.THESAPSicno.AsInteger, FData.THESAPAy.AsString);
  For J := 26 to 40 do
  Begin
    a := a + 1;
    yy := 'Pkaz' + IntToStr(J);
    if FData.THESAP.FieldByName(yy).AsString = '' then
      FData.THESAP.FieldByName(yy).Value := 0;
    if FData.THESAP.FieldByName(yy).Value = 0 then
      Continue;
    FData.THESAP.FieldByName(yy).Value :=
      RoundTo(FData.THESAP.FieldByName(yy).Value, -2);
    ss := 'G' + IntToStr(a);
    de := FData.TKESINTI.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('GelirMat').Value :=
        FData.THESAP.FieldByName('GelirMat').Value - FData.THESAP.FieldByName
        (yy).Value;
    ss := 'D' + IntToStr(a);
    de := FData.TKESINTI.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('DamMat').Value :=
        FData.THESAP.FieldByName('DamMat').Value - FData.THESAP.FieldByName
        (yy).Value;
    ss := 'I' + IntToStr(a);
    de := FData.TKESINTI.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('OzelKes').Value :=
        FData.THESAP.FieldByName('OzelKes').Value + FData.THESAP.FieldByName
        (yy).Value;
    ss := 'S' + IntToStr(a);
    de := FData.TKESINTI.FieldByName(ss).AsString;
    if de = 'E' then
      FData.THESAP.FieldByName('SskMat').Value :=
        FData.THESAP.FieldByName('SskMat').Value - FData.THESAP.FieldByName
        (yy).Value;
  end;
// FData.THESAP.FieldByName('OzelKes').Value := FData.THESAP.FieldByName('OzelKes').Value-
//   FData.THESAP.FieldByName('Pkaz33').value;
  FData.THESAP.FieldByName('BrutGelir').Value :=
    FData.THESAP.FieldByName('BrutGelir').Value - FData.THESAP.FieldByName
    ('Pkaz23').Value;
  FData.THESAP.FieldByName('Pka8').Value := FData.THESAP.FieldByName
    ('SskMat').Value;
  FData.THESAP.FieldByName('SskMat').Value := FData.THESAP.FieldByName('SskMat')
    .Value - FData.THESAPPkaz17.Value;
  If FData.TSICIL.FieldByName('Vekor').Value = 4 then FData.THESAP.FieldByName
    ('SskMat').Value := FData.THESAP.FieldByName('SskMat').Value +
    ((((((FData.TKATSAY.FieldByName('Katsayi').Value * FData.TKATSAY.FieldByName
    ('Mik').Value)* MaasOran) * (FData.TSICIL.FieldByName('Kat').Value / 100))) / 3) * 2)
  else
  begin
    FData.THESAP.FieldByName('Pka9').Value :=
      (((FData.TKATSAY.FieldByName('Katsayi').Value * FData.TKATSAY.FieldByName
      ('Mik').Value)* MaasOran) * (FData.TSICIL.FieldByName('Kat').Value / 100));
    FData.THESAP.FieldByName('Pka9').Value := RoundTo(FData.THESAPPka9.Value, -2);
    FData.THESAP.FieldByName('SskMat').Value := FData.THESAP.FieldByName('SskMat')
      .Value + FData.THESAP.FieldByName('Pka9').Value;
  end;
  FData.THESAP.FieldByName('SskMat').Value := RoundTo(FData.THESAPSskMat.Value, -2);
  Case FData.TSICIL.FieldByName('Vekor').Value of
    3:
      begin
        FData.THESAP.FieldByName('SskMat').Value :=
          FData.THESAP.FieldByName('SskMat').Value - FData.THESAP.FieldByName
          ('Pkaz7').Value;
        FData.THESAP.FieldByName('SskMat').Value :=
          FData.THESAP.FieldByName('SskMat').Value + (FData.TKATSAY.FieldByName
          ('TabKay').Value * MaasOran);
      end;
  End;
  If FData.TSICIL.FieldByName('Vekor').Value <> 4 then
  begin
    if FData.TGOS1.Locate('Der', FData.THESAP.FieldByName('Kaz1').Value,
      [loCaseInsensitive]) then
    begin
      kat := FData.THESAP.FieldByName('Kaz2').Value;
      Gos;
    end;
    FData.THESAP.FieldByName('SskMat').Value := FData.THESAP.FieldByName('SskMat')
      .Value - FData.THESAP.FieldByName('Pkaz1').Value;
    FData.THESAP.FieldByName('SskMat').Value := FData.THESAP.FieldByName('SskMat')
      .Value - FData.THESAP.FieldByName('Pkaz2').Value;
//    FData.THESAP.FieldByName('SskMat').Value :=
//      FData.THESAP.FieldByName('SskMat').Value +
//      (((kat+FData.THESAP.FieldByName('Kaz3').AsCurrency) *
//      FData.TKATSAY.fieldbyname('Katsayi').Value) * 1);
    FData.THESAP.FieldByName('SskMat').Value :=
      FData.THESAP.FieldByName('SskMat').Value +
      RoundTo(((kat * FData.TKATSAY.FieldByName('Katsayi').Value)* MaasOran), -2);
    FData.THESAP.FieldByName('SskMat').Value :=
      FData.THESAP.FieldByName('SskMat').Value +
      RoundTo((FData.THESAP.FieldByName('Kaz3').AsCurrency *
      (FData.TKATSAY.FieldByName('Katsayi').Value * MaasOran)), -2);
  end;
  FData.THESAP.FieldByName('Dair').AsString :=
    FData.TSICIL.FieldByName('Dair').AsString;
  For J := 1 to 25 do
  Begin
    yy := 'Pkaz' + IntToStr(J);
    If FData.TSICILDirp.Value <> 0 then
    if (yy = 'Pkaz3') or (yy = 'Pkaz5') or (yy = 'Pkaz22') or (yy = 'Pkaz23') or (yy = 'Pkaz10') or    // erciþ baþkanýn yemek yardýmý brüt maaþa eklenmiyoru Pkaz5 çýkarýldý
//    if (yy = 'Pkaz3') or (yy = 'Pkaz22') or (yy = 'Pkaz23') or (yy = 'Pkaz10') or
      (yy = 'Pkaz11') or (yy = 'Pkaz18') OR (yy = 'Pkaz16') or (yy = 'Pkaz17') or
      (yy = 'Pkaz19') or (yy = 'Pkaz20') or (yy = 'Pkaz21') or (yy = 'Pkaz24')
    then
    else
      FData.THESAP.FieldByName(yy).Value := 0;
  end;
  Case FData.TSICIL.FieldByName('Vekor').Value of
    5:
      begin
        FData.THESAP.FieldByName('SskMat').Value :=
          FData.THESAP.FieldByName('SskMat').Value / 2;
      end;
    6:
      begin
        FData.THESAP.FieldByName('SskMat').Value :=
          FData.THESAP.FieldByName('SskMat').Value / 2;
        For J := 1 to 25 do
        Begin
          yy := 'Pkaz' + IntToStr(J);
          FData.THESAP.FieldByName(yy).Value := 0;
        end;
        FData.THESAPGelirMat.Value := 0;
        FData.THESAPDamMat.Value := 0;
        FData.THESAPBrutGelir.Value := 0;
      end;
  end;
  FData.THESAP.Post;
  DamIsz;
  SSkHES;
  GELHES;
  Sendik;
  YASKE;
  // icra kesintisi buraya alýndý
  IcraKesinti(FData.THESAPNet.AsCurrency, FData.TSICILIcraOran.AsInteger);
  if FData.TSICILBesKesinti.AsBoolean = True then
   BesKesinti(FData.TSICILBesOran.AsCurrency);
  if FData.TSICILAskermi.AsBoolean then
  MaasSil(FData.TSICILSicno.AsInteger, FData.TSicilYil.AsString,
    FData.TSicilAy.AsString, FData.TSicilDonem.AsString);
  Animate1.Visible := False;
  Animate1.Active := Animate1.Visible;
end;

procedure TFHesap.Sendik;
var cocuksayi:Integer;
Begin
  with FData do
  begin
    cocuksayi:= FData.TSICILAsgaCOK.AsInteger;
    if FData.TSICILAsga.asString = 'E' then
    begin
      FData.THESAP.Edit;
      FData.ThesapPka17.Value := FData.TKatoranA20.Value;
      If FData.TSICILAsgaaile.Value = 'E' then
      begin
        if (cocuksayi>3) then
          cocuksayi:=3;
        FData.ThesapPka17.Value := FData.ThesapPka17.Value + FData.TKatoranA21.Value;
        If cocuksayi > 0 then
        begin
          If cocuksayi < 3 then FData.ThesapPka17.Value :=
            FData.ThesapPka17.Value + (FData.TKatoranA22.Value) *  cocuksayi
          else
          begin
            FData.ThesapPka17.Value := FData.ThesapPka17.Value +
            (FData.TKatoranA22.Value * 2);
            FData.ThesapPka17.Value := FData.ThesapPka17.Value + 0.1 *
              (cocuksayi - 2);
          end;
        end;
      end
      else
      begin
        if (cocuksayi > 5) then
          cocuksayi := 5;
        if cocuksayi > 0 then
        begin
          If cocuksayi < 3 then FData.ThesapPka17.Value :=
            FData.ThesapPka17.Value + (FData.TKatoranA22.Value) * cocuksayi
          else
          begin
            if  cocuksayi = 3  then
            begin
              FData.ThesapPka17.Value := FData.ThesapPka17.Value +
               (FData.TKatoranA22.Value * 2);
              FData.ThesapPka17.Value := FData.ThesapPka17.Value + 0.1
            end
            else
            begin
              FData.ThesapPka17.Value := FData.ThesapPka17.Value +
               (FData.TKatoranA22.Value * 2);
                FData.ThesapPka17.Value := FData.ThesapPka17.Value + 0.1 ;
              FData.ThesapPka17.Value := FData.ThesapPka17.Value +
              (FData.TKatoranA23.Value) * (cocuksayi - 3);
            end;
          end;
        end;
      end;
      FData.THESAPPka18.Value := FData.THESAPPka17.Value *
        FData.TKATSAYOzind.Value;
      FData.THESAPPka19.Value := FData.TKATSAYOzind.Value * 12;
      FData.THESAP.FieldByName('Pkaz23').Value := FData.THESAPPka18.Value *
        FData.TKATSAYGeliror1.Value * MaasOran;
      FData.THESAP.FieldByName('Pkaz23').Value :=
        RoundTo(FData.THESAPPkaz23.Value, -2);
      If FData.THESAPPkaz23.Value > THESAPGelirVer.Value then
      begin
        FData.THESAP.Edit;
        FData.THESAPPkaz23.Value := FData.THESAPGelirVer.Value;
        FData.THESAP.Post;
      end;
      THESAP.Edit;
      If FData.TSICILDirp.Value <> 0 then
        FData.THESAP.FieldByName('BrutGelir').Value :=
          FData.THESAP.FieldByName('BrutGelir').Value +
          FData.THESAP.FieldByName('Pkaz5').Value +
          FData.THESAP.FieldByName('Pkaz23').Value
      else
        FData.THESAP.FieldByName('BrutGelir').Value :=
          FData.THESAP.FieldByName('BrutGelir').Value +
          FData.THESAP.FieldByName('Pkaz23').Value;

      FData.THESAP.FieldByName('Net').Value :=
        FData.THESAP.FieldByName('BrutGelir').Value - FData.THESAP.FieldByName
        ('NetKes').Value;
      THESAP.Post;
    end;
    if (THESAP.State = DsEdit) or (THESAP.State = Dsinsert) then
      THESAP.Post;
  end;
end;

procedure TFHesap.SSkHES0;
Begin
  if FData.TSSK.Fields[0].AsString = '' then
  begin
    FData.TSSK.Edit;
    FData.TSSK.FieldByName('Sicno').AsString :=
      FData.TSICIL.FieldByName('Sicno').AsString;
    FData.TSSK.FieldByName('Yil').AsString :=
      FData.TDONEM.FieldByName('Yil').AsString;
    FData.TSSK.FieldByName('Ay').AsString :=
      FData.TDONEM.FieldByName('Ay').AsString;
    FData.TSSK.FieldByName('Dair').AsString :=
      FData.TSICIL.FieldByName('Dair').AsString;
    FData.TSSK.FieldByName('SskNo').AsString :=
      FData.TSICIL.FieldByName('EmNo').AsString;
    FData.TSSK.FieldByName('Sskg').Value := 0;
    FData.TSSK.FieldByName('SskMat').Value := 0;
    FData.TSSK.FieldByName('SskVer').Value := 0;
    FData.TSSKArt.Value := 0;
    FData.TSSKKef.Value := 0;
    FData.TSSKGec.Value := 0;
    FData.TSSK.Post;
    FData.TSSK.Refresh;
  end;
  FData.TSSK.Edit;
  FData.TSSKTc.AsString := FData.TSICILKimno.AsString;
  FData.TSSK.FieldByName('Ad').AsString :=
    FData.TSICIL.FieldByName('Adi').AsString;
  FData.TSSK.FieldByName('Soy').AsString :=
    FData.TSICIL.FieldByName('Soyadi').AsString;
  FData.TSSK.FieldByName('Dair').AsString :=
    FData.TSICIL.FieldByName('Dair').AsString;
  FData.TSSK.FieldByName('SskNo').AsString :=
    FData.TSICIL.FieldByName('EmNo').AsString;
  FData.TSSK.FieldByName('SskMat').Value := FData.TSSK.FieldByName('SskMat')
    .Value - FData.THESAP.FieldByName('SskMat').Value;
  FData.TSSK.FieldByName('SskVer').Value := FData.TSSK.FieldByName('SskVer')
    .Value - FData.THESAP.FieldByName('Sskisv').Value;
  FData.TSSK.FieldByName('SskV').Value := FData.TSSK.FieldByName('SskV').Value -
    FData.THESAP.FieldByName('Sskis').Value;
  If FData.TSSK.FieldByName('SskMat').Value = 0
  then FData.TSSK.FieldByName('Sskg').Value := 0;
  if(FData.TSICIL.FieldByName('Isgirtar').AsDateTime >= FData.TDONEM.FieldByName
    ('Ilktar').AsDateTime) and (FData.TSICIL.FieldByName('Isgirtar').AsDateTime
    <= FData.TDONEM.FieldByName('Sontar').AsDateTime)
  then FData.TSSK.FieldByName('GirTar').AsDateTime :=
    FData.TSICIL.FieldByName('Isgirtar').AsDateTime;
  if(FData.TSICIL.FieldByName('Ciktar').AsDateTime >= FData.TDONEM.FieldByName
    ('Ilktar').AsDateTime) and (FData.TSICIL.FieldByName('Ciktar').AsDateTime <=
    FData.TDONEM.FieldByName('Sontar').AsDateTime)
  then FData.TSSK.FieldByName('CikTar').AsDateTime :=
    FData.TSICIL.FieldByName('Ciktar').AsDateTime;
  FData.TSSK.FieldByName('Kef').Value := FData.TSSK.FieldByName('Kef').Value -
    FData.THESAP.FieldByName('Pkaz26').AsCurrency;
  FData.TSSK.FieldByName('Gec').Value := FData.TSSK.FieldByName('Gec').Value -
    FData.THESAP.FieldByName('Pkaz34').AsCurrency;
  FData.TSSK.FieldByName('Art').Value := FData.TSSK.FieldByName('Art').Value -
    FData.THESAP.FieldByName('Pkaz17').AsCurrency;
  FData.TSSK.Post;
  FData.TSICIL.Edit;
  FData.TSICIL.FieldByName('Icrakal').Value :=
    FData.TSICIL.FieldByName('Icrakal').AsCurrency + FData.THESAP.FieldByName
    ('Pkaz29').AsCurrency;
  FData.TSICIL.FieldByName('Astop').Value := FData.TSICIL.FieldByName('Astop')
    .AsCurrency + FData.THESAP.FieldByName('Pkaz34').AsCurrency;
  FData.TSICIL.FieldByName('Cezakal').Value :=
    FData.TSICIL.FieldByName('Cezakal').AsCurrency + FData.THESAP.FieldByName
    ('Pkaz35').AsCurrency;
  FData.TSICIL.Post;
end;

procedure TFHesap.GELHES0;
Begin
  FData.UniQGelir.Edit;
  FData.UniQGelir.FieldByName('Ad').Value := FData.TSICILAdi.Value;
  FData.UniQGelir.FieldByName('soy').Value := FData.TSICILSoyadi.Value;
  if FData.UniQGelir.FieldByName('Gelirtop').AsString = '' then
    FData.UniQGelir.FieldByName('Gelirtop').Value := 0;
  if FData.UniQGelir.FieldByName('Kumver').AsString = '' then
    FData.UniQGelir.FieldByName('Kumver').Value := 0;
  FData.UniQGelir.FieldByName('Gelirtop').Value :=
    FData.UniQGelir.FieldByName('Gelirtop').Value - FData.THESAP.FieldByName
    ('GelirMat').Value;
  FData.UniQGelir.FieldByName('Kumver').Value :=
    FData.UniQGelir.FieldByName('Kumver').Value - FData.THESAP.FieldByName
    ('GelirVer').Value;
  FData.UniQGelir.Post;
  FData.UniQGelir.Refresh;
end;

procedure TFHesap.SSkHES;
Begin
  SSKMatrah := RoundTo(FData.THESAPSskMat.Value / MaasOran, -2);
  if MaasOran < 1 then
    SSKMatrah := RoundTo(SSKMatrah / 2, -2);
  FData.THESAP.Edit;
  FData.THESAPSskMat.Value := SSKMatrah; //RoundTo(FData.THESAPSskMat.Value, -2);
  FData.THESAP.FieldByName('Sskis').Value := 0;
  FData.THESAP.FieldByName('SSkisv').Value := 0;
  If(FData.TDONEM.FieldByName('SskHes').AsString = 'H') or
    (FData.TSICIL.FieldByName('Sskk').AsString = 'H') Then
  Begin
    FData.THESAP.FieldByName('Sskis').Value := 0;
    FData.THESAP.FieldByName('SSkisv').Value := 0;
    FData.THESAP.FieldByName('SskMat').Value := 0;
  End;
  FData.THESAPGenSagKisi.Value := 0;
  FData.THESAPGenSagKurum.Value := 0;
  if FData.TSICILSaglik.AsBoolean = True then
  begin
    FData.THESAPGenSagKisi.Value := FData.THESAPSskMat.Value * 0.00;
    FData.THESAPGenSagKisi.Value := RoundTo(FData.THESAPGenSagKisi.Value, -2);
    FData.THESAPGenSagKurum.Value := FData.THESAPSskMat.Value * 0.12;
    FData.THESAPGenSagKurum.Value := RoundTo(FData.THESAPGenSagKurum.Value, -2);
  end;
  if FData.TSICILOnce5510.AsBoolean = True then
    begin
    FData.THESAPSskMat.Value := (FData.THESAPSskMat.Value / 30) *
      FData.THESAPGun.Value;
      pekFark := 0;
      pekFark20 := 0;
      pekFark12_5 := 0;
    if (FData.THESAPSskMat.Value < FData.TKATSAY.FieldByName('Asgari').Value) then
      begin
        pekFark := FData.TKATSAY.FieldByName('Asgari').Value - FData.THESAPSskMat.Value;
        pekFark := RoundTo(pekFark, -2);
        pekFark20 := pekFark * 20 / 100;
        pekFark20 := RoundTo(pekFark20, -2);

        pekFark12_5 := pekFark * 12.5 / 100;
        pekFark12_5 := RoundTo(pekFark12_5, -2);

      end;


    FData.THESAPSskMat.Value := RoundTo(FData.THESAPSskMat.Value, -2);
    FData.THESAPIsMYS.Value := FData.THESAPSskMat.Value * 0.09;
    FData.THESAPIsMYS.Value := RoundTo(FData.THESAPIsMYS.Value, -2);

    FData.THESAPISGSS.Value := FData.THESAPSskMat.Value * 0.05;
    FData.THESAPISGSS.Value := RoundTo(FData.THESAPISGSS.Value, -2);

    FData.THESAPISVMYS.Value := FData.THESAPSskMat.Value * 0.11;
    FData.THESAPISVMYS.Value := FData.THESAPISVMYS.Value + pekFark20;
    FData.THESAPISVMYS.Value := RoundTo(FData.THESAPISVMYS.Value, -2);


    FData.THESAPISVGSS.Value := FData.THESAPSskMat.Value * 0.075;
    FData.THESAPISVGSS.Value := FData.THESAPISVGSS.Value + pekFark12_5;
    FData.THESAPISVGSS.Value := RoundTo(FData.THESAPISVGSS.Value, -2);
    FData.THESAPSskIs.Value := FData.THESAPIsMYS.Value +
      FData.THESAPISGSS.Value;
    FData.THESAPSskIsv.Value := FData.THESAPISVMYS.Value +
      FData.THESAPISVGSS.Value;
  end
  else
  begin
    If FData.TSICIL.FieldByName('Ilkssk').AsString = 'E' then
    begin
    FData.THESAP.FieldByName('Sskis').Value :=
      FData.THESAP.FieldByName('SskMat').Value * FData.TKATSAY.FieldByName
      ('Sskilk').Value;
    FData.THESAP.FieldByName('Sskisv').Value :=
      FData.THESAP.FieldByName('SskMat').Value * FData.TKATSAY.FieldByName
      ('SskEm').Value;
    End
    Else
    begin
      FData.THESAP.FieldByName('Sskis').Value :=
        FData.THESAP.FieldByName('SskMat').Value * FData.TKATSAY.FieldByName
        ('EmIs').Value;
      FData.THESAP.FieldByName('Sskisv').Value :=
        FData.THESAP.FieldByName('SskMat').Value * FData.TKATSAY.FieldByName
        ('EmIsv').Value;
    End;
  end;
  FData.THESAPSskis.Value := RoundTo(FData.THESAPSskis.Value, -2);
  FData.THESAPSskisv.Value := RoundTo(FData.THESAPSskisv.Value, -2);
  If(FData.TDONEM.FieldByName('SskHes').AsString = 'H') or
    (FData.TSICIL.FieldByName('Sskk').AsString = 'H') Then
  Begin
    FData.THESAP.FieldByName('Sskis').Value := 0;
    FData.THESAP.FieldByName('SSkisv').Value := 0;
    FData.THESAP.FieldByName('SskMat').Value := 0;
  End;
  FData.THESAP.Post;
  FData.TSSK.Edit;
  FData.TSSK.FieldByName('Sski').AsString :=
    FData.TSICIL.FieldByName('Ilkssk').AsString;
  FData.TSSK.FieldByName('SskMat').Value := FData.TSSK.FieldByName('SskMat').Value
    + FData.THESAP.FieldByName('SskMat').Value;
  FData.TSSK.FieldByName('SskVer').Value := FData.TSSK.FieldByName('SskVer').Value
    + FData.THESAP.FieldByName('Sskisv').Value;
  FData.TSSK.FieldByName('SskV').Value := FData.TSSK.FieldByName('SskV').Value +
    FData.THESAP.FieldByName('Sskis').Value;
  FData.TSSK.FieldByName('Gec').Value := FData.TSSK.FieldByName('Gec').Value +
    FData.THESAP.FieldByName('Pkaz34').Value;
  FData.TSSK.FieldByName('Kef').Value := FData.TSSK.FieldByName('Kef').Value +
    FData.THESAP.FieldByName('Pkaz26').Value;
  FData.TSSK.FieldByName('Art').Value := FData.THESAP.FieldByName('Pkaz17').Value;
  if FData.TSICILOnce5510.AsBoolean = True then
  begin
    FData.TSSKTerfi1.AsString := FData.THESAPA1.AsString;
    FData.TSSKDer1.AsString := FData.THESAPKaz1.AsString;
    FData.TSSKKad1.AsString := FData.THESAPKaz2.AsString;
    FData.TSSKEkgos1.AsString := FData.THESAPKaz3.AsString;
    FData.TSSKTerfi2.AsString := FData.THESAPGun.AsString;
    FData.TSSKDer2.AsString := FData.THESAPIsMYS.AsString;
    FData.TSSKKad2.AsString := FData.THESAPISGSS.AsString;
    FData.TSSKEkgos2.AsString :=
      (((FData.TKATSAY.FieldByName('Katsayi').Value * FData.TKATSAY.FieldByName
      ('Mik').Value)* MaasOran) * (FData.TSICILKat.Value / 100));;
    FData.TSSKEkgos2.Value := RoundTo(FData.TSSKEkgos1.Value, -2);
    FData.TSSKDer3.AsString := FData.THESAPISVMYS.AsString;
    FData.TSSKKad3.AsString := FData.THESAPISVGSS.AsString;
    FData.TSSKEkgos3.AsString := FData.THESAPKaz3.AsString;
    FData.TSSKKidem.AsString := FData.THESAPA2.AsString;
    FData.TSSKGenSagKisi.AsString := FData.THESAPGenSagKisi.AsString;

    FData.TSSKGenSagKurum.AsString := FData.THESAPGenSagKurum.AsString;
    FData.TSSKOnce5510.Value := True;
  end
  else
  begin
    FData.TSSKTerfi1.AsString := FData.THESAPA1.AsString;
    FData.TSSKDer1.AsString := FData.THESAPKaz1.AsString;
    FData.TSSKKad1.AsString := FData.THESAPKaz2.AsString;
    FData.TSSKEkgos1.AsString := FData.THESAPKaz3.AsString;
    FData.TSSKTerfi2.AsString := FData.THESAPA1.AsString;
    FData.TSSKDer2.AsString := FData.THESAPKaz1.AsString;
    FData.TSSKKad2.AsString := FData.THESAPKaz2.AsString;
    FData.TSSKEkgos2.AsString := FData.THESAPKaz3.AsString;
    FData.TSSKKidem.AsString := FData.THESAPA2.AsString;
    FData.TSSKGenSagKisi.AsString := FData.THESAPGenSagKisi.AsString;
    FData.TSSKGenSagKurum.AsString := FData.THESAPGenSagKurum.AsString;
    FData.TSSKOnce5510.Value := False;
  end;
  FData.TSSK.Post;
End;

Function Gelir(t, m, m1, o1, o2: real): real; export;
var
  ss, st: real;
begin
  IF ( t + m) < m1 Then
  Gelir := m * o1
  else
  begin
    ss := ( t + m ) - m1;
    st :=  m - ss;
    Gelir := ( ss * o2 ) + ( st * o1);
  end;
end;

procedure TFHesap.GELHES;
var
  sak, vergiDilim: Currency;
begin
  FData.UniQGelir.Edit;
  FData.THESAP.Edit;
  FData.THESAP.FieldByName('GelirMat').Value :=
    FData.THESAP.FieldByName('GelirMat').Value -
    (FData.THESAP.FieldByName('Sskis').Value);
  If FData.THESAP.FieldByName('Kaz4').Value = 0 tHEN FData.THESAP.FieldByName
    ('GelirMat').Value := FData.THESAP.FieldByName('GelirMat').Value - sak
  else
  Begin
    FData.THESAP.FieldByName('GelirMat').Value :=
      FData.THESAP.FieldByName('GelirMat').Value -
      ((((FData.TKATSAY.FieldByName('Ozind').Value * FData.TSICIL.FieldByName
      ('Sak').Value) / 30) * FData.THESAP.FieldByName('Kaz4').Value));
  end;
  If FData.THESAP.FieldByName('GelirMat').Value < 0 THEN FData.THESAP.FieldByName
    ('GelirMat').Value := 0;
  FData.THESAPGelirMat.Value := RoundTo(FData.THESAPGelirMat.Value, -2);
  If FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik1').Value then
    vergiDilim := 0.15;
    FData.THESAP.FieldByName('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
    FData.THESAP.FieldByName('GelirMat').Value,
    FData.TKATSAY.FieldByName('GelirMik1').Value,
    FData.TKATSAY.FieldByName('Geliror1').Value,
    FData.TKATSAY.FieldByName('Geliror2').Value);
  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik2').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik1').Value)) then
    vergiDilim := 0.20;
    FData.THESAP.FieldByName
    ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
    FData.THESAP.FieldByName('GelirMat').Value,
    FData.TKATSAY.FieldByName('GelirMik2').Value,
    FData.TKATSAY.FieldByName('Geliror2').Value,
    FData.TKATSAY.FieldByName('Geliror3').Value);
  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik3').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik2').Value)) then
    vergiDilim := 0.27;
    FData.THESAP.FieldByName
    ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
    FData.THESAP.FieldByName('GelirMat').Value,
    FData.TKATSAY.FieldByName('GelirMik3').Value,
    FData.TKATSAY.FieldByName('Geliror3').Value,
    FData.TKATSAY.FieldByName('Geliror4').Value);
  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik4').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik3').Value)) then
    vergiDilim := 0.35;
    FData.THESAP.FieldByName
    ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
    FData.THESAP.FieldByName('GelirMat').Value,
    FData.TKATSAY.FieldByName('GelirMik4').Value,
    FData.TKATSAY.FieldByName('Geliror4').Value,
    FData.TKATSAY.FieldByName('Geliror5').Value);
  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik5').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik4').Value)) then
    vergiDilim := 0.40;
    FData.THESAP.FieldByName
    ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
    FData.THESAP.FieldByName('GelirMat').Value,
    FData.TKATSAY.FieldByName('GelirMik5').Value,
    FData.TKATSAY.FieldByName('Geliror5').Value,
    FData.TKATSAY.FieldByName('Geliror5').Value);
  FData.THESAPGelirVer.Value := RoundTo(FData.THESAPGelirVer.Value, -2);
  If(FData.TDONEM.FieldByName('GelirHes').AsString = 'H') or
    (FData.TSICIL.FieldByName('Gelirk').AsString = 'H') Then
  Begin
    FData.THESAP.FieldByName('GelirMat').Value := 0;
    FData.THESAP.FieldByName('GelirVer').Value := 0;
  End;
  FData.UniQGelir.FieldByName('Ad').Value := FData.TSICILAdi.Value;
  FData.UniQGelir.FieldByName('soy').Value := FData.TSICILSoyadi.Value;

  FData.UniQGelir.FieldByName('Gelirtop').Value :=
    FData.UniQGelir.FieldByName('Gelirtop').Value + FData.THESAP.FieldByName
    ('GelirMat').Value;
  FData.UniQGelir.FieldByName('Kumver').Value := FData.UniQGelir.FieldByName
    ('Kumver').Value + FData.THESAP.FieldByName('GelirVer').Value;

    Case FData.TSICIL.FieldByName('Sak').Value of
    1: sak := FData.TKATSAYOz1.Value;
    2: sak := FData.TKATSAYOz2.Value;
    3: sak := FData.TKATSAYOz3.Value;
  END;
  If FData.THESAP.FieldByName('Kaz4').Value = 0 tHEN
  begin
      FData.THESAP.FieldByName
      ('GelirMat').Value := FData.THESAP.FieldByName('GelirMat').Value - sak;
      FData.THESAPGelirVer.Value := ((FData.THESAP.FieldByName('GelirMat').Value - sak) * vergiDilim);
  end
  else
  Begin
    FData.THESAP.FieldByName('GelirMat').Value :=
      FData.THESAP.FieldByName('GelirMat').Value -
      ((((FData.TKATSAY.FieldByName('Ozind').Value * FData.TSICIL.FieldByName
      ('Sak').Value) / 30) * FData.THESAP.FieldByName('Kaz4').Value));
  end;
  FData.THESAP.Post;
  FData.UniQGelir.Post;

  if FData.TSICILGVIstisna.Value=true then
    VergiMuaf;

{  Case FData.TSICIL.FieldByName('Sak').Value of
    1: sak := FData.TKATSAYOz1.Value;
    2: sak := FData.TKATSAYOz2.Value;
    3: sak := FData.TKATSAYOz3.Value;
  END;
  FData.UniQGelir.Edit;
  FData.THESAP.Edit;
  FData.THESAPGelirVergisiMatrah.AsCurrency :=
    FData.THESAP.FieldByName('GelirMat').Value -
    FData.THESAP.FieldByName('Sskis').AsCurrency;
  FData.THESAP.FieldByName('GelirMat').Value :=
    FData.THESAP.FieldByName('GelirMat').Value -
    (FData.THESAP.FieldByName('Sskis').Value);
  FData.THESAP.FieldByName('GelirMat').Value :=
    FData.THESAP.FieldByName('GelirMat').Value -
    (FData.TKATSAYVergiMuaf.AsCurrency +
    FData.THESAP.FieldByName('Sskis').AsCurrency);

  If FData.THESAP.FieldByName('Kaz4').Value = 0 tHEN FData.THESAP.FieldByName
    ('GelirMat').Value := FData.THESAP.FieldByName('GelirMat').Value - sak
  else
  Begin
    FData.THESAP.FieldByName('GelirMat').Value :=
      FData.THESAP.FieldByName('GelirMat').Value -
      ((((FData.TKATSAY.FieldByName('Ozind').Value * FData.TSICIL.FieldByName
      ('Sak').Value) / 30) * FData.THESAP.FieldByName('Kaz4').Value));
  end;
  If FData.THESAP.FieldByName('GelirMat').Value < 0 THEN
    FData.THESAP.FieldByName('GelirMat').Value := 0;
  FData.THESAPGelirMat.Value := RoundTo(FData.THESAPGelirMat.Value, -2);
  If FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik1').Value then
  begin
    FData.THESAP.FieldByName('GelirVer').Value :=
      Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
        FData.THESAP.FieldByName('GelirMat').Value,
        FData.TKATSAY.FieldByName('GelirMik1').Value,
        FData.TKATSAY.FieldByName('Geliror1').Value,
        FData.TKATSAY.FieldByName('Geliror2').Value);

//    FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency :=
//      RoundTo(FData.TKATSAYVergiMuaf.AsCurrency *
//      FData.TKATSAYGeliror1.AsCurrency, -2);
  end;
  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik2').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik1').Value)) then
  begin
    FData.THESAP.FieldByName('GelirVer').Value :=
      Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik2').Value,
      FData.TKATSAY.FieldByName('Geliror2').Value,
      FData.TKATSAY.FieldByName('Geliror3').Value);

//    FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency :=
//      RoundTo(FData.TKATSAYVergiMuaf.AsCurrency *
//      FData.TKATSAYGeliror2.AsCurrency, -2);
  end;

  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik3').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik2').Value)) then
  begin
    FData.THESAP.FieldByName('GelirVer').Value :=
    Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik3').Value,
      FData.TKATSAY.FieldByName('Geliror3').Value,
      FData.TKATSAY.FieldByName('Geliror4').Value);

//    FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency :=
//      RoundTo(FData.TKATSAYVergiMuaf.AsCurrency *
//      FData.TKATSAYGeliror3.AsCurrency, -2);
  end;

  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik4').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik3').Value)) then
  begin
    FData.THESAP.FieldByName('GelirVer').Value :=
      Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
        FData.THESAP.FieldByName('GelirMat').Value,
        FData.TKATSAY.FieldByName('GelirMik4').Value,
        FData.TKATSAY.FieldByName('Geliror4').Value,
        FData.TKATSAY.FieldByName('Geliror5').Value);

//    FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency :=
//      RoundTo(FData.TKATSAYVergiMuaf.AsCurrency *
//      FData.TKATSAYGeliror4.AsCurrency, -2);
  end;

  If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
    ('GelirMik5').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
    FData.TKATSAY.FieldByName('GelirMik4').Value)) then
  begin
    FData.THESAP.FieldByName('GelirVer').Value :=
      Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik5').Value,
      FData.TKATSAY.FieldByName('Geliror5').Value,
      FData.TKATSAY.FieldByName('Geliror5').Value);
    FData.THESAPGelirVer.Value := RoundTo(FData.THESAPGelirVer.Value, -2);

//    FData.THESAP.FieldByName('GelirVergisiMahsup').AsCurrency :=
//      RoundTo(FData.TKATSAYVergiMuaf.AsCurrency *
//      FData.TKATSAYGeliror5.AsCurrency, -2);
  end;

  If(FData.TDONEM.FieldByName('GelirHes').AsString = 'H') or
    (FData.TSICIL.FieldByName('Gelirk').AsString = 'H') Then
  Begin
    FData.THESAP.FieldByName('GelirMat').Value := 0;
    FData.THESAP.FieldByName('GelirVer').Value := 0;
  End;
  FData.UniQGelir.FieldByName('Ad').Value := FData.TSICILAdi.Value;
  FData.UniQGelir.FieldByName('soy').Value := FData.TSICILSoyadi.Value;

  FData.UniQGelir.FieldByName('Gelirtop').Value :=
    FData.UniQGelir.FieldByName('Gelirtop').Value + FData.THESAP.FieldByName
    ('GelirMat').Value;
  FData.UniQGelir.FieldByName('Kumver').Value := FData.UniQGelir.FieldByName
    ('Kumver').Value + FData.THESAP.FieldByName('GelirVergisiMatrah').Value;
  FData.THESAP.Post;
  FData.UniQGelir.Post;
  VergiMuaf;  }
end;

procedure TFHesap.GELHES1;
var
  sak: Currency;
begin
  with FData do
  begin
    Case TSICIL.FieldByName('Sak').Value of
      0: sak := TKATSAY.FieldByName('Ozind').Value;
      1: sak := TKatoran.Fields[0].Value;
      2: sak := TKatoran.Fields[1].Value;
      3: sak := TKatoran.Fields[2].Value;
    end;
    UniQGelir.Edit;
    THESAP.Edit;
    If THESAP.FieldByName('Kaz4').Value = 0 tHEN THESAP.FieldByName('GelirMat')
      .Value := THESAP.FieldByName('GelirMat').Value - sak
    else
    Begin
      THESAP.FieldByName('GelirMat').Value := THESAP.FieldByName('GelirMat').Value
        - ((((TKATSAY.FieldByName('Ozind').Value * TSICIL.FieldByName('Sak')
        .Value) / 30) * THESAP.FieldByName('Kaz4').Value));
    End;
    If THESAP.FieldByName('GelirMat').Value < 0
    THEN THESAP.FieldByName('GelirMat').Value := 0;
    THESAPGelirMat.Value := RoundTo(THESAPGelirMat.Value, -2);
    If FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
      ('GelirMik1').Value then FData.THESAP.FieldByName('GelirVer').Value :=
      Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik1').Value,
      FData.TKATSAY.FieldByName('Geliror1').Value,
      FData.TKATSAY.FieldByName('Geliror2').Value);
    If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
      ('GelirMik2').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
      FData.TKATSAY.FieldByName('GelirMik1').Value)) then FData.THESAP.FieldByName
      ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik2').Value,
      FData.TKATSAY.FieldByName('Geliror2').Value,
      FData.TKATSAY.FieldByName('Geliror3').Value);
    If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
      ('GelirMik3').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
      FData.TKATSAY.FieldByName('GelirMik2').Value)) then FData.THESAP.FieldByName
      ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik3').Value,
      FData.TKATSAY.FieldByName('Geliror3').Value,
      FData.TKATSAY.FieldByName('Geliror4').Value);
    If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
      ('GelirMik4').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
      FData.TKATSAY.FieldByName('GelirMik3').Value)) then FData.THESAP.FieldByName
      ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik4').Value,
      FData.TKATSAY.FieldByName('Geliror4').Value,
      FData.TKATSAY.FieldByName('Geliror5').Value);
    If((FData.THESAP.FieldByName('YilGelirMat').Value < FData.TKATSAY.FieldByName
      ('GelirMik5').Value) and (FData.THESAP.FieldByName('YilGelirMat').Value >
      FData.TKATSAY.FieldByName('GelirMik4').Value)) then FData.THESAP.FieldByName
      ('GelirVer').Value := Gelir(FData.THESAP.FieldByName('YilGelirMat').Value,
      FData.THESAP.FieldByName('GelirMat').Value,
      FData.TKATSAY.FieldByName('GelirMik5').Value,
      FData.TKATSAY.FieldByName('Geliror5').Value,
      FData.TKATSAY.FieldByName('Geliror5').Value);
    FData.THESAPGelirVer.Value := RoundTo(FData.THESAPGelirVer.Value, -2);
    If(TDONEM.FieldByName('GelirHes').AsString = 'H') or
      (TSICIL.FieldByName('Gelirk').AsString = 'H') Then
    Begin
      THESAP.FieldByName('GelirMat').Value := 0;
      THESAP.FieldByName('GelirVer').Value := 0;
    End;
    UniQGelir.FieldByName('Gelirtop').Value := UniQGelir.FieldByName('Gelirtop')
      .Value + THESAP.FieldByName('GelirMat').Value;
    UniQGelir.FieldByName('Kumver').Value := UniQGelir.FieldByName('Kumver').Value
      + THESAP.FieldByName('GelirVer').Value;
    THESAP.Post;
    UniQGelir.Post;
  end;
end;

procedure TFHesap.YASKE;
var
  GelirVergisi: Currency;
begin
  GelirVergisi := FData.THESAP.FieldByName('GelirVer').Value -
     FData.THESAPGelirVergisiMahsup.AsCurrency;
  if GelirVergisi < 0  then
    GelirVergisi := 0;
  FData.THESAP.Edit;
  FData.THESAP.FieldByName('BrutGelir').Value :=
    FData.THESAP.FieldByName('BrutGelir').Value + FData.THESAP.FieldByName
    ('Sskisv').Value + FData.THESAPGenSagKisi.Value +
    FData.THESAPGenSagKurum.Value;
  FData.THESAP.FieldByName('YasalKes').Value := 0;
  FData.THESAP.FieldByName('YasalKes').Value :=
    FData.THESAP.FieldByName('GelirVer').Value + //   vergi isisna tutarý düþülüyor
   // GelirVergisi +
    FData.THESAP.FieldByName('DamVer').Value +
    FData.THESAP.FieldByName('Sskis').Value
    + FData.THESAP.FieldByName('Sskisv').Value + FData.THESAPGenSagKisi.Value
    + FData.THESAPGenSagKurum.Value;
  FData.THESAP.FieldByName('NetKes').Value := RoundTo(
    FData.THESAP.FieldByName('YasalKes').Value + FData.THESAP.FieldByName
    ('OzelKes').Value, -2);
  FData.THESAP.FieldByName('Net').Value := FData.THESAP.FieldByName('BrutGelir')
    .Value - FData.THESAP.FieldByName('NetKes').Value;
  if FData.TKATSAYGecOdemeFarki.AsCurrency > 0 then
  begin
    FData.THESAPPkaz21.AsCurrency := FData.THESAPNet.AsCurrency *
      FData.TKATSAYGecOdemeFarki.Value;
    FData.THESAPPkaz21.Value := RoundTo(FData.THESAPPkaz21.Value, -2);
    FData.THESAPBrutGelir.AsCurrency := FData.THESAPBrutGelir.AsCurrency +
      FData.THESAPPkaz21.AsCurrency;
    FData.THESAPNet.AsCurrency := FData.THESAPNet.AsCurrency +
      FData.THESAPPkaz21.AsCurrency;
  end;
  FData.THESAP.Post;
end;

procedure TFHesap.DamIsz;
Begin
  FData.THESAP.Edit;
   FData.THESAPDamgaVergisiMahsup.AsCurrency :=0;
  if FData.TSICILGVIstisna.Value then
  begin
    FData.THESAPDamgaVergisiMahsup.AsCurrency := RoundTo(
    FData.TKATSAYDamgaMuaf.AsCurrency * FData.TKATSAYDamor.AsFloat, -2);
   FData.THESAPDamMat.Value := RoundTo((FData.THESAPDamMat.AsCurrency -
    FData.TKATSAYDamgaMuaf.AsCurrency), -2);
  end;
  if FData.THESAPDamMat.AsCurrency < 0 then
    FData.THESAPDamMat.AsCurrency := 0;
  FData.THESAPDamVer.Value := 0;
  FData.THESAPDamVer.Value := FData.THESAPDamMat.Value *
    FData.TKATSAY.FieldByName('Damor').Value;
  FData.THESAPDamVer.Value := RoundTo(FData.THESAPDamVer.Value, -2);
  If(FData.TDONEM.FieldByName('DamHes').AsString = 'H') or
    (FData.TSICIL.FieldByName('Damk').AsString = 'H') Then
  begin
    FData.THESAPDamVer.Value := 0;
    FData.THESAPDamMat.Value := 0;
  end;
End;

procedure TFHesap.KayitClick(Sender: TObject);
begin
  with FData do
  begin
    If(TSICIL.FieldByName('Ciktar').Value >= TDONEM.FieldByName('Ilktar').Value)
      or (TSICIL.FieldByName('Ciktar').AsString = '') then
    Begin
      If(TSICIL.FieldByName('Isgirtar').Value <= TDONEM.FieldByName('Sontar')
        .Value) or (TSICIL.FieldByName('Isgirtar').AsString = '') then
        kayit1
      else
        ShowMessage('Bu Kiþinin Giriþi Yapýlmamýþ');
    end
    else
    begin
      ShowMessage('Bu Kiþinin Çýkýþý Verilmiþtir.');
      Arama;
    end;
  end;
end;

procedure TFHesap.MaasSil(Sicil: Integer; Yil, Ay, Donem: string);
begin
  FData.QAskerHesap.Params[0].AsInteger := Sicil;
  FData.QAskerHesap.Params[1].AsString := Yil;
  FData.QAskerHesap.Params[2].AsString := Ay;
  FData.QAskerHesap.Params[3].AsString := Donem;
  FData.QAskerHesap.Execute;
  FData.THESAP.Refresh;
end;

function TFHesap.NakdiKumanya(Sicil: Integer; Ay, Donem: String): Currency;
begin
  FData.QKumanya.Close;
  FData.QKumanya.Params[0].AsInteger := FData.THESAPSicno.AsInteger;
  FData.QKumanya.Params[1].AsString := FData.THESAPAy.AsString;
  FData.QKumanya.Params[2].AsString := FData.THESAPDonem.AsString;
  FData.QKumanya.Open;
  Result := FData.QKumanyaKumanya.AsCurrency;
end;

function TFHesap.NakdiSgk(Sicil: Integer; Ay: String): Currency;
begin
  FData.QNakdiSgk.Close;
  FData.QNakdiSgk.Params[0].AsInteger := FData.THESAPSicno.AsInteger;
  FData.QNakdiSgk.Params[1].AsString := FData.THESAPAy.AsString;
  FData.QNakdiSgk.Open;
  Result := FData.QNakdiSgkSgkMat.AsCurrency;
end;

procedure TFHesap.kayit1;
begin
  with FData do
  begin
    THESAP.Append;
    THESAP.FieldByName('SicNo').AsString := TSICIL.FieldByName('Sicno').AsString;
    THESAP.FieldByName('Yil').AsString := TDONEM.FieldByName('Yil').AsString;
    THESAP.FieldByName('Ay').AsString := TDONEM.FieldByName('Ay').AsString;
    THESAP.FieldByName('Donem').AsString := TDONEM.FieldByName('Donem')   .AsString;
    THESAP.FieldByName('Dair').AsString := TSICIL.FieldByName('Dair').AsString;
    FData.QGelirVer.Close;
    FData.QGelirVer.Params[0].AsInteger:= TSICIL.FieldByName('Sicno').AsInteger;
    FData.QGelirVer.Open;
    UniQGelir.Refresh;
    THESAP.FieldByName('YilGelirMat').Value := FData.QGelirVerGelirMat.AsCurrency;
    FData.QGelirVer.Close;
    THESAP.FieldByName('Adi').AsString := TSICIL.FieldByName('Adi').AsString;
    THESAP.FieldByName('Soyadi').AsString :=
      TSICIL.FieldByName('Soyadi').AsString;
    THESAP.FieldByName('kaz1').Value := 0;
    THESAP.FieldByName('kaz2').Value := 0;
    THESAP.Post;
    THESAP.Close;
    THESAP.Open;
    Panel2.Visible := False;
    HesaptBt.Enabled := True;
    Toplu.Enabled := True;
    Silme.Enabled := True;
    HesaptBt.SetFocus;
  end;
end;

procedure TFHesap.VazgecClick(Sender: TObject);
begin
  Close;
end;

procedure TFHesap.VergiMuaf;
var
  VergiIstisna, VergiTutari,IstisnaMatrah: Currency;
begin

 { FData.QVergiIstisna.Close;
  FData.QVergiIstisna.Params[0].AsString := FData.TDONEM.FieldByName('Ay').AsString;
  FData.QVergiIstisna.Params[1].AsString := FData.TDONEM.FieldByName('Donem').AsString;
  FData.QVergiIstisna.Params[2].AsInteger := FData.THESAPSicno.AsInteger;
  FData.QVergiIstisna.Open;
  VergiIstisna := FData.QVergiIstisnaGVIstisna.AsCurrency;
  if FData.THESAPGelirVer.AsCurrency < VergiIstisna then
    VergiIstisna := FData.THESAPGelirVer.AsCurrency;
  VergiTutari := FData.THESAPGelirVer.AsCurrency - VergiIstisna;
  if VergiTutari < 0  then
    VergiTutari := 0;          }

  FData.THESAP.Edit;


  FData.QVergiIstisna1.Close;
  FData.QVergiIstisna1.ParamByName('Yil').AsInteger := FData.TDONEMYil.AsInteger;
  FData.QVergiIstisna1.ParamByName('Sicno').AsInteger := FData.THESAPSicno.AsInteger;
  //FData.QVergiIstisna1.ParamByName('Ay').AsInteger := FData.THESAPAy.AsInteger;
  FData.QVergiIstisna1.Open;
  IstisnaMatrah:=FData.QVergiIstisna1IstisnaMatrah.AsCurrency;

  FData.THESAPIstisnaMatrah.Value:=FData.TKATSAYVergiMuaf.Value;

    If IstisnaMatrah < FData.TKATSAY.FieldByName('GelirMik1').value then
     VergiTutari:=Gelir(IstisnaMatrah,
     FData.THESAPIstisnaMatrah.Value,FData.TKATSAY.FieldByName('GelirMik1').value,
     FData.TKATSAY.FieldByName('Geliror1').value, FData.TKATSAY.FieldByName('Geliror2').value);
    If ((IstisnaMatrah < FData.TKATSAY.FieldByName('GelirMik2').value) and
     (IstisnaMatrah > FData.TKATSAY.FieldByName('GelirMik1').value)) then
       VergiTutari:=Gelir(IstisnaMatrah,
       FData.THESAPIstisnaMatrah.Value,FData.TKATSAY.FieldByName('GelirMik2').value,
       FData.TKATSAY.FieldByName('Geliror2').value, FData.TKATSAY.FieldByName('Geliror3').value);





  FData.THESAPGelirVergisiMatrah.AsCurrency := FData.THESAPGelirMat.AsCurrency;

 if VergiTutari>FData.THESAPGelirVer.AsCurrency then
  begin
     FData.THESAPIstisnaMatrah.AsCurrency := FData.THESAPGelirMat.AsCurrency;
     VergiTutari:=FData.THESAPGelirVer.AsCurrency;
  end;


  FData.THESAPGelirVergisiMahsup.AsCurrency := VergiTutari;

//    FData.TKATSAYVergiMuaf.AsCurrency;
  FData.THESAPGelirVer.AsCurrency := FData.THESAPGelirVer.AsCurrency-VergiTutari;



 // FData.THESAPGelirVergisiMahsup.AsCurrency := VergiIstisna;
//  FData.THESAPGelirVergisiMatrah.AsCurrency := FData.THESAPGelirMat.AsCurrency + FData.TKATSAYVergiMuaf.AsCurrency;
//  FData.THESAPGelirMat.AsCurrency := FData.THESAPGelirMat.AsCurrency - FData.TKATSAYVergiMuaf.AsCurrency;
 // FData.THESAPGelirVer.AsCurrency := VergiTutari;
  if FData.THESAPGelirMat.AsCurrency < 0 then
    FData.THESAPGelirMat.AsCurrency := 0;
  FData.THESAP.Post;
end;

procedure TFHesap.Gos;
begin
  Case kat of
    1: kat := FData.TGOS1.FieldByName('K1').Value;
    2: kat := FData.TGOS1.FieldByName('K2').Value;
    3: kat := FData.TGOS1.FieldByName('K3').Value;
    4: kat := FData.TGOS1.FieldByName('K4').Value;
    5: kat := FData.TGOS1.FieldByName('K5').Value;
    6: kat := FData.TGOS1.FieldByName('K6').Value;
    7: kat := FData.TGOS1.FieldByName('K7').Value;
    8: kat := FData.TGOS1.FieldByName('K8').Value;
    9: kat := FData.TGOS1.FieldByName('K9').Value;
  end;
end;

procedure TFHesap.SilmeClick(Sender: TObject);
begin
  if messagebox(handle, 'Bu Kaydý Silmek Ýstiyor musunuz?', 'DÝKKAT',
    mb_YesNo + mb_iconquestion) <> mrNo then
  Begin
    SSkHES0;
    GELHES0;
    FData.THESAP.Delete;
    Panel2.Visible := False;
    FData.TSICIL.Prior;
    Arama
  end;
end;

procedure TFHesap.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_Return) Then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFHesap.DBEdit3Exit(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    If(FData.THESAP.FieldByName('Kaz4').Value <> 0) and
      (FData.THESAPKaz13.Value <> 0) then
    begin
      if FData.TKATSAY.FieldByName('Fazme').Value = 0 then
      begin
        FData.THESAP.Edit;
        FData.THESAP.FieldByName('Pkaz3').Value :=
          ((FData.TKATSAYKatsayi.Value * MaasOran)*
           ((FData.THESAP.FieldByName('Kaz4').Value
          / FData.THESAPKaz13.Value) * (FData.TKatoranA19.Value / 90)));
        FData.THESAP.Post;
      end
      else
      begin
        FData.THESAP.Edit;
        FData.THESAP.FieldByName('Pkaz3').Value := FData.TKATSAYFazme.Value *
          (FData.THESAP.FieldByName('Kaz4').Value / FData.THESAPKaz13.Value);
        FData.THESAP.Post;
      end;
    end;
  end;
end;

procedure TFHesap.PEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_Return) Then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFHesap.DBEdit1Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.THESAP.Edit;
    DBEdit1.Field.Value := FData.TSICIL.FieldByName('Der').Value;
    FData.THESAP.Post;
  end;
end;

procedure TFHesap.DBEdit27Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.THESAP.Edit;
    DBEdit27.Field.Value := FData.TSICIL.FieldByName('Kad').Value;
    FData.THESAP.Post;
  end;
end;

procedure TFHesap.DBEdit2Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.THESAP.Edit;
    DBEdit2.Field.Value := FData.TSICIL.FieldByName('EkGos').Value;
    FData.THESAP.Post;
  end;
end;

procedure TFHesap.DBEdit6Exit(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.THESAP.Edit;
    If FData.THESAP.FieldByName('Kaz6').Value > 0
    then
    begin
      FData.THESAP.FieldByName('Pkaz5').Value :=
      FData.THESAP.FieldByName('Kaz6').Value * FData.TSICIL.FieldByName
      ('Yemeky').Value;
    end
    else
        FData.THESAP.FieldByName('Pkaz5').Value := 0;
    FData.THESAP.Post;
  end;
end;

procedure TFHesap.DBEdit4Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    with FData do
    begin
      THESAP.Edit;
      If(TSICIL.FieldByName('Ttar').AsDateTime >= TDONEM.FieldByName('Ilktar')
        .AsDateTime) and (TSICIL.FieldByName('Ttar').AsDateTime <=
        TDONEM.FieldByName('Sontar').AsDateTime) Then THESAP.FieldByName('Kaz7')
        .Value := TSICIL.FieldByName('Tder').Value
      else
        THESAP.FieldByName('Kaz7').Value := TSICIL.FieldByName('Mder').Value;
      THESAP.Post;
    end;
  end;
End;

procedure TFHesap.DBEdit7Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    with FData do
    begin
      THESAP.Edit;
      If(TSICIL.FieldByName('Ttar').AsDateTime >= TDONEM.FieldByName('Ilktar')
        .AsDateTime) and (TSICIL.FieldByName('Ttar').AsDateTime <=
        TDONEM.FieldByName('Sontar').AsDateTime) Then THESAP.FieldByName('Kaz8')
        .Value := TSICIL.FieldByName('Tkad').Value
      Else
        THESAP.FieldByName('Kaz8').Value := TSICIL.FieldByName('Mkad').Value;
      THESAP.Post;
    end;
  end;
End;

procedure TFHesap.DBEdit8Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    with FData do
    begin
      THESAP.Edit;
      If(TSICIL.FieldByName('Ttar').AsDateTime >= TDONEM.FieldByName('Ilktar')
        .AsDateTime) and (TSICIL.FieldByName('Ttar').AsDateTime <=
        TDONEM.FieldByName('Sontar').AsDateTime) Then
        THESAP.FieldByName('Kaz9').Value := TSICIL.FieldByName('TekGos').Value
      else
        THESAP.FieldByName('Kaz9').Value := TSICIL.FieldByName('MekGos').Value;
      THESAP.Post;
    end;
  end;
end;

procedure TFHesap.DBEdit8Exit(Sender: TObject);
begin
  with FData do
  begin
    THESAP.Edit;
    THESAP.FieldByName('Pkaz2').Value := (THESAP.FieldByName('Kaz9').Value *
      TKATSAY.FieldByName('Katsayi').Value)* MaasOran;
  end;
end;

procedure TFHesap.Edit26Enter(Sender: TObject);
begin
  with FData do
  begin
    THESAP.Edit;
    TSICIL.Edit;
    TSICIL.FieldByName('Keft').Value := TSICIL.FieldByName('Keft').Value -
      THESAP.FieldByName('Pkaz26').Value;
    If TSICIL.FieldByName('Kef').AsString = 'E' then
    begin
      THESAP.FieldByName('Pkaz26').Value := TKATSAY.FieldByName('Kef2').Value *
        THESAP.FieldByName('PKaz1').Value;
    End;
    THESAPPkaz26.Value := RoundTo(THESAPPkaz26.Value, -2);
    TSICIL.Post;
    THESAP.Post;
  end;
end;

procedure TFHesap.DBEdit7Exit(Sender: TObject);
begin
// If HesaptBt.Enabled = True then
//
//  begin
//    with FData do
//    begin
////       TGOS1.SetKey;
//      TGOS1.FieldByName('Der').AsString := THESAP.FieldByName('Kaz7').Value;
////       TGOS1.GotoKey;
//      kat := THESAP.FieldByName('Kaz8').Value;
//      Gos;
//      THESAP.Edit;
//      THESAP.FieldByName('Pkaz1').Value := TKATSAY.FieldByName('Katsayi')
//        .Value * kat;
//      Case TSICIL.FieldByName('Vekor').Value of
//        1:
//          THESAP.FieldByName('Pkaz1').Value :=
//            (THESAP.FieldByName('Pkaz1').Value / 3) * 1;
//        2:
//          THESAP.FieldByName('Pkaz1').Value :=
//            (THESAP.FieldByName('Pkaz1').Value / 3) * 2;
//        3:
//          THESAP.FieldByName('Pkaz1').Value :=
//            (THESAP.FieldByName('Pkaz1').Value / 3) * 2;
//      End;
//      Fark := kat;
//      THESAP.Post;
//    End;
//  end;
end;

procedure TFHesap.DBEdit9Exit(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    MaasOran := FData.TSICILMaasOran.AsCurrency / 3;
    with FData do
    begin
        FData.THESAP.Edit;
        FData.THESAP.FieldByName('Pkaz6').AsFloat := 0;
        FData.THESAP.FieldByName('Pkaz6').AsFloat :=
          (((FData.TKatoranA19.AsFloat * FData.TKATSAYKatsayi.AsFloat ) / 30 ) *
          FData.THESAPkaz10.AsCurrency )* MaasOran;
        FData.THESAP.Post;
    end;
  end;
end;

procedure TFHesap.DBEdit10Enter(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.TSICIL.Edit;
    FData.TSICIL.FieldByName('Rap').Value := FData.TSICIL.FieldByName('Rap')
      .Value - FData.THESAP.FieldByName('Kaz11').Value;
  end;
end;

procedure TFHesap.DBEdit10Exit(Sender: TObject);
begin
  If HesaptBt.Enabled = True then
  begin
    FData.TSICIL.FieldByName('Rap').Value := FData.TSICIL.FieldByName('Rap')
      .Value + FData.THESAP.FieldByName('Kaz11').Value;
    // FData.TSICIL.post;
  end;
End;

procedure TFHesap.FormCreate(Sender: TObject);
begin
  Arama;
end;

procedure TFHesap.TopluClick(Sender: TObject);
begin
  with TFTopHesap.Create(Self) do
    try
      ShowModal;
    finally
    end;
  Arama;
end;

procedure TFHesap.BesKesinti(Oran: Currency);
var
  BesKes: Currency;
begin
  if Oran > 0 then
  begin
    BesKes := Floor((FData.THESAPSskMat.AsCurrency * Oran ) / 100);
    FData.THESAP.Edit;
    FData.THESAPPkaz41.AsFloat := BesKes;
    FData.THESAPNet.value := FData.THESAPBrutGelir.value -
      (FData.THESAPNetKes.value + BesKes);
    FData.THESAPNetKes.AsFloat := FData.THESAPNetKes.AsFloat + BesKes;
    FData.THESAPYasalKes.AsCurrency := FData.THESAPYasalKes.AsCurrency + BesKes;
    FData.THESAP.Post;
  end;
end;

procedure TFHesap.BitBtn1Click(Sender: TObject);
begin
  with TFSicilAra.Create(Self) do
    try
      ShowModal;
    finally
    end;
  Arama;
end;

procedure TFHesap.BitBtn4Click(Sender: TObject);
begin
  with TFSicil.Create(Self) do
    try
      ShowModal;
    finally
    end;
  Arama;
end;

procedure TFHesap.DBEdit5Exit(Sender: TObject);
begin
  If(FData.THESAP.FieldByName('Kaz5').Value <> 0) and
  (FData.THESAPKaz14.Value <> 0) then
  begin
    FData.THESAP.Edit;
    If(FData.TSICILDirp.Value = 0) Then
    begin
      If(FData.TSICILSskk.Value <> 'H') Then
        FData.THESAP.FieldByName('Pkaz24').Value :=
          ((FData.TKATSAYKatsayi.Value * MaasOran) *
          (FData.THESAP.FieldByName('Kaz5').Value * FData.TKatoranA18.Value) /
          FData.THESAPKaz14.Value / 2)
      else
        FData.THESAP.FieldByName('Pkaz24').Value :=
          ((FData.TKATSAYKatsayi.Value * MaasOran) *
          (FData.THESAP.FieldByName('Kaz5').Value *  FData.TKatoranA18.Value) /
          FData.THESAPKaz14.Value);
    end
    else
      FData.THESAP.FieldByName('Pkaz24').Value :=
        ((FData.TKATSAYKatsayi.Value * MaasOran)*
        (FData.THESAP.FieldByName('Kaz5').Value * FData.TKatoranA18.Value) /
        FData.THESAPKaz14.Value);
        FData.THESAP.Post;
  end;
end;

end.
