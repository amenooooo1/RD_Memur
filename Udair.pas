unit Udair;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables, DBAccess, MemDS,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinLilian, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFDaire = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Vazgec: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DaireAdi: TcxGridDBColumn;
    cxGrid1DBTableView1DairNo: TcxGridDBColumn;
    cxGrid1DBTableView1ButceKodu: TcxGridDBColumn;
    cxGrid1DBTableView1IsyeriSsk: TcxGridDBColumn;
    cxGrid1DBTableView1IsTas: TcxGridDBColumn;
    cxGrid1DBTableView1IsBolNo: TcxGridDBColumn;
    cxGrid1DBTableView1Iskaz: TcxGridDBColumn;
    cxGrid1DBTableView1K1: TcxGridDBColumn;
    cxGrid1DBTableView1K2: TcxGridDBColumn;
    cxGrid1DBTableView1K3: TcxGridDBColumn;
    cxGrid1DBTableView1K4: TcxGridDBColumn;
    cxGrid1DBTableView1F1: TcxGridDBColumn;
    cxGrid1DBTableView1F2: TcxGridDBColumn;
    cxGrid1DBTableView1F3: TcxGridDBColumn;
    cxGrid1DBTableView1F4: TcxGridDBColumn;
    cxGrid1DBTableView1Finans: TcxGridDBColumn;
    cxGrid1DBTableView1HrcYetkili: TcxGridDBColumn;
    cxGrid1DBTableView1HrcUnvan: TcxGridDBColumn;
    cxGrid1DBTableView1Aktif: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure DairNoKeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDaire: TFDaire;

implementation

uses UData;

{$R *.DFM}

procedure TFDaire.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFDaire.DairNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_Return) Then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFDaire.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FData.TDAIR.Filtered := True;
end;

procedure TFDaire.FormCreate(Sender: TObject);
begin
  FData.TDAIR.Filtered := False;
end;

procedure TFDaire.VazgecClick(Sender: TObject);
begin
  if (FData.TDAIR.State = DsEdit) or (FData.TDAIR.State = Dsinsert) then
  begin
    if MessageBox(handle, 'Deðiþikleri Kaydedilsinmi', 'KAPANIÞ',
      mb_YesNo + MB_ICONQUESTION) <> mrYes then
      FData.TDAIR.Cancel
    else
      FData.TDAIR.Post;
  end;
end;

end.
