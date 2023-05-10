unit URAPMENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls,math;

type
  TFRAPMENU = class(TForm)
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn18: TBitBtn;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRAPMENU: TFRAPMENU;

implementation

uses  UAyEmek, UKazanlar, UKesitlar, UNetler, UYilEm, URKdv,
  USicilLis, USendika, URSendika,  UData, URYilEm, URIcra, UKefuc,
  UAyem2, UAsker, UIlac, UHasta, USicilAra;

{$R *.DFM}


procedure TFRAPMENU.BitBtn10Click(Sender: TObject);
begin

Close;
end;

procedure TFRAPMENU.BitBtn8Click(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
  with TFKazanlar.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn13Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFKesitlar.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFRAPMENU.BitBtn17Click(Sender: TObject);
Begin
  with TFAyEmek.Create( Self ) do
   	try
          ShowModal;
        finally
        free;
   end;
End;
 procedure TFRAPMENU.BitBtn5Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFRYilEm.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFRAPMENU.BitBtn7Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFNetler.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFRAPMENU.BitBtn4Click(Sender: TObject);
begin


  with TFRKdv.Create( Self ) do
   	try
          ShowModal;
        finally
        free;
   end;
end;

procedure TFRAPMENU.BitBtn16Click(Sender: TObject);
begin

  with TFSicillis.Create( Self ) do
   	try
          ShowModal;
        finally
        free;
   end;

end;


procedure TFRAPMENU.BitBtn1Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFRSendika.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn3Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFSendika.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;


procedure TFRAPMENU.BitBtn9Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFRIcra.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn6Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFKefuc.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn2Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFAyem2.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;
end;

procedure TFRAPMENU.BitBtn11Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFAsker.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn18Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFIlac.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFRAPMENU.BitBtn14Click(Sender: TObject);
var
_EX:boolean;
begin
	_EX := false;
        Screen.Cursor := crHourGlass;
  with TFSicilAra.Create( Application ) do begin
   	try
      if ShowModal=mrCancel then _EX:=true;
    finally
   		free;
		end;
 	end;
	Screen.Cursor := crDefault;
	if _EX then exit;
	Screen.Cursor := crHourGlass;
  with TFHasta.Create( Application ) do begin
   	try
      ShowModal;
    finally
      free;
      End;
 	end;
	Screen.Cursor := crDefault;
end;

end.
