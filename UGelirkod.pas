unit UGelirkod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Uni, DBAccess, MemDS,
  CRGrid;

type
  TFGelirkod = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Table1: TUniTable;
    DataSource1: TDataSource;
    CRDBGrid1: TCRDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGelirkod: TFGelirkod;

implementation

uses UData;

{$R *.dfm}

procedure TFGelirkod.BitBtn1Click(Sender: TObject);
begin
Close;
end;

end.
