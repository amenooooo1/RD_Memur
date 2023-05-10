unit UHasta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DBCtrls, StdCtrls, Buttons, DB,
  DBTables, Uni, DBAccess, MemDS;

type
  TFHasta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Query1: TUniQuery;
    GeriBt: TBitBtn;
    IlerBt: TBitBtn;
    BitBtn1: TBitBtn;
    YaziBt: TBitBtn;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    BitBtn2: TBitBtn;
    Vazgec: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure VazgecClick(Sender: TObject);
    procedure GeriBtClick(Sender: TObject);
    procedure IlerBtClick(Sender: TObject);
    procedure yaz;
    procedure FormPaint(Sender: TObject);
    procedure YaziBtClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHasta: TFHasta;

implementation

uses UData, USicilAra, URHasta;

{$R *.dfm}

procedure TFHasta.VazgecClick(Sender: TObject);
begin
Close;
end;

procedure TFHasta.yaz;
begin

//Edit1.Text:=DMEMUR.TSICIL.Fields[2].AsString+' '+DMEMUR.TSICIL.Fields[1].AsString;
Edit3.Text:=DateToStr(Date);
end;

procedure TFHasta.GeriBtClick(Sender: TObject);
begin
FData.TSICIL.Prior;
yaz;
end;

procedure TFHasta.IlerBtClick(Sender: TObject);
begin
FData.TSICIL.Next;
yaz;
end;

procedure TFHasta.FormPaint(Sender: TObject);
begin
yaz;
end;

procedure TFHasta.YaziBtClick(Sender: TObject);
begin
  with TFRHasta.Create( Application ) do
       try

Query1.Open;
QRLabel27.Caption:=Query1.Fields[2].AsString+' '+Query1.Fields[1].AsString;

//QRLabel28.Caption:=Edit1.Text;
QRLabel30.Caption:=Edit3.Text;
QRLabel31.Caption:=Edit4.Text;
QRLabel34.Caption:=Edit5.Text;
QRLabel35.Caption:=Edit6.Text;
QRLabel32.Caption:=Query1.FieldByName('der').AsString+' / '+
Query1.FieldByName('kad').AsString;

QRLabel69.Caption:=Query1.Fields[2].AsString+' '+Query1.Fields[1].AsString;

//QRLabel70.Caption:=Edit1.Text;
QRLabel72.Caption:=Edit3.Text;
QRLabel73.Caption:=Edit4.Text;
QRLabel76.Caption:=Edit5.Text;
QRLabel77.Caption:=Edit6.Text;
QRLabel74.Caption:=Query1.FieldByName('der').AsString+' / '+
Query1.FieldByName('kad').AsString;

QuickRep1.Preview;
Query1.Close;

       finally free;end;

end;

procedure TFHasta.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=Chr(VK_Return) Then Perform(Wm_NextDlgCtl,0 ,0);
end;

procedure TFHasta.BitBtn1Click(Sender: TObject);
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

procedure TFHasta.FormCreate(Sender: TObject);
begin
//FData.TSicil3.Open;
Edit6.Text:=FData.UniSistemBaskan.AsString;
end;

procedure TFHasta.BitBtn2Click(Sender: TObject);
begin
  with TFRHasta.Create( Application ) do
       try

Query1.Open;
QRLabel27.Caption:=Query1.Fields[2].AsString+' '+Query1.Fields[1].AsString;

//QRLabel28.Caption:=Edit1.Text;
QRLabel30.Caption:=Edit3.Text;
QRLabel31.Caption:=Edit4.Text;
QRLabel34.Caption:=Edit5.Text;
QRLabel35.Caption:=Edit6.Text;
QRLabel32.Caption:=Query1.FieldByName('der').AsString+' / '+
Query1.FieldByName('kad').AsString;

QRLabel69.Caption:=Query1.Fields[2].AsString+' '+Query1.Fields[1].AsString;

//QRLabel70.Caption:=Edit1.Text;
QRLabel72.Caption:=Edit3.Text;
QRLabel73.Caption:=Edit4.Text;
QRLabel76.Caption:=Edit5.Text;
QRLabel77.Caption:=Edit6.Text;
QRLabel74.Caption:=Query1.FieldByName('der').AsString+' / '+
Query1.FieldByName('kad').AsString;

QuickRep2.Preview;
Query1.Close;

       finally free;end;

end;

procedure TFHasta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//FData.TSicil3.Close;

end;

end.
