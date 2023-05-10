unit UKdv;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons, Grids,
  DBGrids;

type
  TFKdv = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    DBText7: TDBText;
    DBText2: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditS: TDBEdit;
    EditS2: TDBEdit;
    EditS3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSource2: TDataSource;
    GeriBt: TBitBtn;
    IlerBt: TBitBtn;
    SilBt: TBitBtn;
    TasBt: TBitBtn;
    BitBtn3: TBitBtn;
    Vazgec: TBitBtn;
    Label7: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    procedure Arama;
    procedure EditSicnoKeyPress(Sender: TObject; var Key: Char);
    procedure IlerBtClick(Sender: TObject);
    procedure GeriBtClick(Sender: TObject);
    procedure VazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SilBtClick(Sender: TObject);
    procedure TasBtClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditS3Exit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FKdv: TFKdv;
 i,s,yil:string;
 yuv :Currency;

implementation

uses UMEmur;

{$R *.DFM}

procedure TFKdv.EditSicnoKeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFKdv.IlerBtClick(Sender: TObject);
begin
DMEMUR.TSICIL.Next;
Arama;
end;

procedure TFKdv.GeriBtClick(Sender: TObject);
begin
DMEMUR.TSICIL.Prior;
Arama;
end;

procedure TFKdv.Arama;
begin
{with DMEMUR do
begin
try
 TKDV.SetKey;
 TKDV.FieldByName('Sicno').asString:=
 TSICIL.FieldByName('SicNo').asString;
 if not TKDV.GotoKey then
  Begin
   TKDV.Append;
   TKDV.Edit;
   TKDV.FieldByName('Sicno').asString:=
   TSICIL.FieldByName('SicNo').asString;
   TKDV.Post;
  end
 else
   TKDV.GotoKey
 Except
End;
   TKDV.Edit;
   TKDV.FieldByName('Adi').asString:=
   TSICIL.FieldByName('Adi').asString;
   TKDV.FieldByName('Soyadi').asString:=
   TSICIL.FieldByName('Soyadi').asString;
   TKDV.FieldByName('Unvan').asString:=
   TSICIL.FieldByName('Unvan').asString;
   TKDV.Post;
end; }
End;

 procedure TFKdv.VazgecClick(Sender: TObject);
begin
Close;
end;

function yuvar(x,y:Currency):Currency;far;external 'Awdocyuv1.dll';

procedure TFKdv.FormCreate(Sender: TObject);
begin
Arama;
end;

procedure TFKdv.SilBtClick(Sender: TObject);
begin
{DMEMUR.TKDV.Delete;
dmemur.TKDV.Append;
dmemur.TKDV.FieldByName('Sicno').value:=
dmemur.TSICIL.FieldByName('Sicno').value;
dmemur.TKDV.Post;}
end;

procedure TFKdv.TasBtClick(Sender: TObject);
begin
yil:=dmemur.TSISTEM.FieldByName('Yil').value-1;
yil:='Memur'+yil;
Query1.DatabaseName:=yil;
Query1.Open;
Panel1.Top:=128;
Panel1.Visible:=True;
end;

procedure TFKdv.BitBtn2Click(Sender: TObject);
begin
Panel1.Visible:=False;

end;

procedure TFKdv.BitBtn1Click(Sender: TObject);
begin
{with dmemur.TKDV do
begin
 Query1.first;
 while not Query1.eof do
 begin
  try
  SetKey;
  FieldByName('Sicno').value:=Query1.FieldByName('Sicno').value;
  if not GotoKey then
   Begin
    Insert;
    FieldByName('Sicno').value:=Query1.FieldByName('Sicno').value;
       end
    else
   GotoKey;
  Except
 End;
 Edit;
 FieldByName('adi').value:=Query1.FieldByName('Ad').value;
 FieldByName('soyadi').value:=Query1.FieldByName('soy').value;
 FieldByName('s1').value:=Query1.FieldByName('Gelirtop').value;
 FieldByName('s2').value:=Query1.FieldByName('Kumver').value;
 Post;
 Query1.next;
 end;
end;
Query1.Close;
Panel1.Visible:=False;}
end;

