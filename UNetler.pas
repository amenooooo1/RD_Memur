unit UNetler;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Uni, DBAccess, MemDS, Grids, DBGrids, StdCtrls, Buttons, QRCtrls, QuickRpt,
  ExtCtrls, frxClass, frxDBSet;

type
  TFNetler = class(TForm)
    BitBtn1: TBitBtn;
    YaziBt: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    DataSource1: TDataSource;
    Vazgec: TBitBtn;
    DBGrid1: TDBGrid;
    Query1: TUniQuery;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr19: TQRExpr;
    QRLabel7: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel20: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    Table1: TUniTable;
    DataSource2: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNetler: TFNetler;
  i:Integer;
implementation

uses UData;



{$R *.DFM}


procedure TFNetler.BitBtn1Click(Sender: TObject);
begin
i:=0;
Query1.Close;
Query1.ParamByName('Yil').Value:=FData.TDONEMYil.Value;
Query1.ParamByName('A1').Value:=Edit2.Text;
Query1.ParamByName('T1').Value:=StrToInt(Edit4.Text);
Query1.ParamByName('T2').Value:=StrToInt(Edit5.Text);
Query1.Open;

Table1.Close;
Table1.Open;
while not Table1.eof do
 Table1.Delete;
Query1.First;
while not Query1.eof do
 begin
 if not Table1.Locate('Sicno', Query1.FieldByName('Sicno').value,[loPartialKey]) then
 Begin
  Table1.Insert;
  i:=i+1;
  Table1.Insert;
  Table1.FieldByName('sira').value:=i;
  Table1.FieldByName('Sicno').value:=
  Query1.FieldByName('Sicno').value;
  Table1.FieldByName('adsoy').asstring:=
  Query1.FieldByName('Adi').asstring+' ' +
  Query1.FieldByName('Soyadi').asstring;
  Table1.FieldByName('Banhes').value:=
  Query1.FieldByName('Banhes').value;
  Table1.FieldByName('Net').value:=Query1.FieldByName('Net').value;
  Table1.Post;
 end  else
 Begin
  Table1.Edit;
  Table1.FieldByName('Net').value:=Table1.FieldByName('Net').value+
  Query1.FieldByName('Net').value;
 Table1.Post;
 End;
 Query1.Next;
END;
 Table1.Refresh;

end;

procedure TFNetler.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;


procedure TFNetler.VazgecClick(Sender: TObject);
begin
Close;
end;


procedure TFNetler.YaziBtClick(Sender: TObject);
begin
//QuickRep1.Preview;
frxReport1.ShowReport;
end;

procedure TFNetler.FormCreate(Sender: TObject);
begin
Table1.Open;
end;

procedure TFNetler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Table1.Close;
end;

end.
