unit UHESMENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFHESMENU = class(TForm)
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHESMENU: TFHESMENU;

implementation

uses USicilAra, UDonNet,  UHesapi, UHesNet,  UTopHesap, UBordro,  UNakit;

{$R *.DFM}


procedure TFHESMENU.BitBtn8Click(Sender: TObject);
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
  with TFHesap.Create( Application ) do begin
   	try
      ShowModal;
    finally
      free;
      End;
 	end;
	Screen.Cursor := crDefault;
end;

procedure TFHESMENU.BitBtn13Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFBordro.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFHESMENU.BitBtn11Click(Sender: TObject);
begin
	Screen.Cursor := crHourGlass;
  with TFNAkit.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFHESMENU.BitBtn1Click(Sender: TObject);
begin
       	Screen.Cursor := crHourGlass;
  with TFDonNet.Create( Self ) do
   	try
	  Screen.Cursor := crDefault;
          ShowModal;
        finally
        free;
   end;

end;

procedure TFHESMENU.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TFHESMENU.BitBtn15Click(Sender: TObject);
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
  with TFHesNet.Create( Application ) do begin
   	try
      ShowModal;
    finally
      free;
      End;
 	end;
	Screen.Cursor := crDefault;
 end;


end.
