unit URKdv;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Uni, DBAccess, MemDS, Grids,
  DBGrids, Buttons, frxDesgn, frxClass, frxDBSet;

type
  TFRKdv = class(TForm)
    DataSource1: TDataSource;
    Query1: TUniQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button2: TButton;
    frxDBDataset3: TfrxDBDataset;
    Query1Sicno: TIntegerField;
    Query1Adi: TWideStringField;
    Query1Soyadi: TWideStringField;
    Query1Yil: TWideStringField;
    Query1Ay: TWideStringField;
    Query1Pkaz23: TFloatField;
    Query1Pka17: TFloatField;
    Query1Pka18: TFloatField;
    Query1Pka19: TFloatField;
    Table1: TUniQuery;
    UniQdosya1: TUniQuery;
    procedure VazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  end;

var
  FRKdv: TFRKdv;

implementation

uses  UData;

{$R *.DFM}



























procedure TFRKdv.VazgecClick(Sender: TObject);
begin
Table1.Open;
Close;
end;





procedure TFRKdv.FormCreate(Sender: TObject);
begin
 Query1.Open;
UniQdosya1.Execute;
 Table1.Open;

end;

procedure TFRKdv.Button1Click(Sender: TObject);
begin
UniQdosya1.Execute;

 Table1.Refresh;
While not Query1.Eof do
begin
        if not (Table1.Locate('Sicno',Query1Sicno.Value,[loPartialKey])) then
          BEGIN
            Table1.Insert;
            Table1.Fields[0].Value:=Query1Sicno.Value;
            Table1.Fields[1].Value:=Query1Adi.Value+' '+Query1Soyadi.Value;
            Table1.Post;
          END;
         Table1.Edit;
         Table1.FieldByName('s1').value:= Query1.FieldByName('Pka17').value*100;
         Table1.FieldByName('s2').value:= Query1.FieldByName('Pka18').value;
         Table1.FieldByName('s3').value:= Query1.FieldByName('Pkaz23').value;
         If Table1.FieldByName('A1').AsString='' then
          Table1.FieldByName('A1').value:=0;
         If Query1.FieldByName('Ay').asstring='01' Then
          Table1.FieldByName('A1').value:=Table1.FieldByName('A1').AsCurrency+
           Query1.FieldByName('Pkaz23').AsCurrency;
         If Query1.FieldByName('Ay').asstring='02' Then
           Table1.FieldByName('A2').value:=Table1.FieldByName('A2').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='03' Then
           Table1.FieldByName('A3').value:=Table1.FieldByName('A3').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='04' Then
           Table1.FieldByName('A4').value:=Table1.FieldByName('A4').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='05' Then
           Table1.FieldByName('A5').value:=Table1.FieldByName('A5').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='06' Then
           Table1.FieldByName('A6').value:=Table1.FieldByName('A6').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='07' Then
           Table1.FieldByName('A7').value:=Table1.FieldByName('A7').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='08' Then
           Table1.FieldByName('A8').value:=Table1.FieldByName('A8').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='09' Then
           Table1.FieldByName('A9').value:=Table1.FieldByName('A9').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='10' Then
           Table1.FieldByName('A10').value:=Table1.FieldByName('A10').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='11' Then
           Table1.FieldByName('A11').value:=Table1.FieldByName('A11').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
         If Query1.FieldByName('Ay').asstring='12' Then
           Table1.FieldByName('A12').value:=Table1.FieldByName('A12').AsCurrency+
           Query1.FieldByName('Pkaz23').value;
        Table1.Post;
Query1.Next;
end;

end;

procedure TFRKdv.Button2Click(Sender: TObject);
begin
Table1.Filtered:=True;

(frxReport1.FindObject('memo65') as TfrxMemoView).Text:=FData.TDONEMYil.Value+' YILI ';

frxReport1.ShowReport;
Table1.Filtered:=False;

end;

end.
