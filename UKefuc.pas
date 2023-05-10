unit UKefuc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBAccess, MemDS, Math, Mask, DBCtrls, Grids, DBGrids,
  quickrpt, Qrctrls, ExtCtrls, Uni;

type
  TFKefuc = class(TForm)
    Panel1: TPanel;
    HazirBt: TBitBtn;
    YaziBt: TBitBtn;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText25: TQRDBText;
    QRBand6: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel72: TQRLabel;
    QRSysData1: TQRSysData;
    Table1: TUniTable;
    DataSource1: TDataSource;
    Table2: TUniTable;
    DataSource2: TDataSource;
    Query1: TUniQuery;
    DataSource3: TDataSource;
    Table2Il: TWideStringField;
    Table2Ilce: TWideStringField;
    Table2Bu: TWideStringField;
    Table2K�y: TWideStringField;
    Table2Dair: TWideStringField;
    Table2M1: TFloatField;
    Table2M2: TFloatField;
    Table2M3: TFloatField;
    Table2Tar1: TDateTimeField;
    Table2Tar2: TDateTimeField;
    Table2Tar3: TDateTimeField;
    Table2Say1: TWideStringField;
    Table2Say2: TWideStringField;
    Table2Say3: TWideStringField;
    Table1Sira: TIntegerField;
    Table1Sicno: TIntegerField;
    Table1Cuzno: TWideStringField;
    Table1G�v: TWideStringField;
    Table1Tar: TDateTimeField;
    Table1Ay: TFloatField;
    Table1Adsoy: TWideStringField;
    Table1M1: TFloatField;
    Table1M2: TFloatField;
    Table1M3: TFloatField;
    Table1M4: TFloatField;
    Table1Atar: TDateTimeField;
    Table1Seb: TWideStringField;
    procedure VazgecClick(Sender: TObject);
    procedure Kayit;
    procedure Yaz;
    procedure Yaz1;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HazirBtClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKefuc: TFKefuc;
  i,s:Integer;

implementation

uses UData;

{$R *.DFM}


procedure TFKefuc.VazgecClick(Sender: TObject);
begin
Close;
end;

procedure TFKefuc.FormCreate(Sender: TObject);
begin
//Table1.Open;
Table2.Open;
Table2.Edit;
Table2.Fields[0].VALUE:=FData.UniSistem.Fields[4].VALUE;
Table2.Fields[1].VALUE:=FData.UniSistem.Fields[5].VALUE;
Table2.Fields[4].VALUE:=FData.UniAcilisCalYil.FieldByName('name').VALUE;
Table2.Post;
end;

procedure TFKefuc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Table1.Close;
Table2.Close;
end;

procedure TFKefuc.HazirBtClick(Sender: TObject);
begin

Query1.Close;
Query1.ParamByName('Yil').value:=FData.UniAcilisCalYil.FieldByName('name').value;
If ComboBox1.Text='Ocak �ubat Mart' then begin
Query1.ParamByName('Ay').value:='01';
Query1.ParamByName('Ay1').value:='03';
QRLabel19.Caption:='Ocak';
QRLabel22.Caption:='�ubat';
QRLabel24.Caption:='Mart';
end;
If ComboBox1.Text='Nisan Mayis Haziran' then begin
Query1.ParamByName('Ay').value:='04';
Query1.ParamByName('Ay1').value:='06';
QRLabel19.Caption:='Nisan';
QRLabel22.Caption:='Mayis';
QRLabel24.Caption:='Haziran';
end;
If ComboBox1.Text='Temmuz A�ustos Eyl�l' then begin
Query1.ParamByName('Ay').value:='07';
Query1.ParamByName('Ay1').value:='09';
QRLabel19.Caption:='Temmuz';
QRLabel22.Caption:='A�ustos';
QRLabel24.Caption:='Eyl�l';
end;
If ComboBox1.Text='Ekim Kasim Aral�k' then begin
Query1.ParamByName('Ay').value:='10';
Query1.ParamByName('Ay1').value:='12';
QRLabel19.Caption:='Ekim';
QRLabel22.Caption:='Kasim';
QRLabel24.Caption:='Aral�k';
end;
i:=0;
Query1.Open;
Table1.Close;
Table1.Open;
while not Table1.Eof do
 Table1.Delete;

