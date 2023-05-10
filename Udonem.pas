unit Udonem;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Uni, DBAccess, MemDS, Buttons,
  ExtCtrls, Mask, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinLilian, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFdonem = class(TForm)
    EditAy: TDBEdit;
    EditDonem: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBNavigator: TDBNavigator;
    Vazgec: TBitBtn;
    DBText1: TDBText;
    KayitBt: TBitBtn;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure EditYilKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure KayitBtClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Fdonem: TFdonem;

implementation

uses UData;

{$R *.DFM}

procedure TFdonem.EditYilKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFdonem.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFdonem.KayitBtClick(Sender: TObject);
begin
  FData.TDONEM.Insert;
  FData.TDONEM.Edit;
  FData.TDONEM.FieldByName('Yil').asstring:=
  FData.UniAcilisCalYil.FieldByName('name').asstring;
  EditAy.SetFocus;
end;

procedure TFdonem.VazgecClick(Sender: TObject);
begin
  if(FData.TDONEM.State=DsEdit)or(FData.TDONEM.State=Dsinsert) then
  begin
    if MessageBox(handle,'De�i�ikleri Kaydedilsinmi','KAPANI�',
      mb_YesNo + MB_ICONQUESTION) <> mrYes then
      FData.TDONEM.Cancel
    else
      FData.TDONEM.Post;
  end;
end;

end.