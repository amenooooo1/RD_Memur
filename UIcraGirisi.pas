unit UIcraGirisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBAccess, Uni, MemDS;

type
  TFIcraGirisi = class(TForm)
    Panel1: TPanel;
    Vazgec: TBitBtn;
    DBGrid1: TDBGrid;
    procedure VazgecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIcraGirisi: TFIcraGirisi;

implementation

uses UData;

{$R *.dfm}

procedure TFIcraGirisi.VazgecClick(Sender: TObject);
begin
Close;
end;

end.
