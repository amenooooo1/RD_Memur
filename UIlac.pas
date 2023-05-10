unit UIlac;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,  DBAccess, MemDS, Buttons,
  Grids, DBGrids, frxExportRTF, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Uni;

type
  TFIlac = class(TForm)
    QuickRep1 : TQuickRep;
    TitleBand1 : TQRBand;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    QRLabel2 : TQRLabel;
    QRLabel4 : TQRLabel;
    QRLabel5 : TQRLabel;
    QRLabel6 : TQRLabel;
    Query2: TUniQuery;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    Vazgec: TBitBtn;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    HazirBt: TBitBtn;
    YaziBt: TBitBtn;
    DataSource1: TDataSource;
    Table1: TUniTable;
    DataSource2: TDataSource;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    DBGrid1: TDBGrid;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    Query1: TUniQuery;
    DataSource3: TDataSource;
    Table2: TUniTable;
    DataSource4: TDataSource;
    BitBtn1: TBitBtn;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel15: TQRLabel;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand5: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    UniQuery1: TUniQuery;
    Table1Sira: TIntegerField;
    Table1Sicno: TIntegerField;
    Table1Adsoy: TWideStringField;
    Table1Banhes: TWideStringField;
    Table1Net: TFloatField;
    Table2No: TIntegerField;
    Table2Ad: TWideStringField;
    Table2Tutar: TFloatField;
    Query1Yil: TWideStringField;
    Query1Ay: TWideStringField;
    Query1Donem: TWideStringField;
    Query1Sicno: TIntegerField;
    Query1Pka1: TFloatField;
    Query1Pka2: TFloatField;
    Query1Pka3: TFloatField;
    Query1Pka4: TFloatField;
    Query1Pka5: TFloatField;
    Query1Pka6: TFloatField;
    Query1Pka7: TFloatField;
    Query1Pka8: TFloatField;
    Query1Pka9: TFloatField;
    Query1Pka10: TFloatField;
    Query1Pka11: TFloatField;
    Query1Pka12: TFloatField;
    Query1Pka13: TFloatField;
    Query1Pka14: TFloatField;
    Query1Pka15: TFloatField;
    Query1Pka16: TFloatField;
    Query1Pka17: TFloatField;
    Query1Pka18: TFloatField;
    Query1Pka19: TFloatField;
    Query1Pka20: TFloatField;
    Query1A1: TWideStringField;
    Query1A2: TWideStringField;
    Query1A3: TWideStringField;
    Query1A4: TWideStringField;
    Query1A5: TWideStringField;
    Query1A6: TWideStringField;
    Query1A7: TWideStringField;
    Query1A8: TWideStringField;
    Query1A9: TWideStringField;
    Query1A10: TWideStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure HazirBtClick(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  end;

var
  FIlac: TFIlac;
  i:integer;
implementation

uses UData;

{$R *.DFM}



procedure TFIlac.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=chr(Vk_Return)Then Perform (WM_NEXTDLGCTL,0,0);
end;









procedure TFIlac.VazgecClick(Sender: TObject);
begin
Close;
end;


procedure TFIlac.YaziBtClick(Sender: TObject);
var ayy:string;
begin
 (frxReport1.FindObject('memo16') as TfrxMemoView).Text:=Caption ;

 Case  StrToInt(Edit2.Text)     of
    1: ayy:=FData.UniAcilisCalYilname.value+' OCAK';
    2: ayy:=FData.UniAcilisCalYilname.value+' SUBAT';
    3: ayy:=FData.UniAcilisCalYilname.value+' MART';
    4: ayy:=FData.UniAcilisCalYilname.value+' NÝSAN';
    5: ayy:=FData.UniAcilisCalYilname.value+' MAYIS';
    6: ayy:=FData.UniAcilisCalYilname.value+' HAZÝRAN';
    7: ayy:=FData.UniAcilisCalYilname.value+' TEMMUZ';
    8: ayy:=FData.UniAcilisCalYilname.value+' AÐUSTOS';
    9: ayy:=FData.UniAcilisCalYilname.value+' EYLÜL';
    10: ayy:=FData.UniAcilisCalYilname.value+' EKÝM';
    11: ayy:=FData.UniAcilisCalYilname.value+' KASIM';
    12: ayy:=FData.UniAcilisCalYilname.value+' ARALIK';
   end;
   (frxReport1.FindObject('memo17') as TfrxMemoView).Text:=ayy ;

//QuickRep1.Preview ;
  frxReport1.ShowReport;
end;


procedure TFIlac.HazirBtClick(Sender: TObject);
begin
 i:=0;
  Query2.Close;
  Query2.ParamByName('ay').Asstring:=Edit2.Text;
  Query2.ParamByName('t1').Value:=StrToInt(Edit3.Text);
  Query2.ParamByName('t2').Value:=StrToInt(Edit4.Text);
  Query2.Open;
  Table1.Close;

  UniQuery1.Execute;
 Table1.Open;
Query2.First;
while not Query2.eof do
 begin
 if not (Table1.Locate('Sicno', Query2.FieldByName('Sicno').value,[loPartialKey])) then
 Begin
  i:=i+1;
  Table1.Insert;
  Table1.FieldByName('sira').value:=i;
  Table1.FieldByName('Sicno').value:=Query2.FieldByName('Sicno').value;
  Table1.FieldByName('adsoy').asstring:=Query2.FieldByName('Adi').asstring+' ' +
  Query2.FieldByName('Soyadi').asstring;
  Table1.FieldByName('Banhes').value:=Query2.FieldByName('SskNo').value;
  Table1.FieldByName('Net').value:=Query2.FieldByName('Pkaz40').value;

  Table1.Post;
 end else
 begin
  Table1.Edit;
  Table1.FieldByName('Net').value:=Table1.FieldByName('Net').AsCurrency+
  Query2.FieldByName('Pkaz40').value;
  Table1.Post;
 end;
 Query2.Next;
 Query1.Close;
Query1.ParamByName('aa').AsString:=Edit2.Text;
Query1.Open;
Table2.First;
while not Table2.Eof do
 begin
 Table2.Edit;
 Table2Tutar.Value:=0;
 Table2.Next;
end;
while not Query1.Eof do
 begin
  If Query1Pka1.Value<>0 then
  begin
   Table2.Locate('No',1,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka1.AsCurrency;
   Table2.Post;
  end;
  If Query1Pka2.Value<>0 then
  begin
   Table2.Locate('No',2,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka2.AsCurrency;
   Table2.Post;
  end;
  If Query1Pka3.Value<>0 then
  begin
   Table2.Locate('No',3,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka3.Value;
   Table2.Post;
  end;
  If Query1Pka4.Value<>0 then
  begin
   Table2.Locate('No',4,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka4.Value;
   Table2.Post;
  end;
  If Query1Pka5.Value<>0 then
  begin
   Table2.Locate('No',5,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka5.Value;
   Table2.Post;
  end;
  If Query1Pka6.Value<>0 then
  begin
   Table2.Locate('No',6,[loPartialKey]);
   Table2.Edit;
   Table2Tutar.Value:=Table2Tutar.AsCurrency+Query1Pka6.Value;
   Table2.Post;
  end;

  Query1.Next;
end;

END;
Table2.Refresh;
end;







procedure TFIlac.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 QRBand1.Enabled:=False;

end;

procedure TFIlac.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRBand1.Enabled:=True;
end;

procedure TFIlac.BitBtn1Click(Sender: TObject);
begin
  frxReport2.ShowReport;
end;

procedure TFIlac.FormCreate(Sender: TObject);
begin
Table2.Open;
end;

procedure TFIlac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Table2.Close;

end;

end.
