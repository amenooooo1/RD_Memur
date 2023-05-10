unit URBordro;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TFRBordro = class(TForm)
    QuickR4: TQuickRep;
    QRGroup3: TQRGroup;
    QRGroup4: TQRGroup;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
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
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRLabel124: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape16: TQRShape;
    QRChildBand1: TQRChildBand;
    QRBand5: TQRBand;
    QRDBText10: TQRDBText;
    QRBand6: TQRBand;
    QRShape2: TQRShape;
    QRDBText18: TQRDBText;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRExpr33: TQRExpr;
    QRDBText21: TQRDBText;
    QRExpr34: TQRExpr;
    QRDBText22: TQRDBText;
    QRExpr35: TQRExpr;
    QRDBText24: TQRDBText;
    QRExpr36: TQRExpr;
    QRDBText25: TQRDBText;
    QRExpr37: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr38: TQRExpr;
    QRDBText27: TQRDBText;
    QRExpr12: TQRExpr;
    QRDBText29: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText47: TQRDBText;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText50: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRDBText61: TQRDBText;
    QRExpr11: TQRExpr;
    QRDBText62: TQRDBText;
    QRExpr16: TQRExpr;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRExpr17: TQRExpr;
    QRDBText63: TQRDBText;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRDBText67: TQRDBText;
    QRExpr27: TQRExpr;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText79: TQRDBText;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr100: TQRExpr;
    QRExpr115: TQRExpr;
    QRLabel17: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel29: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel36: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr53: TQRExpr;
    QRExpr56: TQRExpr;
    QRBand7: TQRBand;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText94: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText95: TQRDBText;
    QRLabel74: TQRLabel;
    QRLabel34: TQRLabel;
    QRExpr18: TQRExpr;
    QRLabel35: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel37: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr57: TQRExpr;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText96: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRShape25: TQRShape;
    QRExpr58: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRExpr67: TQRExpr;
    QRExpr68: TQRExpr;
    QRExpr69: TQRExpr;
    QRExpr70: TQRExpr;
    QRExpr71: TQRExpr;
    QRExpr72: TQRExpr;
    QRExpr73: TQRExpr;
    QRExpr74: TQRExpr;
    QRExpr75: TQRExpr;
    QRExpr76: TQRExpr;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
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
    QRExpr116: TQRExpr;
    QRExpr117: TQRExpr;
    QRLabel81: TQRLabel;
    QRExpr118: TQRExpr;
    QRLabel82: TQRLabel;
    QRExpr119: TQRExpr;
    QRExpr120: TQRExpr;
    QRDBText129: TQRDBText;
    QRLabel83: TQRLabel;
    QRExpr121: TQRExpr;
    QRLabel84: TQRLabel;
    QRExpr122: TQRExpr;
    QRExpr123: TQRExpr;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRExpr124: TQRExpr;
    QRExpr125: TQRExpr;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRExpr126: TQRExpr;
    QRExpr127: TQRExpr;
    QRLabel85: TQRLabel;
    QRExpr128: TQRExpr;
    QRLabel86: TQRLabel;
    QRShape26: TQRShape;
    QRLabel87: TQRLabel;
    QRDBText134: TQRDBText;
    QRLabel88: TQRLabel;
    QRDBText135: TQRDBText;
    QRLabel89: TQRLabel;
    QRDBText136: TQRDBText;
    QRShape27: TQRShape;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QuickR2: TQuickRep;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr129: TQRExpr;
    QRExpr130: TQRExpr;
    QRExpr131: TQRExpr;
    QRExpr132: TQRExpr;
    QRDBText7: TQRDBText;
    QRExpr133: TQRExpr;
    QRExpr134: TQRExpr;
    QRDBText8: TQRDBText;
    QRDBText253: TQRDBText;
    QRExpr135: TQRExpr;
    QRExpr136: TQRExpr;
    QRDBText254: TQRDBText;
    QRDBText255: TQRDBText;
    QRExpr137: TQRExpr;
    QRExpr138: TQRExpr;
    QRDBText256: TQRDBText;
    QRExpr139: TQRExpr;
    QRDBText257: TQRDBText;
    QRExpr140: TQRExpr;
    QRDBText258: TQRDBText;
    QRExpr141: TQRExpr;
    QRDBText259: TQRDBText;
    QRDBText260: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr142: TQRExpr;
    QRExpr143: TQRExpr;
    QRExpr144: TQRExpr;
    QRExpr145: TQRExpr;
    QRDBText261: TQRDBText;
    QRDBText262: TQRDBText;
    QRDBText263: TQRDBText;
    QRDBText264: TQRDBText;
    QRDBText265: TQRDBText;
    QRDBText266: TQRDBText;
    QRDBText267: TQRDBText;
    QRDBText268: TQRDBText;
    QRDBText269: TQRDBText;
    QRExpr146: TQRExpr;
    QRExpr147: TQRExpr;
    QRExpr148: TQRExpr;
    QRExpr149: TQRExpr;
    QRExpr150: TQRExpr;
    QRExpr151: TQRExpr;
    QRDBText270: TQRDBText;
    QRDBText271: TQRDBText;
    QRDBText272: TQRDBText;
    QRDBText273: TQRDBText;
    QRDBText274: TQRDBText;
    QRDBText275: TQRDBText;
    QRLabel5: TQRLabel;
    QRExpr152: TQRExpr;
    QRExpr153: TQRExpr;
    QRExpr154: TQRExpr;
    QRExpr155: TQRExpr;
    QRExpr156: TQRExpr;
    QRExpr157: TQRExpr;
    QRExpr158: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRExpr159: TQRExpr;
    QRExpr160: TQRExpr;
    QRExpr161: TQRExpr;
    QRExpr162: TQRExpr;
    QRExpr163: TQRExpr;
    QRExpr164: TQRExpr;
    QRExpr165: TQRExpr;
    QRExpr166: TQRExpr;
    QRExpr167: TQRExpr;
    QRExpr168: TQRExpr;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRExpr169: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr170: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr171: TQRExpr;
    QRExpr172: TQRExpr;
    QRLabel8: TQRLabel;
    QRExpr173: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr174: TQRExpr;
    QRExpr175: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr176: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr177: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr178: TQRExpr;
    QRExpr179: TQRExpr;
    QRLabel118: TQRLabel;
    QRExpr180: TQRExpr;
    QRExpr181: TQRExpr;
    QRLabel119: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRExpr182: TQRExpr;
    QRExpr183: TQRExpr;
    QRLabel123: TQRLabel;
    QRExpr184: TQRExpr;
    QRExpr201: TQRExpr;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRChildBand2: TQRChildBand;
    QRBand2: TQRBand;
    QRDBText48: TQRDBText;
    QRBand8: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape18: TQRShape;
    QRBand9: TQRBand;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText58: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText66: TQRDBText;
    QRBand10: TQRBand;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRExpr185: TQRExpr;
    QRLabel92: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText84: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRLabel94: TQRLabel;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRDBText155: TQRDBText;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRShape19: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRShape36: TQRShape;
    QRExpr186: TQRExpr;
    QRExpr187: TQRExpr;
    QRExpr188: TQRExpr;
    QRExpr189: TQRExpr;
    QRExpr190: TQRExpr;
    QRExpr191: TQRExpr;
    QRExpr192: TQRExpr;
    QRExpr193: TQRExpr;
    QRExpr194: TQRExpr;
    QRExpr195: TQRExpr;
    QRExpr196: TQRExpr;
    QRExpr197: TQRExpr;
    QRExpr198: TQRExpr;
    QRExpr199: TQRExpr;
    QRExpr200: TQRExpr;
    QRExpr202: TQRExpr;
    QRExpr203: TQRExpr;
    QRExpr204: TQRExpr;
    QRExpr205: TQRExpr;
    QRExpr206: TQRExpr;
    QRExpr207: TQRExpr;
    QRExpr208: TQRExpr;
    QRExpr209: TQRExpr;
    QRExpr210: TQRExpr;
    QRExpr211: TQRExpr;
    QRExpr212: TQRExpr;
    QRExpr213: TQRExpr;
    QRExpr214: TQRExpr;
    QRExpr215: TQRExpr;
    QRExpr216: TQRExpr;
    QRExpr217: TQRExpr;
    QRExpr218: TQRExpr;
    QRExpr219: TQRExpr;
    QRExpr220: TQRExpr;
    QRExpr221: TQRExpr;
    QRExpr222: TQRExpr;
    QRExpr223: TQRExpr;
    QRExpr224: TQRExpr;
    QRExpr225: TQRExpr;
    QRExpr226: TQRExpr;
    QRExpr227: TQRExpr;
    QRExpr228: TQRExpr;
    QRExpr229: TQRExpr;
    QRExpr230: TQRExpr;
    QRExpr231: TQRExpr;
    QRExpr232: TQRExpr;
    QRExpr233: TQRExpr;
    QRExpr234: TQRExpr;
    QRExpr235: TQRExpr;
    QRExpr236: TQRExpr;
    QRExpr237: TQRExpr;
    QRExpr238: TQRExpr;
    QRExpr239: TQRExpr;
    QRExpr240: TQRExpr;
    QRExpr241: TQRExpr;
    QRExpr242: TQRExpr;
    QRLabel110: TQRLabel;
    QRExpr243: TQRExpr;
    QRLabel111: TQRLabel;
    QRExpr244: TQRExpr;
    QRDBText166: TQRDBText;
    QRLabel112: TQRLabel;
    QRExpr245: TQRExpr;
    QRLabel113: TQRLabel;
    QRExpr246: TQRExpr;
    QRExpr247: TQRExpr;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRExpr248: TQRExpr;
    QRExpr249: TQRExpr;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRExpr250: TQRExpr;
    QRExpr251: TQRExpr;
    QRLabel114: TQRLabel;
    QRExpr252: TQRExpr;
    QRLabel115: TQRLabel;
    QRShape37: TQRShape;
    QRDBText171: TQRDBText;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRLabel120: TQRLabel;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRShape38: TQRShape;
    QRExpr253: TQRExpr;
    QRLabel125: TQRLabel;
    QRExpr254: TQRExpr;
    QRLabel126: TQRLabel;
    QRExpr255: TQRExpr;
    QRLabel127: TQRLabel;
    QRExpr256: TQRExpr;
    QRLabel128: TQRLabel;
    QRExpr257: TQRExpr;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
  private
  end;

var
  FRBordro: TFRBordro;

implementation

uses UData;

{$R *.DFM}







































































































end.
