unit UAyEmek5510sonra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, Uni, DBAccess, MemDS, QRCtrls, QuickRpt, Mask, QRExport;


type
  TFAyEmek5510sonra = class(TForm)
    Query1: TUniQuery;
    DataSource1: TDataSource;
    Table2: TUniTable;
    DataSource2: TDataSource;
    Panel1: TPanel;
    HazirBt: TBitBtn;
    YaziBt: TBitBtn;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText4: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape34: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr5: TQRExpr;
    emk: TQRLabel;
    emilk: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRExpr4: TQRExpr;
    QRBand2: TQRBand;
    QRExpr7: TQRExpr;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    QRBand6: TQRBand;
    QRLabel33: TQRLabel;
    Table1: TUniTable;
    DataSource3: TDataSource;
    BitBtn1: TBitBtn;
    QRBand3: TQRBand;
    QRExpr11: TQRExpr;
    Query2: TUniQuery;
    QRDBText18: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRLabel34: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel50: TQRLabel;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    QRExpr17: TQRExpr;
    QRLabel47: TQRLabel;
    QRDBText26: TQRDBText;
    QRExpr18: TQRExpr;
    Table1Sicno: TIntegerField;
    Table1Ad: TWideStringField;
    Table1Soy: TWideStringField;
    Table1Sskv: TFloatField;
    Table1SskNO: TWideStringField;
    Table1Sski: TFloatField;
    Table1art: TFloatField;
    Table1Sskver: TFloatField;
    Table1Gec: TFloatField;
    Table1Tc: TWideStringField;
    Table1Terfi1: TWideStringField;
    Table1Der1: TFloatField;
    Table1Kad1: TFloatField;
    Table1Ekgos1: TFloatField;
    Table1Terfi2: TWideStringField;
    Table1Der2: TFloatField;
    Table1Kad2: TFloatField;
    Table1Ekgos2: TFloatField;
    Table1Terfi3: TWideStringField;
    Table1Der3: TFloatField;
    Table1Kad3: TFloatField;
    Table1Ekgos3: TFloatField;
    Table1Kidem: TWideStringField;
    Table1GenSag: TFloatField;
    Query1Yil: TWideStringField;
    Query1Ay: TWideStringField;
    Query1Donem: TWideStringField;
    Query1Sicno: TIntegerField;
    Query1Adi: TWideStringField;
    Query1Soyadi: TWideStringField;
    Query1EmNo: TWideStringField;
    Query1Tasno: TWideStringField;
    Query1Kimno: TWideStringField;
    Query1Ilkssk: TWideStringField;
    Query1Aile: TWideStringField;
    Query1Cosay: TFloatField;
    Query1HuSak: TWideStringField;
    Query1Sak: TWordField;
    Query1Kid: TWordField;
    Query1KidAy: TWordField;
    Query1KidGun: TWordField;
    Query1YanPu: TFloatField;
    Query1Isri: TFloatField;
    Query1Temg: TFloatField;
    Query1Mals: TFloatField;
    Query1Yemeky: TFloatField;
    Query1Yakacaky: TFloatField;
    Query1Kiray: TFloatField;
    Query1Temizy: TFloatField;
    Query1Suty: TFloatField;
    Query1Egity: TFloatField;
    Query1Avans: TFloatField;
    Query1Sendika: TFloatField;
    Query1Icratop: TFloatField;
    Query1Icrakal: TFloatField;
    Query1Icra: TFloatField;
    Query1YemK: TFloatField;
    Query1Kaz1: TIntegerField;
    Query1Kaz2: TIntegerField;
    Query1Kaz3: TIntegerField;
    Query1Pkaz17: TFloatField;
    Query1Pkaz34: TFloatField;
    Query1SskMat: TFloatField;
    Query1SskIs: TFloatField;
    Query1SskIsv: TFloatField;
    Query1IsMYS: TFloatField;
    Query1ISGSS: TFloatField;
    Query1IsvMYS: TFloatField;
    Query1ISvGSS: TFloatField;
    Query1Gun: TIntegerField;
    Query1GenSagkisi: TFloatField;
    Query1GenSagkurum: TFloatField;
    Query1Pka8: TFloatField;
    Query1A1: TWideStringField;
    Query1A2: TWideStringField;
    procedure HazirBtClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure emyaz;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
  end;

var
  FAyEmek5510sonra: TFAyEmek5510sonra;
  emm,emi:Currency;
  i:Integer;
  ss,abo1,para:String;
  kay:TextFile;

implementation

uses UData, Paracevir;

{$R *.DFM}

procedure TFAyEmek5510sonra.emyaz;
begin
i:=i+1;
Table1.Insert;
Table1Sicno.Value:=i;

Table1Ad.Value:=Query1Adi.AsString;
Table1Soy.Value:=Query1Soyadi.AsString;
Table1SskNo.AsString:=Query1EmNo.AsString;
if Query1Ilkssk.Value='E' then
 Table1Sski.Value:=Query1SskIs.AsCurrency
else
 Table1SskV.Value:=Query1SskIs.AsCurrency;

