unit UBesKesinti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, MemDS,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinLilian, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, Vcl.Buttons, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, frxClass,
  frxDBSet;

type
  TFBesKesinti = class(TForm)
    Panel1: TPanel;
    QBesKesinti: TUniQuery;
    DBesKesinti: TUniDataSource;
    QBesKesintiYil: TWideStringField;
    QBesKesintiDonem: TWideStringField;
    QBesKesintiSicno: TIntegerField;
    QBesKesintiDair: TWideStringField;
    QBesKesintiSskNo: TWideStringField;
    QBesKesintiAdiSoyadi: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    EdtAy: TEdit;
    BtnDosyaAc: TSpeedButton;
    cxGrid1DBTableView1Dair: TcxGridDBColumn;
    cxGrid1DBTableView1SskNo: TcxGridDBColumn;
    cxGrid1DBTableView1AdiSoyadi: TcxGridDBColumn;
    cxGrid1DBTableView1Pkaz40: TcxGridDBColumn;
    QBesKesintiBesKesinti: TFloatField;
    cxGrid1DBTableView1Donem: TcxGridDBColumn;
    RBesKesinti: TfrxReport;
    DBBesKesinti: TfrxDBDataset;
    BtnPrint: TSpeedButton;
    procedure BtnDosyaAcClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBesKesinti: TFBesKesinti;

implementation

{$R *.dfm}

uses UData;

procedure TFBesKesinti.BtnDosyaAcClick(Sender: TObject);
begin
  // QBesKesinti.Close;
  QBesKesinti.Params[0].AsString := EdtAy.Text;
  QBesKesinti.Execute;
end;

procedure TFBesKesinti.BtnPrintClick(Sender: TObject);
begin
  RBesKesinti.ShowReport;
end;

end.
