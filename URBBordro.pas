unit URBBordro;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TFRBBordro = class(TForm)
    QuickR2: TQuickRep;
    QRGroup3: TQRGroup;
    QRGroup4: TQRGroup;
    QRBand3: TQRBand;
    QRDBText95: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRDBText103: TQRDBText;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRDBText104: TQRDBText;
    QRDBText253: TQRDBText;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRDBText254: TQRDBText;
    QRDBText255: TQRDBText;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRDBText256: TQRDBText;
    QRExpr18: TQRExpr;
    QRDBText257: TQRDBText;
    QRExpr19: TQRExpr;
    QRDBText258: TQRDBText;
    QRExpr20: TQRExpr;
    QRDBText259: TQRDBText;
    QRDBText260: TQRDBText;
    QRLabel12: TQRLabel;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRDBText261: TQRDBText;
    QRDBText262: TQRDBText;
    QRDBText263: TQRDBText;
    QRDBText264: TQRDBText;
    QRDBText265: TQRDBText;
    QRDBText266: TQRDBText;
    QRDBText267: TQRDBText;
    QRDBText268: TQRDBText;
    QRDBText269: TQRDBText;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRDBText270: TQRDBText;
    QRDBText271: TQRDBText;
    QRDBText272: TQRDBText;
    QRDBText273: TQRDBText;
    QRDBText274: TQRDBText;
    QRDBText275: TQRDBText;
    QRLabel16: TQRLabel;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRDBText276: TQRDBText;
    QRDBText277: TQRDBText;
    QRDBText278: TQRDBText;
    QRDBText279: TQRDBText;
    QRDBText280: TQRDBText;
    QRDBText281: TQRDBText;
    QRDBText282: TQRDBText;
    QRDBText385: TQRDBText;
    QRDBText386: TQRDBText;
    QRDBText387: TQRDBText;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRDBText388: TQRDBText;
    QRDBText389: TQRDBText;
    QRDBText390: TQRDBText;
    QRDBText391: TQRDBText;
    QRDBText392: TQRDBText;
    QRExpr49: TQRExpr;
    QRLabel60: TQRLabel;
    QRExpr50: TQRExpr;
    QRLabel61: TQRLabel;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr53: TQRExpr;
    QRLabel63: TQRLabel;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRLabel64: TQRLabel;
    QRExpr56: TQRExpr;
    QRLabel65: TQRLabel;
    QRExpr57: TQRExpr;
    QRLabel66: TQRLabel;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRLabel118: TQRLabel;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRLabel119: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRLabel123: TQRLabel;
    QRExpr67: TQRExpr;
    QRExpr201: TQRExpr;
    QRLabel124: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape25: TQRShape;
    QRShape31: TQRShape;
    QRChildBand1: TQRChildBand;
    QRBand5: TQRBand;
    QRDBText10: TQRDBText;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText86: TQRDBText;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText24: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand7: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel28: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText47: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText84: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText85: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRShape19: TQRShape;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr68: TQRExpr;
    QRExpr71: TQRExpr;
    QRExpr80: TQRExpr;
    QRExpr81: TQRExpr;
    QRExpr82: TQRExpr;
    QRExpr83: TQRExpr;
    QRExpr84: TQRExpr;
    QRExpr85: TQRExpr;
    QRExpr86: TQRExpr;
    QRExpr87: TQRExpr;
    QRExpr88: TQRExpr;
    QRExpr89: TQRExpr;
    QRExpr90: TQRExpr;
    QRExpr91: TQRExpr;
    QRExpr92: TQRExpr;
    QRExpr93: TQRExpr;
    QRExpr94: TQRExpr;
    QRExpr95: TQRExpr;
    QRExpr96: TQRExpr;
    QRExpr97: TQRExpr;
    QRExpr98: TQRExpr;
    QRExpr99: TQRExpr;
    QRExpr100: TQRExpr;
    QRExpr101: TQRExpr;
    QRExpr102: TQRExpr;
    QRExpr103: TQRExpr;
    QRExpr104: TQRExpr;
    QRExpr105: TQRExpr;
    QRExpr106: TQRExpr;
    QRExpr107: TQRExpr;
    QRExpr108: TQRExpr;
    QRExpr109: TQRExpr;
    QRExpr110: TQRExpr;
    QRExpr111: TQRExpr;
    QRExpr112: TQRExpr;
    QRExpr113: TQRExpr;
    QRExpr114: TQRExpr;
    QRExpr115: TQRExpr;
    QRExpr116: TQRExpr;
    QRExpr117: TQRExpr;
    QRExpr118: TQRExpr;
    QRExpr119: TQRExpr;
    QRExpr120: TQRExpr;
    QRExpr121: TQRExpr;
    QRExpr122: TQRExpr;
    QRExpr123: TQRExpr;
    QRExpr124: TQRExpr;
    QRExpr125: TQRExpr;
    QRExpr126: TQRExpr;
    QRLabel78: TQRLabel;
    QRExpr127: TQRExpr;
    QRLabel79: TQRLabel;
    QRExpr128: TQRExpr;
    QRDBText107: TQRDBText;
    QRLabel80: TQRLabel;
    QRExpr129: TQRExpr;
    QRLabel81: TQRLabel;
    QRExpr130: TQRExpr;
    QRExpr131: TQRExpr;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRExpr132: TQRExpr;
    QRExpr133: TQRExpr;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRExpr134: TQRExpr;
    QRExpr135: TQRExpr;
    QRLabel82: TQRLabel;
    QRExpr136: TQRExpr;
    QRLabel83: TQRLabel;
    QRShape26: TQRShape;
    QRDBText112: TQRDBText;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRLabel86: TQRLabel;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRShape27: TQRShape;
    QRExpr137: TQRExpr;
  private
  end;

var
  FRBBordro: TFRBBordro;

implementation

uses UMEMUR;

{$R *.DFM}
























end.