yaz;
yaz1;
Query1.Close;
Table1.First;
Table2.Edit;
while not Table1.eof do
 begin
 Table2.FieldByName('m1').VALUE:=Table2.FieldByName('m1').AsCurrency+
 Table1.FieldByName('m1').VALUE;
 Table2.FieldByName('m2').VALUE:=Table2.FieldByName('m2').AsCurrency+
 Table1.FieldByName('m2').VALUE;
 Table2.FieldByName('m3').VALUE:=Table2.FieldByName('m3').AsCurrency+
 Table1.FieldByName('m3').VALUE;
 Table1.Next;
end;
Table2.Post;
Table1.Refresh;
Table1.First;

end;

procedure TFKefuc.Yaz1;
begin
s:= ((i div 17)+1)*17;
While  i <> s do
begin
  i:=i+1;
 Table1.Insert;
 Table1.Fields[0].value:=i;
end;
end;

procedure TFKefuc.Yaz;
begin
Query1.First;
while not Query1.eof do
 begin
 Kayit;
 Query1.Next;
end;
end;

procedure TFKefuc.Kayit;
begin
if not (Table1.Locate('Sicno', Query1.FieldByName('Sicno').VALUE,[loPartialKey])) then
begin
  Table1.Insert;
  i:=i+1;
  Table1.FieldByName('Sicno').Value:=Query1.FieldByName('Sicno').VALUE;
  Table1.FieldByName('Sira').Value:=i;
  Table1.FieldByName('Cuzno').Value:=Query1.FieldByName('TasNo').Value;
  Table1.FieldByName('G�v').Value:=Query1.FieldByName('Unvan').Value;
  Table1.FieldByName('Tar').Value:=Query1.FieldByName('Isgirtar').Value;
  Table1.FieldByName('Atar').Value:=Query1.FieldByName('Ciktar').Value;
  Table1.FieldByName('adsoy').Value:=copy((Query1.FieldByName('Adi').Value+' '+
  Query1.FieldByName('Soyadi').Value),1,50);
  Table1.FieldByName('m1').VALUE:=0;
  Table1.FieldByName('m2').VALUE:=0;
  Table1.FieldByName('m3').VALUE:=0;
  Table1.FieldByName('m4').VALUE:=0;

  Case (Query1.FieldByName('Ay').value mod 3) of
  0: begin
   Table1.FieldByName('m3').VALUE:=Table1.FieldByName('m3').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
  1: begin
  Table1.FieldByName('m1').VALUE:=Table1.FieldByName('m1').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
  2: begin
  Table1.FieldByName('m2').VALUE:=Table1.FieldByName('m2').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
 end;
  Table1.FieldByName('m4').VALUE:=Table1.FieldByName('m4').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  Table1.FieldByName('Ay').VALUE:=Table1.FieldByName('Ay').AsCurrency+
  Query1.FieldByName('Pkaz1').AsCurrency+Query1.FieldByName('Pkaz2').AsCurrency;

  Table1.Post;
end else
begin
Table1.Edit;
Case (Query1.FieldByName('Ay').value mod 3) of
  0: begin
   Table1.FieldByName('m3').VALUE:=Table1.FieldByName('m3').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
  1: begin
  Table1.FieldByName('m1').VALUE:=Table1.FieldByName('m1').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
  2: begin
  Table1.FieldByName('m2').VALUE:=Table1.FieldByName('m2').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  end;
 end;
  Table1.FieldByName('m4').VALUE:=Table1.FieldByName('m4').AsCurrency+
  Query1.FieldByName('Pkaz26').AsCurrency;
  Table1.FieldByName('Ay').VALUE:=Table1.FieldByName('Ay').AsCurrency+
  Query1.FieldByName('Pkaz1').AsCurrency+Query1.FieldByName('Pkaz2').AsCurrency;
  Table1.Post;
end;
end;

procedure TFKefuc.YaziBtClick(Sender: TObject);
begin
QRLabel18.Caption:='Devresi '+ FData.UniAcilisCalYil.FieldByName('name').value+' �� ayl�k';
s:= (i div 17);
QRLabel72.Caption:='SAYFA NUMARASI  :'+IntToStr(S)+' / ';
QuickRep1.Preview;
end;

procedure TFKefuc.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFKefuc.DBEdit1Exit(Sender: TObject);
begin
Table2.Edit;
Table2.Post;
end;

end.
