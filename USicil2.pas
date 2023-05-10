unit USicil2;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons, Qrctrls,
  quickrpt, Grids, DBGrids, frxClass, frxDBSet;

type
  TFSicil2 = class(TForm)
    Panel1: TPanel;
    GeriBt: TBitBtn;
    IlerBt: TBitBtn;
    HazirBt: TBitBtn;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit46: TDBEdit;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBSicil: TfrxDBDataset;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    frxUserDataSet1: TfrxUserDataSet;
    Silme: TBitBtn;
    YaziBt: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    frxDBDataset3: TfrxDBDataset;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure VazgecClick(Sender: TObject);
    procedure GeriBtClick(Sender: TObject);
    procedure IlerBtClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure HazirBtClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure SilmeClick(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: String;
      var Value: Variant);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FSicil2: TFSicil2;
 y,t,g,m,aY,yi,ti,gi,mi,ayi:string;
 i,j,ltop:integer;
 para:currency;
implementation

uses   Paracevir, USicilAra, Math, UData;

{$R *.DFM}

procedure TFSicil2.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFSicil2.VazgecClick(Sender: TObject);
begin
if(FData.TSicil3.State=DsEdit)or(FData.TSICIL3.State=Dsinsert) then
begin
   if MessageBox(handle,'De�i�ikleri Kaydedilsinmi','KAPANI�',
    mb_YesNo + MB_ICONQUESTION) <> mrYes then
     FData.TSICIL3.Cancel
    else FData.TSICIL3.Post;
end;

// '�ocuk'
close;
end;

procedure TFSicil2.GeriBtClick(Sender: TObject);
begin
FData.TSICIL3.Prior;
end;

procedure TFSicil2.IlerBtClick(Sender: TObject);
begin
FData.TSICIL3.Next;
end;

procedure TFSicil2.BitBtn2Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFSicilAra.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFSicil2.HazirBtClick(Sender: TObject);
begin
FData.TSicil3.Refresh;
FData.TSicil3.Last;
If FData.TSICIL3.FieldByName('NO').AsString='' Then
 Edit1.Text:='1' else
Edit1.Text:=FData.TSICIL3.FieldByName('NO').Value+1;

FData.TSicil3.Insert;
FData.TSICIL3.FieldByName('NO').Value:=Edit1.Text;
DBComboBox1.SetFocus;
end;

procedure TFSicil2.DBComboBox1Exit(Sender: TObject);
begin
//
If FData.TSicil3V1.AsString='Kendi' then
begin
 if(FData.TSicil3.State=DsEdit) then
 begin
   FData.TSicil.Edit;
   FData.TSicil3V2.Value:=FData.TSICILKimno.Value;
   FData.TSicil3V3.Value:=FData.TSICILAdi.AsString+' '+FData.TSICILSoyadi.AsString;
 end;
end;
end;

procedure TFSicil2.SilmeClick(Sender: TObject);
begin
if messagebox (handle,'Bu Kayd� Silmek �stiyor musunuz?', 'D�KKAT',mb_YesNo +
mb_iconquestion) <> mrNo then
 FData.TSicil3.Delete;
end;

procedure TFSicil2.YaziBtClick(Sender: TObject);
begin
Query2.Open;
Query1.Open;

frxReport1.ShowReport;
Query2.Close;
Query1.Close;

end;

procedure TFSicil2.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
begin
If FData.TSICILAsgaaile.Value='E' Then
begin
If VarName='bekar' Then
  Value:='';
If VarName='evli' Then
  Value:='X';

end else
begin
If VarName='bekar' Then
  Value:='X';
If VarName='evli' Then
  Value:='';
end;

end;

end.
