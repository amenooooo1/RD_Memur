unit UEcra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, DBTables, Uni, DBAccess, MemDS, Grids,
  DBGrids;

type
  TFEcra = class(TForm)
    Panel1: TPanel;
    Vazgec: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Table1: TUniTable;
    Button1: TButton;
    Panel3: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure VazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  i:Integer;
  ll:String;
  FEcra: TFEcra;

implementation

uses UData, Math;

{$R *.dfm}

procedure TFEcra.VazgecClick(Sender: TObject);
begin
FData.TSICIL.Edit;
FData.TSICILIlac.Value:=FData.TSicilK1.Value+FData.TSicilK2.Value+
FData.TSicilK3.Value+FData.TSicilK4.Value+FData.TSicilK5.Value+
FData.TSicilK6.Value+FData.TSicilK7.Value+FData.TSicilK8.Value+
FData.TSicilK9.Value+FData.TSicilK10.Value;
FData.TSICIL.Post;
Table1.Close;
end;

procedure TFEcra.FormCreate(Sender: TObject);
var i:Integer;
begin
//
Table1.Open;
while not Table1.eof do
begin
 Case  Table1.Fields[0].Value     of
    1: Label1.Caption:=Table1.Fields[1].AsString;
    2: Label2.Caption:=Table1.Fields[1].AsString;
    3: Label3.Caption:=Table1.Fields[1].AsString;
    4: Label4.Caption:=Table1.Fields[1].AsString;
    5: Label5.Caption:=Table1.Fields[1].AsString;
    6: Label6.Caption:=Table1.Fields[1].AsString;
    7: Label7.Caption:=Table1.Fields[1].AsString;
    8: Label8.Caption:=Table1.Fields[1].AsString;
    9: Label9.Caption:=Table1.Fields[1].AsString;
    10: Label10.Caption:=Table1.Fields[1].AsString;
 end;

   Table1.Next;
end;

end;

procedure TFEcra.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFEcra.Button1Click(Sender: TObject);
begin
If Panel3.Visible=False then
Panel3.Visible:=True else
 Panel3.Visible:=False;
FormCreate(Sender);
end;

end.