// Table1SskMat.Value:=Query1.FieldByName('sskmat').Value;
 Table1SskVer.Value:=Query1SskIsv.AsCurrency;
 Table1Art.Value:=Query1Pkaz17.AsCurrency;
 Table1Gec.Value:=Query1pkaz34.AsCurrency;
 Table1Tc.Value:=Query1Kimno.Value;
 Table1Terfi1.Value:=Query1A1.Value;
 Table1Der1.Value:=Query1Kaz1.Value;
 Table1Kad1.Value:=Query1Kaz2.Value;
 Table1Ekgos1.Value:=Query1Kaz3.Value;
 Table1Terfi2.Value:=Query1A1.Value;
 Table1Der2.Value:=Query1Kaz1.Value;
 Table1Kad2.Value:=Query1Kaz2.Value;
 Table1Ekgos2.Value:=Query1Kaz3.Value;
 Table1Terfi3.Value:=Query1A1.Value;
 Table1Der3.Value:=Query1Kaz1.Value;
 Table1Kad3.Value:=Query1Kaz2.Value;
 Table1Ekgos3.Value:=Query1Kaz3.Value;
 Table1Kidem.Value:=Query1A2.Value;


Table1.Post;
end;


procedure TFAyEmek5510sonra.HazirBtClick(Sender: TObject);
begin
Table2.Edit;
Table2.Post;
emi:=0;
emm:=0;
i:=0;
Table1.first;
while not Table1.eof do
Table1.Delete;

Query1.Close;
Query1.ParamByName('Yil').Value:=FData.TDONEMYil.Value;
Query1.ParamByName('Ay').Value:=FData.TDONEMAy.Value;
Query1.ParamByName('Donem').Value:=FData.TDONEMDonem.Value;
Query1.Open;
Query1.first;
while not Query1.eof do
  begin
    IF Query1Ilkssk.asstring = 'E'  then
      emi:=emi+Query1SskIs.value
    Else
      emm:=emm+Query1SskIs.value;

    emyaz;
    Query1.next;
   end;
Query1.First;
end;

procedure TFAyEmek5510sonra.YaziBtClick(Sender: TObject);
begin
emk.Caption:=Formatfloat('###,##0.00',emm);
emilk.Caption:=Formatfloat('###,##0.00',emi);
QRLabel32.Caption:=Formatfloat('###,##0.00',emm);
QRLabel31.Caption:=Formatfloat('###,##0.00',emi);
QuickRep1.Preview;
end;

procedure TFAyEmek5510sonra.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFAyEmek5510sonra.VazgecClick(Sender: TObject);
begin
Table1.Close;
Table2.Close;
Close;
end;

procedure TFAyEmek5510sonra.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var para:Currency;
begin
para:=QRExpr3.Value.dblResult;
QRLabel29.Caption:=yazdir(currtostr(para));
end;






procedure TFAyEmek5510sonra.DBEdit1Exit(Sender: TObject);
begin
Table2.Edit;
Table2.Post;
end;

procedure TFAyEmek5510sonra.FormCreate(Sender: TObject);
begin
Table2.Open;
Table1.Open;
 Edit2.Text:='C:\Sermemur\'+FData.TDONEMYil.AsString+'-'+
 FData.TDONEMAy.AsString+'-'+FData.TDONEMDonem.AsString+'-'+' 5510 Sonra.Txt';

end;



procedure TFAyEmek5510sonra.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 HazirBt.SetFocus;
end;

procedure TFAyEmek5510sonra.BitBtn1Click(Sender: TObject);
begin
 QuickRep2.Preview;
end;

procedure TFAyEmek5510sonra.BitBtn2Click(Sender: TObject);
begin
  abo1:=Edit2.Text;
  AssignFile(kay,abo1);
  DeleteFile(abo1);
  IF FileExists(abo1) then
    Append(kay)
  else
    Rewrite(kay);
  Query1.First;
while not Query1.Eof do
begin
  ss:=Query1Kimno.AsString+';';
  ss:=ss+Query1EmNo.AsString+';';
  ss:=ss+Query1Adi.AsString+';';
  ss:=ss+Query1Soyadi.AsString+';';
  ss:=ss+' ;';
  ss:=ss+' ;';
  ss:=ss+' ;';
  ss:=ss+' ;';
  ss:=ss+' ;';
  ss:=ss+Query1Kaz1.AsString+';';
  ss:=ss+Query1Kaz2.AsString+';';
  ss:=ss+Query1Kaz3.AsString+';';
  ss:=ss+Query1A2.AsString+';';
  ss:=ss+Query1Gun.AsString+';';
  If (Query1SskMat.Value-Query1Pka8.Value)=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1SskMat.Value-Query1Pka8.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';';
  If Query1Pka8.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',Query1Pka8.Value);
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';0.0;';
  If Query1SskMat.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1SskMat.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';';
  If Query1IsMYS.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1IsMYS.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';';
  If Query1ISGSS.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1ISGSS.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';';
  If Query1IsvMYS.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1IsvMYS.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para+';';
  If Query1ISvGSS.Value=0 then
  para:='0.0' else
  begin
   para:=FormatFloat('#####0.00',(Query1ISvGSS.Value));
   para[pos(',',para)]:='.';
  end;
  ss:=ss+para + ';0.0;';
  Writeln(kay,ss);
  Query1.Next ;
end;
  CloseFile(Kay);
end;

end.
