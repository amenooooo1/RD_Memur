unit URBorKuc;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Uni, DBAccess, MemDS;

type
  TFRBorKuc = class(TForm)
    QuickR2: TQuickRep;
    QRGroup4: TQRGroup;
    QRGroup6: TQRGroup;
    QRChildBand2: TQRChildBand;
    QRBand2: TQRBand;
    QRBand5: TQRBand;
    QRShape1: TQRShape;
    QRBand6: TQRBand;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
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
    QRLabel56: TQRLabel;
    QRExpr123: TQRExpr;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRExpr124: TQRExpr;
    QRExpr125: TQRExpr;
    QRDBText106: TQRDBText;
    QRExpr126: TQRExpr;
    QRLabel57: TQRLabel;
    QRExpr127: TQRExpr;
    QRExpr128: TQRExpr;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRExpr129: TQRExpr;
    QRLabel58: TQRLabel;
    QRExpr130: TQRExpr;
    QRExpr131: TQRExpr;
    QRLabel59: TQRLabel;
    QRExpr132: TQRExpr;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRExpr133: TQRExpr;
    QRLabel60: TQRLabel;
    QRExpr134: TQRExpr;
    QRLabel61: TQRLabel;
    QRExpr135: TQRExpr;
    QRExpr136: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr137: TQRExpr;
    QRLabel63: TQRLabel;
    QRExpr138: TQRExpr;
    QRDBText111: TQRDBText;
    QRExpr139: TQRExpr;
    QRDBText112: TQRDBText;
    QRExpr140: TQRExpr;
    QRLabel64: TQRLabel;
    QRExpr141: TQRExpr;
    QRLabel65: TQRLabel;
    QRExpr142: TQRExpr;
    QRExpr143: TQRExpr;
    QRLabel66: TQRLabel;
    QRExpr144: TQRExpr;
    QRExpr145: TQRExpr;
    QRExpr146: TQRExpr;
    QRExpr147: TQRExpr;
    QRExpr148: TQRExpr;
    QRLabel67: TQRLabel;
    QRDBText113: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText114: TQRDBText;
    QRLabel70: TQRLabel;
    QRDBText115: TQRDBText;
    QRLabel75: TQRLabel;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRExpr149: TQRExpr;
    QRDBText120: TQRDBText;
    QRExpr150: TQRExpr;
    QRExpr151: TQRExpr;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRExpr152: TQRExpr;
    QRLabel77: TQRLabel;
    QRExpr153: TQRExpr;
    QRLabel78: TQRLabel;
    QRExpr154: TQRExpr;
    QRShape6: TQRShape;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRExpr157: TQRExpr;
    QRDBText125: TQRDBText;
    QRExpr161: TQRExpr;
    QRExpr162: TQRExpr;
    QRDBText126: TQRDBText;
    QRExpr163: TQRExpr;
    QRLabel87: TQRLabel;
    QRExpr165: TQRExpr;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRExpr11: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr38: TQRExpr;
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
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr54: TQRExpr;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRDBText51: TQRDBText;
    QRExpr57: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRExpr60: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRLabel13: TQRLabel;
    QRExpr63: TQRExpr;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRExpr64: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr65: TQRExpr;
    QRLabel15: TQRLabel;
    QRExpr66: TQRExpr;
    QRExpr67: TQRExpr;
    QRLabel21: TQRLabel;
    QRExpr68: TQRExpr;
    QRLabel22: TQRLabel;
    QRExpr69: TQRExpr;
    QRDBText56: TQRDBText;
    QRExpr70: TQRExpr;
    QRDBText57: TQRDBText;
    QRExpr71: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr72: TQRExpr;
    QRLabel24: TQRLabel;
    QRExpr73: TQRExpr;
    QRExpr74: TQRExpr;
    QRLabel25: TQRLabel;
    QRExpr75: TQRExpr;
    QRExpr76: TQRExpr;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
    QRLabel26: TQRLabel;
    QRDBText58: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText59: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText60: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRExpr80: TQRExpr;
    QRDBText65: TQRDBText;
    QRExpr81: TQRExpr;
    QRExpr82: TQRExpr;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRExpr83: TQRExpr;
    QRLabel31: TQRLabel;
    QRExpr84: TQRExpr;
    QRLabel32: TQRLabel;
    QRExpr85: TQRExpr;
    QRShape3: TQRShape;
    QRLabel33: TQRLabel;
    QRExpr86: TQRExpr;
    QRLabel34: TQRLabel;
    QRExpr87: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRExpr88: TQRExpr;
    QRDBText70: TQRDBText;
    QRExpr89: TQRExpr;
    QRExpr90: TQRExpr;
    QRLabel40: TQRLabel;
    QRExpr91: TQRExpr;
    QRExpr92: TQRExpr;
    QRExpr93: TQRExpr;
    QRDBText71: TQRDBText;
    QRExpr94: TQRExpr;
    QRLabel41: TQRLabel;
    QRExpr95: TQRExpr;
    QRExpr100: TQRExpr;
    QRDBText72: TQRDBText;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRChildBand1: TQRChildBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRShape2: TQRShape;
    QRBand7: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr25: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr26: TQRExpr;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRDBText135: TQRDBText;
    QRExpr31: TQRExpr;
    QRLabel17: TQRLabel;
    QRExpr37: TQRExpr;
    QRExpr96: TQRExpr;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRExpr97: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr98: TQRExpr;
    QRExpr99: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr155: TQRExpr;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRExpr156: TQRExpr;
    QRLabel20: TQRLabel;
    QRExpr158: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr159: TQRExpr;
    QRExpr160: TQRExpr;
    QRLabel36: TQRLabel;
    QRExpr164: TQRExpr;
    QRLabel42: TQRLabel;
    QRExpr166: TQRExpr;
    QRDBText140: TQRDBText;
    QRExpr167: TQRExpr;
    QRDBText141: TQRDBText;
    QRExpr168: TQRExpr;
    QRLabel43: TQRLabel;
    QRExpr169: TQRExpr;
    QRLabel44: TQRLabel;
    QRExpr170: TQRExpr;
    QRExpr171: TQRExpr;
    QRLabel45: TQRLabel;
    QRExpr172: TQRExpr;
    QRExpr173: TQRExpr;
    QRExpr174: TQRExpr;
    QRExpr175: TQRExpr;
    QRExpr176: TQRExpr;
    QRLabel46: TQRLabel;
    QRDBText142: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText143: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText144: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRExpr177: TQRExpr;
    QRDBText149: TQRDBText;
    QRExpr178: TQRExpr;
    QRExpr179: TQRExpr;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRExpr180: TQRExpr;
    QRLabel51: TQRLabel;
    QRExpr181: TQRExpr;
    QRLabel52: TQRLabel;
    QRExpr182: TQRExpr;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRExpr183: TQRExpr;
    QRDBText154: TQRDBText;
    QRExpr184: TQRExpr;
    QRExpr185: TQRExpr;
    QRDBText155: TQRDBText;
    QRExpr186: TQRExpr;
    QRLabel74: TQRLabel;
    QRExpr187: TQRExpr;
    QRLabel76: TQRLabel;
    QRDBText156: TQRDBText;
    QRLabel79: TQRLabel;
    QRDBText157: TQRDBText;
    QRLabel80: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRDBText161: TQRDBText;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRShape4: TQRShape;
    QRDBText162: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand8: TQRBand;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRExpr188: TQRExpr;
    QRLabel107: TQRLabel;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRDBText176: TQRDBText;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRDBText179: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText182: TQRDBText;
    QRDBText183: TQRDBText;
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
    QRExpr201: TQRExpr;
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
    QRLabel110: TQRLabel;
    QRExpr214: TQRExpr;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRDBText187: TQRDBText;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRDBText190: TQRDBText;
    QRExpr215: TQRExpr;
    QRExpr216: TQRExpr;
    QRDBText191: TQRDBText;
    QRExpr217: TQRExpr;
    QRLabel111: TQRLabel;
    QRExpr218: TQRExpr;
    QRExpr219: TQRExpr;
    QRDBText192: TQRDBText;
    QRDBText193: TQRDBText;
    QRExpr220: TQRExpr;
    QRLabel112: TQRLabel;
    QRExpr221: TQRExpr;
    QRExpr222: TQRExpr;
    QRLabel113: TQRLabel;
    QRExpr223: TQRExpr;
    QRDBText194: TQRDBText;
    QRDBText195: TQRDBText;
    QRExpr224: TQRExpr;
    QRLabel114: TQRLabel;
    QRExpr225: TQRExpr;
    QRLabel115: TQRLabel;
    QRExpr226: TQRExpr;
    QRExpr227: TQRExpr;
    QRLabel116: TQRLabel;
    QRExpr228: TQRExpr;
    QRLabel117: TQRLabel;
    QRExpr229: TQRExpr;
    QRDBText196: TQRDBText;
    QRExpr230: TQRExpr;
    QRDBText197: TQRDBText;
    QRExpr231: TQRExpr;
    QRLabel118: TQRLabel;
    QRExpr232: TQRExpr;
    QRLabel119: TQRLabel;
    QRExpr233: TQRExpr;
    QRExpr234: TQRExpr;
    QRLabel120: TQRLabel;
    QRExpr235: TQRExpr;
    QRExpr236: TQRExpr;
    QRExpr237: TQRExpr;
    QRExpr238: TQRExpr;
    QRExpr239: TQRExpr;
    QRLabel121: TQRLabel;
    QRDBText198: TQRDBText;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRDBText199: TQRDBText;
    QRLabel124: TQRLabel;
    QRDBText200: TQRDBText;
    QRLabel125: TQRLabel;
    QRDBText201: TQRDBText;
    QRDBText202: TQRDBText;
    QRDBText203: TQRDBText;
    QRDBText204: TQRDBText;
    QRExpr240: TQRExpr;
    QRDBText205: TQRDBText;
    QRExpr241: TQRExpr;
    QRExpr242: TQRExpr;
    QRDBText206: TQRDBText;
    QRDBText207: TQRDBText;
    QRExpr243: TQRExpr;
    QRLabel126: TQRLabel;
    QRExpr244: TQRExpr;
    QRLabel127: TQRLabel;
    QRExpr245: TQRExpr;
    QRLabel128: TQRLabel;
    QRExpr246: TQRExpr;
    QRLabel129: TQRLabel;
    QRExpr247: TQRExpr;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRDBText208: TQRDBText;
    QRDBText209: TQRDBText;
    QRExpr248: TQRExpr;
    QRDBText210: TQRDBText;
    QRExpr249: TQRExpr;
    QRExpr250: TQRExpr;
    QRLabel133: TQRLabel;
    QRExpr251: TQRExpr;
    QRExpr252: TQRExpr;
    QRExpr253: TQRExpr;
    QRDBText211: TQRDBText;
    QRExpr254: TQRExpr;
    QRLabel134: TQRLabel;
    QRExpr255: TQRExpr;
    QRExpr256: TQRExpr;
    QRShape5: TQRShape;
    QRDBText212: TQRDBText;
    QRLabel136: TQRLabel;
    QRExpr258: TQRExpr;
    QRLabel137: TQRLabel;
    QRExpr259: TQRExpr;
    QRLabel138: TQRLabel;
    QRExpr260: TQRExpr;
    QRLabel139: TQRLabel;
    QRExpr261: TQRExpr;
    QuickR1: TQuickRep;
    QRGroup3: TQRGroup;
    QRGroup5: TQRGroup;
    QRChildBand3: TQRChildBand;
    QRBand9: TQRBand;
    QRDBText213: TQRDBText;
    QRLabel135: TQRLabel;
    QRDBText214: TQRDBText;
    QRLabel140: TQRLabel;
    QRDBText215: TQRDBText;
    QRLabel141: TQRLabel;
    QRDBText216: TQRDBText;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRDBText217: TQRDBText;
    QRDBText218: TQRDBText;
    QRLabel145: TQRLabel;
    QRDBText222: TQRDBText;
    QRDBText223: TQRDBText;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRDBText219: TQRDBText;
    QRDBText220: TQRDBText;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRDBText221: TQRDBText;
    QRDBText224: TQRDBText;
    QRDBText225: TQRDBText;
    QRDBText226: TQRDBText;
    QRDBText227: TQRDBText;
    QRDBText228: TQRDBText;
    QRDBText229: TQRDBText;
    QRDBText230: TQRDBText;
    QRDBText231: TQRDBText;
    QRDBText232: TQRDBText;
    QRDBText233: TQRDBText;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRDBText234: TQRDBText;
    QRDBText235: TQRDBText;
    QRLabel152: TQRLabel;
    QRDBText236: TQRDBText;
    QRDBText237: TQRDBText;
    QRDBText238: TQRDBText;
    QRLabel153: TQRLabel;
    QRBand10: TQRBand;
    QRBand11: TQRBand;
    QRExpr257: TQRExpr;
    QRExpr262: TQRExpr;
    QRExpr263: TQRExpr;
    QRExpr264: TQRExpr;
    QRExpr265: TQRExpr;
    QRExpr266: TQRExpr;
    QRExpr267: TQRExpr;
    QRExpr268: TQRExpr;
    QRExpr269: TQRExpr;
    QRExpr270: TQRExpr;
    QRSysData3: TQRSysData;
    QRExpr271: TQRExpr;
    QRExpr272: TQRExpr;
    QRExpr273: TQRExpr;
    QRExpr274: TQRExpr;
    QRExpr275: TQRExpr;
    QRExpr276: TQRExpr;
    QRExpr277: TQRExpr;
    QRExpr278: TQRExpr;
    QRExpr279: TQRExpr;
    QRExpr280: TQRExpr;
    QRExpr281: TQRExpr;
    QRExpr282: TQRExpr;
    QRExpr283: TQRExpr;
    QRExpr284: TQRExpr;
    QRExpr285: TQRExpr;
    QRExpr286: TQRExpr;
    QRExpr287: TQRExpr;
    QRExpr288: TQRExpr;
    QRExpr289: TQRExpr;
    QRExpr290: TQRExpr;
    QRBand12: TQRBand;
    QRExpr291: TQRExpr;
    QRExpr292: TQRExpr;
    QRExpr293: TQRExpr;
    QRExpr294: TQRExpr;
    QRExpr295: TQRExpr;
    QRExpr296: TQRExpr;
    QRExpr297: TQRExpr;
    QRExpr298: TQRExpr;
    QRExpr299: TQRExpr;
    QRExpr300: TQRExpr;
    QRExpr301: TQRExpr;
    QRExpr302: TQRExpr;
    QRExpr303: TQRExpr;
    QRExpr304: TQRExpr;
    QRExpr305: TQRExpr;
    QRExpr306: TQRExpr;
    QRExpr307: TQRExpr;
    QRExpr308: TQRExpr;
    QRExpr309: TQRExpr;
    QRExpr310: TQRExpr;
    QRExpr311: TQRExpr;
    QRExpr312: TQRExpr;
    QRExpr313: TQRExpr;
    QRLabel154: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel155: TQRLabel;
    QRExpr314: TQRExpr;
    QRBand13: TQRBand;
    QRExpr315: TQRExpr;
    QRExpr316: TQRExpr;
    QRExpr317: TQRExpr;
    QRSysData5: TQRSysData;
    QRExpr318: TQRExpr;
    QRExpr319: TQRExpr;
    QRExpr320: TQRExpr;
    QRExpr321: TQRExpr;
    QRExpr322: TQRExpr;
    QRExpr323: TQRExpr;
    QRExpr324: TQRExpr;
    QRExpr325: TQRExpr;
    QRExpr326: TQRExpr;
    QRExpr327: TQRExpr;
    QRExpr328: TQRExpr;
    QRExpr329: TQRExpr;
    QRExpr330: TQRExpr;
    QRExpr331: TQRExpr;
    QRExpr332: TQRExpr;
    QRExpr333: TQRExpr;
    QRExpr334: TQRExpr;
    QRExpr335: TQRExpr;
    QRExpr336: TQRExpr;
    QRExpr337: TQRExpr;
    QRLabel156: TQRLabel;
    QRSysData6: TQRSysData;
    QRLabel157: TQRLabel;
    QRExpr338: TQRExpr;
    QuickRep2: TQuickRep;
    QRGroup7: TQRGroup;
    QRGroup8: TQRGroup;
    QRChildBand4: TQRChildBand;
    QRBand14: TQRBand;
    QRDBText239: TQRDBText;
    QRLabel158: TQRLabel;
    QRDBText240: TQRDBText;
    QRLabel159: TQRLabel;
    QRDBText241: TQRDBText;
    QRLabel160: TQRLabel;
    QRDBText242: TQRDBText;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRDBText243: TQRDBText;
    QRDBText244: TQRDBText;
    QRDBText245: TQRDBText;
    QRDBText246: TQRDBText;
    QRDBText247: TQRDBText;
    QRDBText248: TQRDBText;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRDBText249: TQRDBText;
    QRDBText250: TQRDBText;
    QRDBText251: TQRDBText;
    QRDBText252: TQRDBText;
    QRDBText253: TQRDBText;
    QRDBText254: TQRDBText;
    QRDBText255: TQRDBText;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRDBText256: TQRDBText;
    QRDBText257: TQRDBText;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRDBText258: TQRDBText;
    QRDBText259: TQRDBText;
    QRDBText260: TQRDBText;
    QRDBText261: TQRDBText;
    QRBand15: TQRBand;
    QRBand16: TQRBand;
    QRExpr339: TQRExpr;
    QRExpr340: TQRExpr;
    QRExpr341: TQRExpr;
    QRExpr342: TQRExpr;
    QRSysData7: TQRSysData;
    QRExpr343: TQRExpr;
    QRExpr344: TQRExpr;
    QRExpr345: TQRExpr;
    QRExpr346: TQRExpr;
    QRExpr347: TQRExpr;
    QRExpr348: TQRExpr;
    QRExpr349: TQRExpr;
    QRExpr350: TQRExpr;
    QRExpr351: TQRExpr;
    QRExpr352: TQRExpr;
    QRExpr353: TQRExpr;
    QRExpr354: TQRExpr;
    QRExpr355: TQRExpr;
    QRExpr356: TQRExpr;
    QRExpr357: TQRExpr;
    QRExpr358: TQRExpr;
    QRExpr359: TQRExpr;
    QRExpr360: TQRExpr;
    QRExpr361: TQRExpr;
    QRExpr362: TQRExpr;
    QRExpr363: TQRExpr;
    QRExpr364: TQRExpr;
    QRExpr365: TQRExpr;
    QRExpr366: TQRExpr;
    QRExpr367: TQRExpr;
    QRExpr368: TQRExpr;
    QRBand17: TQRBand;
    QRExpr369: TQRExpr;
    QRExpr370: TQRExpr;
    QRExpr371: TQRExpr;
    QRExpr372: TQRExpr;
    QRExpr373: TQRExpr;
    QRExpr374: TQRExpr;
    QRExpr375: TQRExpr;
    QRExpr376: TQRExpr;
    QRExpr377: TQRExpr;
    QRExpr378: TQRExpr;
    QRExpr379: TQRExpr;
    QRExpr380: TQRExpr;
    QRExpr381: TQRExpr;
    QRExpr382: TQRExpr;
    QRExpr383: TQRExpr;
    QRExpr384: TQRExpr;
    QRExpr385: TQRExpr;
    QRExpr386: TQRExpr;
    QRExpr387: TQRExpr;
    QRLabel178: TQRLabel;
    QRSysData8: TQRSysData;
    QRLabel179: TQRLabel;
    QRExpr388: TQRExpr;
    QRExpr389: TQRExpr;
    QRExpr390: TQRExpr;
    QRExpr391: TQRExpr;
    QRExpr392: TQRExpr;
    QRExpr393: TQRExpr;
    QRExpr394: TQRExpr;
    QRExpr395: TQRExpr;
    QRExpr396: TQRExpr;
    QRBand18: TQRBand;
    QRExpr397: TQRExpr;
    QRExpr398: TQRExpr;
    QRSysData9: TQRSysData;
    QRExpr399: TQRExpr;
    QRExpr400: TQRExpr;
    QRExpr401: TQRExpr;
    QRExpr402: TQRExpr;
    QRExpr403: TQRExpr;
    QRExpr404: TQRExpr;
    QRExpr405: TQRExpr;
    QRExpr406: TQRExpr;
    QRExpr407: TQRExpr;
    QRExpr408: TQRExpr;
    QRExpr409: TQRExpr;
    QRExpr410: TQRExpr;
    QRExpr411: TQRExpr;
    QRExpr412: TQRExpr;
    QRLabel180: TQRLabel;
    QRSysData10: TQRSysData;
    QRLabel181: TQRLabel;
    QRExpr413: TQRExpr;
    QRExpr414: TQRExpr;
    QRExpr415: TQRExpr;
    QRExpr416: TQRExpr;
    QRExpr417: TQRExpr;
    QRExpr418: TQRExpr;
    QRExpr419: TQRExpr;
    QRExpr420: TQRExpr;
    QRExpr421: TQRExpr;
    QRExpr422: TQRExpr;
    QRExpr423: TQRExpr;
    QRExpr424: TQRExpr;
    Query2: TUniQuery;
    Query1: TUniQuery;
    QuickRep4: TQuickRep;
    QRBand24: TQRBand;
    QRExpr570: TQRExpr;
    QRDBText300: TQRDBText;
    QRDBText301: TQRDBText;
    QRDBText302: TQRDBText;
    QRBand25: TQRBand;
    QRExpr571: TQRExpr;
    QRExpr572: TQRExpr;
    QRExpr573: TQRExpr;
    QRExpr574: TQRExpr;
    QRExpr575: TQRExpr;
    QRExpr576: TQRExpr;
    QRExpr577: TQRExpr;
    QRDBText303: TQRDBText;
    QRDBText304: TQRDBText;
    QRExpr578: TQRExpr;
    QRExpr579: TQRExpr;
    QRExpr580: TQRExpr;
    QRDBText305: TQRDBText;
    QRDBText306: TQRDBText;
    QRExpr581: TQRExpr;
    QRExpr582: TQRExpr;
    QRDBText307: TQRDBText;
    QRExpr583: TQRExpr;
    QRExpr584: TQRExpr;
    QRExpr585: TQRExpr;
    QRExpr586: TQRExpr;
    QRExpr587: TQRExpr;
    QRExpr588: TQRExpr;
    QRExpr589: TQRExpr;
    QRExpr590: TQRExpr;
    QRExpr591: TQRExpr;
    QRExpr592: TQRExpr;
    QRExpr593: TQRExpr;
    QRDBText308: TQRDBText;
    QRExpr594: TQRExpr;
    QRExpr595: TQRExpr;
    QRExpr596: TQRExpr;
    QRExpr597: TQRExpr;
    QRExpr598: TQRExpr;
    QRExpr599: TQRExpr;
    QRExpr600: TQRExpr;
    QRExpr601: TQRExpr;
    QRExpr602: TQRExpr;
    QRExpr603: TQRExpr;
    QRDBText309: TQRDBText;
    QRExpr604: TQRExpr;
    QRExpr605: TQRExpr;
    QRExpr606: TQRExpr;
    QRExpr607: TQRExpr;
    QRExpr608: TQRExpr;
    QRExpr609: TQRExpr;
    QRExpr610: TQRExpr;
    QRDBText310: TQRDBText;
    QRExpr611: TQRExpr;
    QRDBText311: TQRDBText;
    QRExpr612: TQRExpr;
    QRDBText312: TQRDBText;
    QRDBText313: TQRDBText;
    QRExpr613: TQRExpr;
    QRExpr614: TQRExpr;
    QRDBText314: TQRDBText;
    QRExpr615: TQRExpr;
    QRExpr616: TQRExpr;
    QRExpr617: TQRExpr;
    QRExpr618: TQRExpr;
    QRExpr619: TQRExpr;
    QRLabel237: TQRLabel;
    QRDBText315: TQRDBText;
    QRExpr620: TQRExpr;
    QRDBText316: TQRDBText;
    QRExpr621: TQRExpr;
    QRExpr622: TQRExpr;
    QRExpr623: TQRExpr;
    QRExpr624: TQRExpr;
    QRExpr625: TQRExpr;
    QRDBText317: TQRDBText;
    QRExpr626: TQRExpr;
    QRExpr627: TQRExpr;
    QRExpr628: TQRExpr;
    QRExpr629: TQRExpr;
    QRLabel238: TQRLabel;
    QRLabel239: TQRLabel;
    QRExpr630: TQRExpr;
    QRLabel240: TQRLabel;
    QRExpr631: TQRExpr;
    QRLabel241: TQRLabel;
    QRExpr632: TQRExpr;
    QRDBText318: TQRDBText;
    QRExpr633: TQRExpr;
    QRDBText319: TQRDBText;
    QRExpr634: TQRExpr;
    QRDBText320: TQRDBText;
    QRExpr635: TQRExpr;
    QRExpr636: TQRExpr;
    QRLabel182: TQRLabel;
    QRExpr425: TQRExpr;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRExpr426: TQRExpr;
    QRExpr427: TQRExpr;
    QRLabel189: TQRLabel;
    QRExpr428: TQRExpr;
    QRLabel190: TQRLabel;
    QRExpr429: TQRExpr;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRExpr430: TQRExpr;
    QRExpr431: TQRExpr;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRExpr432: TQRExpr;
    QRExpr433: TQRExpr;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRExpr434: TQRExpr;
    QRExpr435: TQRExpr;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRExpr436: TQRExpr;
    QRExpr437: TQRExpr;
    QRLabel199: TQRLabel;
    QRExpr438: TQRExpr;
    QRLabel200: TQRLabel;
    QRExpr439: TQRExpr;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRExpr440: TQRExpr;
    QRExpr441: TQRExpr;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRLabel203: TQRLabel;
    QRLabel204: TQRLabel;
    QRExpr514: TQRExpr;
    QRExpr513: TQRExpr;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRExpr442: TQRExpr;
    QRExpr443: TQRExpr;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRExpr444: TQRExpr;
    QRExpr445: TQRExpr;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRExpr446: TQRExpr;
    QRExpr447: TQRExpr;
    procedure kaz1;
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand21AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand17AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickR1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand12AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
  end;

var
  FRBorKuc: TFRBorKuc;

implementation

uses UData, UBordro;

{$R *.DFM}





























































































procedure TFRBorKuc.kaz1;
begin

///
end;


procedure TFRBorKuc.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//QRBand22.Enabled:=True;
end;

procedure TFRBorKuc.QRBand21AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
//QRBand22.Enabled:=False;
end;

procedure TFRBorKuc.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRBand18.Enabled:=True;

end;

procedure TFRBorKuc.QRBand17AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
QRBand18.Enabled:=False;

end;

procedure TFRBorKuc.QuickR1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRBand13.Enabled:=True;

end;

procedure TFRBorKuc.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
QRBand13.Enabled:=False;

end;

end.
