unit URVer;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Grids,
  DBGrids, Buttons, DBCtrls, Mask;

type
  TFRVer = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    YaziBt: TBitBtn;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    t1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    BUT1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    BUT2: TQRLabel;
    QRLabel13: TQRLabel;
    BUT3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    m1: TQRLabel;
    m2: TQRLabel;
    m3: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel34: TQRLabel;
    v1: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel39: TQRLabel;
    y2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel41: TQRLabel;
    y1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel85: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel27: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRLabel50: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel68: TQRLabel;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRLabel71: TQRLabel;
    QRLabel74: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel77: TQRLabel;
    QRExpr21: TQRExpr;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRExpr23: TQRExpr;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRExpr25: TQRExpr;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel92: TQRLabel;
    QRExpr24: TQRExpr;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    c1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr26: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRLabel86: TQRLabel;
    t2: TQRLabel;
    QRExpr29: TQRExpr;
    QRLabel9: TQRLabel;
    BUT4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr30: TQRExpr;
    BUT5: TQRLabel;
    QRExpr31: TQRExpr;
    QRLabel15: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    yy1: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr32: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel49: TQRLabel;
    QRExpr33: TQRExpr;
    QRLabel56: TQRLabel;
    QRLabel84: TQRLabel;
    QRExpr34: TQRExpr;
    QRLabel91: TQRLabel;
    QRLabel95: TQRLabel;
    QRExpr35: TQRExpr;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRExpr36: TQRExpr;
    QRBand1: TQRBand;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRExpr37: TQRExpr;
    Label12: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    Edit5: TEdit;
    procedure YaziBtClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  end;

var
  FRVer: TFRVer;

implementation

uses UMEMUR, Paracevir;

{$R *.DFM}


































































procedure TFRVer.YaziBtClick(Sender: TObject);
begin
Query1.Close;
Query1.ParamByName('T1').Value:=DBLookupComboBox2.Text;
Query1.ParamByName('s1').Value:=StrToInt(Edit4.Text);
Query1.ParamByName('s2').Value:=StrToInt(Edit5.Text);
Query1.Open;

BUT1.Caption:=copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,1,3)+
' |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,4,2)+
'  |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,6,1)+
'   |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,7,3)+
' |   '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,10,1)+'10 ';

BUT2.Caption:=copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,1,3)+
' |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,4,2)+
'  |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,6,1)+
'   |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,7,3)+
' |   '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,10,1)+'40 ';

BUT3.Caption:=copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,1,3)+
' |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,4,2)+
'  |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,6,1)+
'   |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,7,3)+
' |   '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,10,1)+'50 ';
BUT4.Caption:=copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,1,3)+
' |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,4,2)+
'  |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,6,1)+
'   |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,7,3)+
' |   '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,10,1)+'60 ';
BUT5.Caption:=copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,1,3)+
' |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,4,2)+
'  |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,6,1)+
'   |  '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,7,3)+
' |   '+copy(DMEMUR.TDAIR.FieldByName('ButceKodu').asstring,10,1)+'70 ';

v1.Caption:=Edit1.Text;
y1.Caption:=MaskEdit1.Text;
yy1.Caption:=MaskEdit1.Text;
y2.Caption:=Edit2.Text;
c1.Caption:=Edit3.Text;
m1.Caption:=Memo1.Text;
m2.Caption:=Memo2.Text;
m3.Caption:=Memo3.Text;
T1.Caption:=FormatDateTime('yyyy',StrToDate(MaskEdit1.Text));
T2.Caption:=FormatDateTime('mmmm',StrToDate(MaskEdit1.Text));
QuickRep1.Preview;
end;

procedure TFRVer.VazgecClick(Sender: TObject);
begin
Close;
end;



procedure TFRVer.DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;


procedure TFRVer.FormCreate(Sender: TObject);
begin
MaskEdit1.Text:=DateToStr(date);
end;























procedure TFRVer.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var para:Currency;
begin
para:=QRExpr19.Value.dblResult;
QRLabel33.Caption:='Yalnýz: '+yazdir(currtostr(para))+'  Lira tamamen ve nakten aldým';


end;







end.
