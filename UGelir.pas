unit UGelir;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Uni, DBAccess, MemDS,Variants,
  DBGrids, ComCtrls, Qrctrls, quickrpt, Mask, Grids, ExtCtrls, Buttons;

type
  TFGelir = class(TForm)
    EditSicno: TDBEdit;
    EditYil: TDBEdit;
    EditAd: TDBEdit;
    EditGelirtop: TDBEdit;
    EditKumver: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBNavigator: TDBNavigator;
    Query1: TUniQuery;
    DataSource1: TDataSource;
    TasBt: TBitBtn;
    Label6: TLabel;
    EditSoy: TDBEdit;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    HazirBt: TBitBtn;
    DBGrid1: TDBGrid;
    ProgressBar1: TProgressBar;
    Vazgec: TBitBtn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    UniTGelir: TUniTable;
    UniDGelir: TUniDataSource;
    Query1Yil: TWideStringField;
    Query1Ay: TWideStringField;
    Query1Donem: TWideStringField;
    Query1Sicno: TIntegerField;
    Query1GelirMat: TFloatField;
    Query1GelirVer: TFloatField;
    procedure Sil;
    procedure Kayit;
    procedure EditSicnoKeyPress(Sender: TObject; var Key: Char);
    procedure HazirBtClick(Sender: TObject);
    procedure TasBtClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FGelir: TFGelir;

implementation

uses UData;


{$R *.DFM}

procedure TFGelir.EditSicnoKeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFGelir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
UniTGelir.Open;

end;

procedure TFGelir.FormCreate(Sender: TObject);
begin
UniTGelir.Open;
end;

procedure TFGelir.HazirBtClick(Sender: TObject);
begin
Sil;
ProgressBar1.Visible:=True;
ProgressBar1.Max:=Query1.RecordCount;
UniTGelir.first;
while not UniTGelir.eof do
begin
  Query1.Open;
  while not Query1.eof do
  begin
    Kayit;
    Query1.next;
   end;
   Query1.Close;

    UniTGelir.next;

 end;


 ProgressBar1.Visible:=False;
end;

procedure TFGelir.Kayit;
begin
UniTGelir.Edit;
UniTGelir.FieldByName('Gelirtop').Value:=UniTGelir.FieldByName('Gelirtop').Value+
Query1.FieldByName('GelirMat').value;
UniTGelir.FieldByName('Kumver').Value:=UniTGelir.FieldByName('Kumver').Value+
Query1.FieldByName('GelirVer').value;
UniTGelir.Post;
End;

procedure TFGelir.Sil;
begin
UniTGelir.First;
   while not  UniTGelir.eof do
   begin
     UniTGelir.Edit;
     UniTGelir.FieldByName('Gelirtop').Value:=0;
     UniTGelir.FieldByName('Kumver').Value:=0;
     UniTGelir.Post;
     UniTGelir.Next;
   end;
End;


procedure TFGelir.TasBtClick(Sender: TObject);
begin
Panel1.Visible:=True;
Edit2.SetFocus;
end;


procedure TFGelir.DBGrid1DblClick(Sender: TObject);
begin
Panel1.Visible:=False;
end;



procedure TFGelir.VazgecClick(Sender: TObject);
begin
if(UniTGelir.State=DsEdit)or(UniTGelir.State=Dsinsert) then
begin
   if MessageBox(handle,'Deðiþikleri Kaydedilsinmi','KAPANIÞ',
    mb_YesNo + MB_ICONQUESTION) <> mrYes then
     UniTGelir.Cancel
     else  UniTGelir.Post;
end;

Close;
end;






procedure TFGelir.BitBtn1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;


end.
