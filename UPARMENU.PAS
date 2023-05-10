unit UPARMENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFPARMENU = class(TForm)
    Panel1: TPanel;
    BitBtn13: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn10: TBitBtn;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPARMENU: TFPARMENU;

implementation

uses UGelir, USistem, Udonem, Udair, Ukesintiler, Ukatsayilar, Ukazanclar,
   UGostergeler, USsk, UDonemtas;

{$R *.DFM}


procedure TFPARMENU.BitBtn10Click(Sender: TObject);
begin
Close;
end;

procedure TFPARMENU.BitBtn7Click(Sender: TObject);
begin
      Screen.Cursor := crHourGlass;
  with TFkatsayilar.Create( Self ) do
   	try
         Screen.Cursor := crDefault;
         ShowModal;
    finally
     free;
 end;
end;

procedure TFPARMENU.BitBtn11Click(Sender: TObject);
begin
    Screen.Cursor := crHourGlass;
  with TFkazanclar.Create( Self ) do
   	try
       	Screen.Cursor := crDefault;
          ShowModal;
      finally
  		free;
 	end;
end;

procedure TFPARMENU.BitBtn13Click(Sender: TObject);
begin
    Screen.Cursor := crHourGlass;
  with TFdonem.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFPARMENU.BitBtn1Click(Sender: TObject);
begin
{Screen.Cursor := crHourGlass;
  with TFKdv.Create( Self ) do
   	try
      	Screen.Cursor := crDefault;
          ShowModal;
    finally
      free;
 end;}
end;

procedure TFPARMENU.BitBtn18Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFkesintiler.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFPARMENU.BitBtn5Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFGelir.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFPARMENU.BitBtn12Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFGostergeler.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFPARMENU.BitBtn2Click(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  with TFSsk.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFPARMENU.BitBtn3Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFSistem.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFPARMENU.BitBtn9Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFDaire.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFPARMENU.BitBtn14Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFDonemtas.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;



end.
