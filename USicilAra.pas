unit USicilAra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, DB, DBTables, Uni,
  DBAccess, MemDS, Mask,
  ComCtrls, Tabnotbk, Math;

type
  TFSicilAra = class(TForm)
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit13: TEdit;
    Vazgec: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSicilAra: TFSicilAra;

implementation

uses UData;

{$R *.DFM}

procedure TFSicilAra.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFSicilAra.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TFSicilAra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_Return) Then
    BitBtn1Click(Sender);
end;

procedure TFSicilAra.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text <> '' then
  begin
    FData.TSICIL.SQL.Clear;
    FData.TSICIL.SQL.Add('Select * from Sicil Where Soyadi like ' +
      QuotedStr(Edit2.Text + '%'));
    FData.TSICIL.SQL.Add(' Order by Soyadi');
    FData.TSICIL.Open;
  end;
end;

procedure TFSicilAra.Edit3Exit(Sender: TObject);
begin
  if Edit3.Text <> '' then
  begin
    FData.TSICIL.SQL.Clear;
    FData.TSICIL.SQL.Add('Select * from Sicil Where Adi like ' +
      QuotedStr(Edit3.Text + '%'));
    FData.TSICIL.SQL.Add(' Order by Adi');
    FData.TSICIL.Open;
  end;
end;

procedure TFSicilAra.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    FData.TSICIL.SQL.Clear;
    FData.TSICIL.SQL.Add('Select * from Sicil Order by Sicno');
    FData.TSICIL.Open;
    FData.TSICIL.Locate('Sicno', StrToInt(Edit1.Text), [loPartialKey])
  end;
end;

procedure TFSicilAra.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_Return) Then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFSicilAra.Edit13Exit(Sender: TObject);
begin
  if Edit13.Text <> '' then
  begin
    FData.TSICIL.SQL.Clear;
    FData.TSICIL.SQL.Add('Select * from Sicil Where Dair like ' +
      QuotedStr(Edit13.Text + '%'));
    FData.TSICIL.SQL.Add(' Order by dair');
    FData.TSICIL.Open;
  end;
end;

procedure TFSicilAra.VazgecClick(Sender: TObject);
begin
  Close;
end;

procedure TFSicilAra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_F2 then
    BitBtn1Click(Sender);
end;

end.
