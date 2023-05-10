unit UHakkinda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, jpeg;

type
  TFHakkinda = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHakkinda: TFHakkinda;

implementation

uses  UMEMUR;

{$R *.dfm}

end.