procedure TFKdv.BitBtn3Click(Sender: TObject);
begin
Query2.Open;
with dmemur.TKDV do
begin
first;
while not eof do
begin
  Edit;
  FieldByName('A2').value:=0;
  FieldByName('A3').value:=0;
  FieldByName('A4').value:=0;
  FieldByName('A5').value:=0;
  FieldByName('A6').value:=0;
  FieldByName('A7').value:=0;
  FieldByName('A8').value:=0;
  FieldByName('A9').value:=0;
  FieldByName('A10').value:=0;
  FieldByName('A11').value:=0;
  FieldByName('A12').value:=0;
  Post;
  next;
end;
 Query2.first;
 while not Query2.eof do
 begin
  SetKey;
  FieldByName('Sicno').value:=
  Query2.FieldByName('Sicno').value;
  GotoKey;
  Edit;
  If Query2.FieldByName('Ay').asstring='02' Then
    FieldByName('A2').value:=FieldByName('A2').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='03' Then
    FieldByName('A3').value:=FieldByName('A3').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='04' Then
    FieldByName('A4').value:=FieldByName('A4').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='05' Then
    FieldByName('A5').value:=FieldByName('A5').value+
    Query2.FieldByName('Pkaz23').value;

  If Query2.FieldByName('Ay').asstring='06' Then
    FieldByName('A6').value:=FieldByName('A6').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='07' Then
    FieldByName('A7').value:=FieldByName('A7').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='08' Then
    FieldByName('A8').value:=FieldByName('A8').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='09' Then
    FieldByName('A9').value:=FieldByName('A9').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='10' Then
    FieldByName('A10').value:=FieldByName('A10').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='11' Then
    FieldByName('A11').value:=FieldByName('A11').value+
    Query2.FieldByName('Pkaz23').value;
  If Query2.FieldByName('Ay').asstring='12' Then
    FieldByName('A12').value:=FieldByName('A12').value+
    Query2.FieldByName('Pkaz23').value;

  Post;
  Query2.Next;
 End;
End;
Query2.Close;
end;





procedure TFKdv.EditS3Exit(Sender: TObject);
begin
DMEMUR.TKDV.Edit;
If dmemur.TKDV.FieldByName('s3').value<dmemur.TKDV.FieldByName('s1').value then
 dmemur.TKDV.FieldByName('s4').value:= dmemur.TKDV.FieldByName('s3').value
else dmemur.TKDV.FieldByName('s4').value:= dmemur.TKDV.FieldByName('s1').value;
If dmemur.TKatoran.Fields[19].Value>dmemur.TKDV.FieldByName('s4').value then
begin
 dmemur.TKDV.FieldByName('s9').value:= dmemur.TKDV.FieldByName('s4').value*
 (dmemur.TKatoran.Fields[24].Value/100);
end else begin
  // *** 2
  If dmemur.TKatoran.Fields[20].Value>dmemur.TKDV.FieldByName('s4').value then
  begin
    dmemur.TKDV.FieldByName('s9').value:=((dmemur.TKDV.FieldByName('s4').value-
    dmemur.TKatoran.Fields[19].Value)*(dmemur.TKatoran.Fields[25].Value/100))+
    ((dmemur.TKatoran.Fields[19].Value)*(dmemur.TKatoran.Fields[24].Value/100)) ;
  end else begin
    dmemur.TKDV.FieldByName('s9').value:=((dmemur.TKDV.FieldByName('s4').value-
    dmemur.TKatoran.Fields[20].Value)*(dmemur.TKatoran.Fields[26].Value/100))+
    ((dmemur.TKatoran.Fields[19].Value)*(dmemur.TKatoran.Fields[24].Value/100))+
   ((dmemur.TKatoran.Fields[20].Value-dmemur.TKatoran.Fields[19].Value)*
   (dmemur.TKatoran.Fields[25].Value/100))  ;
    end;// 3
  end; ///** 2
dmemur.TKDV.FieldByName('s8').Value:=dmemur.TKDV.FieldByName('s9').Value;
dmemur.TKDV.FieldByName('s9').Value:=
yuvar(dmemur.TKDV.FieldByName('s9').Value,0.01);
dmemur.TKDV.Post;

end;

end.
