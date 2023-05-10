unit UYilKesintiler;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Buttons,
  Grids, DBGrids, Uni, MemDS, DBAccess, frxClass, frxDBSet;

type
  TFYilKesintiler = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    HazirBt: TBitBtn;
    YaziBt: TBitBtn;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    UniQuery1: TUniQuery;
    Label2: TLabel;
    Edit2: TEdit;
    DBGrid2: TDBGrid;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    UniQuery1Yil: TWideStringField;
    UniQuery1Ay: TWideStringField;
    UniQuery1Donem: TWideStringField;
    UniQuery1Sicno: TIntegerField;
    UniQuery1Adi: TWideStringField;
    UniQuery1Soyadi: TWideStringField;
    UniQuery1Tutar: TFloatField;
    UniQuery2: TUniQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    FloatField1: TFloatField;
    UniQuery1EmNo: TWideStringField;
    UniQuery1Kimno: TWideStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure HazirBtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  end;

var
  FYilKesintiler: TFYilKesintiler;

implementation

uses UData;

{$R *.DFM}

procedure TFYilKesintiler.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(Vk_Return) Then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFYilKesintiler.VazgecClick(Sender: TObject);
begin
  Close;
end;

procedure TFYilKesintiler.YaziBtClick(Sender: TObject);
begin

  (frxReport2.FindObject('memo19') as TfrxMemoView).Text :=
    RadioGroup1.Items.Strings[RadioGroup1.ItemIndex] + ' Listesi';

  // QuickRep1.Preview ;
  frxReport2.ShowReport;
end;

procedure TFYilKesintiler.HazirBtClick(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.ParamByName('par').Value := RadioGroup1.ItemIndex;
  UniQuery1.ParamByName('Yil').Value := FData.TDONEMYil.Value;
  UniQuery1.ParamByName('A1').Value := Edit1.Text;
  UniQuery1.ParamByName('A2').Value := Edit2.Text;
  UniQuery1.ParamByName('s1').Value := StrToInt(Edit3.Text);
  UniQuery1.ParamByName('s2').Value := StrToInt(Edit4.Text);
  UniQuery1.Execute;
end;

procedure TFYilKesintiler.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  i := 3;
  RadioGroup1.Items.Clear;
  while i <> 18 do
  begin
    RadioGroup1.Items.Add(FData.TKESINTI.Fields[i].AsString);
    i := i + 1;
  end;
  RadioGroup1.Items.Add('Emeklilik Matrahý ');
  RadioGroup1.Items.Add('Emekli Kesintisi Memur ');
  RadioGroup1.Items.Add('Emekli Kes. Kurumdan ');
  RadioGroup1.Items.Add('Gelir Ver. Mat.');
  RadioGroup1.Items.Add('Gelir Ver.');
  RadioGroup1.Items.Add('Damga Ver. Mat. ');
  RadioGroup1.Items.Add('Damga Ver');
  RadioGroup1.Items.Add('Net Maaþ');
  RadioGroup1.Items.Add('B.E.S Kesinti');
  RadioGroup1.ItemIndex := 0;
end;

procedure TFYilKesintiler.Edit4Exit(Sender: TObject);
begin
  HazirBt.SetFocus;
end;

procedure TFYilKesintiler.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRBand1.Enabled := False;
end;

procedure TFYilKesintiler.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRBand1.Enabled := True;
end;

end.
