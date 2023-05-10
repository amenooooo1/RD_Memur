unit UGosterge;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids;

type
  TFGosterge = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditYil: TDBEdit;
    Label2: TLabel;
    EditAy: TDBEdit;
    Label3: TLabel;
    EditDonem: TDBEdit;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FGosterge: TFGosterge;

implementation

uses UMEMUR;

{$R *.DFM}

end.
