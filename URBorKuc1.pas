unit URBorKuc1;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Uni, DBAccess, MemDS,
  frxClass;

type
  TFRBorKuc1 = class(TForm)
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
    QuickRep3: TQuickRep;
    QRGroup9: TQRGroup;
    QRGroup10: TQRGroup;
    QRChildBand5: TQRChildBand;
    QRBand19: TQRBand;
    QRBand20: TQRBand;
    QRExpr425: TQRExpr;
    QRExpr426: TQRExpr;
    QRExpr427: TQRExpr;
    QRExpr428: TQRExpr;
    QRExpr429: TQRExpr;
    QRExpr430: TQRExpr;
    QRExpr431: TQRExpr;
    QRSysData11: TQRSysData;
    QRExpr432: TQRExpr;
    QRExpr433: TQRExpr;
    QRExpr434: TQRExpr;
    QRExpr435: TQRExpr;
    QRExpr436: TQRExpr;
    QRExpr437: TQRExpr;
    QRExpr438: TQRExpr;
    QRExpr439: TQRExpr;
    QRExpr440: TQRExpr;
    QRExpr441: TQRExpr;
    QRExpr442: TQRExpr;
    QRExpr443: TQRExpr;
    QRExpr444: TQRExpr;
    QRExpr445: TQRExpr;
    QRExpr446: TQRExpr;
    QRExpr447: TQRExpr;
    QRExpr448: TQRExpr;
    QRExpr449: TQRExpr;
    QRExpr450: TQRExpr;
    QRExpr451: TQRExpr;
    QRExpr452: TQRExpr;
    QRExpr453: TQRExpr;
    QRExpr454: TQRExpr;
    QRExpr455: TQRExpr;
    QRExpr456: TQRExpr;
    QRExpr457: TQRExpr;
    QRExpr458: TQRExpr;
    QRExpr459: TQRExpr;
    QRExpr460: TQRExpr;
    QRExpr461: TQRExpr;
    QRExpr462: TQRExpr;
    QRExpr463: TQRExpr;
    QRExpr464: TQRExpr;
    QRExpr465: TQRExpr;
    QRExpr466: TQRExpr;
    QRExpr467: TQRExpr;
    QRExpr468: TQRExpr;
    QRExpr469: TQRExpr;
    QRExpr470: TQRExpr;
    QRExpr471: TQRExpr;
    QRExpr472: TQRExpr;
    QRExpr473: TQRExpr;
    QRExpr474: TQRExpr;
    QRExpr475: TQRExpr;
    QRExpr476: TQRExpr;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRExpr477: TQRExpr;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRBand21: TQRBand;
    QRLabel188: TQRLabel;
    QRSysData12: TQRSysData;
    QRLabel189: TQRLabel;
    QRExpr478: TQRExpr;
    QRExpr479: TQRExpr;
    QRExpr480: TQRExpr;
    QRExpr481: TQRExpr;
    QRExpr482: TQRExpr;
    QRExpr483: TQRExpr;
    QRExpr484: TQRExpr;
    QRExpr485: TQRExpr;
    QRExpr486: TQRExpr;
    QRExpr487: TQRExpr;
    QRExpr488: TQRExpr;
    QRExpr489: TQRExpr;
    QRExpr490: TQRExpr;
    QRExpr491: TQRExpr;
    QRExpr492: TQRExpr;
    QRExpr493: TQRExpr;
    QRExpr494: TQRExpr;
    QRExpr495: TQRExpr;
    QRExpr496: TQRExpr;
    QRExpr497: TQRExpr;
    QRExpr498: TQRExpr;
    QRExpr499: TQRExpr;
    QRExpr500: TQRExpr;
    QRExpr501: TQRExpr;
    QRExpr502: TQRExpr;
    QRExpr503: TQRExpr;
    QRExpr504: TQRExpr;
    QRExpr505: TQRExpr;
    QRExpr506: TQRExpr;
    QRExpr507: TQRExpr;
    QRExpr508: TQRExpr;
    QRExpr509: TQRExpr;
    QRExpr510: TQRExpr;
    QRExpr511: TQRExpr;
    QRExpr512: TQRExpr;
    QRExpr513: TQRExpr;
    QRExpr514: TQRExpr;
    QRExpr515: TQRExpr;
    QRExpr516: TQRExpr;
    QRExpr517: TQRExpr;
    QRExpr518: TQRExpr;
    QRExpr519: TQRExpr;
    QRExpr520: TQRExpr;
    QRExpr521: TQRExpr;
    QRExpr522: TQRExpr;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRExpr523: TQRExpr;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRBand22: TQRBand;
    QRSysData13: TQRSysData;
    QRLabel197: TQRLabel;
    QRSysData14: TQRSysData;
    QRLabel198: TQRLabel;
    QRExpr524: TQRExpr;
    QRExpr525: TQRExpr;
    QRExpr526: TQRExpr;
    QRExpr527: TQRExpr;
    QRExpr528: TQRExpr;
    QRExpr529: TQRExpr;
    QRExpr530: TQRExpr;
    QRExpr531: TQRExpr;
    QRExpr532: TQRExpr;
    QRExpr533: TQRExpr;
    QRExpr534: TQRExpr;
    QRExpr535: TQRExpr;
    QRExpr536: TQRExpr;
    QRExpr537: TQRExpr;
    QRExpr538: TQRExpr;
    QRExpr539: TQRExpr;
    QRExpr540: TQRExpr;
    QRExpr541: TQRExpr;
    QRExpr542: TQRExpr;
    QRExpr543: TQRExpr;
    QRExpr544: TQRExpr;
    QRExpr545: TQRExpr;
    QRExpr546: TQRExpr;
    QRExpr547: TQRExpr;
    QRExpr548: TQRExpr;
    QRExpr549: TQRExpr;
    QRExpr550: TQRExpr;
    QRExpr551: TQRExpr;
    QRExpr552: TQRExpr;
    QRExpr553: TQRExpr;
    QRExpr554: TQRExpr;
    QRExpr555: TQRExpr;
    QRExpr556: TQRExpr;
    QRExpr557: TQRExpr;
    QRExpr558: TQRExpr;
    QRExpr559: TQRExpr;
    QRExpr560: TQRExpr;
    QRExpr561: TQRExpr;
    QRExpr562: TQRExpr;
    QRExpr563: TQRExpr;
    QRExpr564: TQRExpr;
    QRExpr565: TQRExpr;
    QRExpr566: TQRExpr;
    QRExpr567: TQRExpr;
    QRExpr568: TQRExpr;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRExpr569: TQRExpr;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRBand23: TQRBand;
    QRDBText262: TQRDBText;
    QRLabel206: TQRLabel;
    QRDBText263: TQRDBText;
    QRLabel207: TQRLabel;
    QRDBText264: TQRDBText;
    QRLabel208: TQRLabel;
    QRDBText265: TQRDBText;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRDBText266: TQRDBText;
    QRDBText267: TQRDBText;
    QRDBText268: TQRDBText;
    QRLabel211: TQRLabel;
    QRDBText269: TQRDBText;
    QRDBText270: TQRDBText;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRDBText271: TQRDBText;
    QRDBText272: TQRDBText;
    QRDBText273: TQRDBText;
    QRDBText274: TQRDBText;
    QRDBText275: TQRDBText;
    QRDBText276: TQRDBText;
    QRDBText277: TQRDBText;
    QRLabel214: TQRLabel;
    QRDBText278: TQRDBText;
    QRDBText279: TQRDBText;
    QRLabel215: TQRLabel;
    QRDBText280: TQRDBText;
    QRDBText281: TQRDBText;
    QRLabel216: TQRLabel;
    QRDBText282: TQRDBText;
    QRDBText283: TQRDBText;
    QRDBText284: TQRDBText;
    QRDBText285: TQRDBText;
    QRDBText286: TQRDBText;
    QRDBText287: TQRDBText;
    QRDBText288: TQRDBText;
    QRDBText289: TQRDBText;
    QRDBText290: TQRDBText;
    QRDBText291: TQRDBText;
    QRDBText292: TQRDBText;
    QRDBText293: TQRDBText;
    QRDBText294: TQRDBText;
    QRDBText295: TQRDBText;
    QRDBText296: TQRDBText;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRLabel228: TQRLabel;
    QRDBText297: TQRDBText;
    QRDBText298: TQRDBText;
    QRLabel229: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRLabel233: TQRLabel;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    QRDBText299: TQRDBText;
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
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText2: TQRDBText;
    QRExpr3: TQRExpr;
    frxReport1: TfrxReport;
    Button1: TButton;
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
    procedure Button1Click(Sender: TObject);
  private
  end;

var
  FRBorKuc1: TFRBorKuc1;

implementation

uses UData, UBordro, ConverterQR2FR;

{$R *.DFM}





























































































procedure TFRBorKuc1.Button1Click(Sender: TObject);
var conv : TConverterQr2Fr;
begin
  conv := TConverterQr2Fr.Create;
   conv.Source := QuickRep4;
   conv.Target := frxReport1;
   conv.Convert;
   frxReport1.SaveToFile('MemurMatbu.fr3');


end;

procedure TFRBorKuc1.kaz1;
begin

///
end;


procedure TFRBorKuc1.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRBand22.Enabled:=True;
end;

procedure TFRBorKuc1.QRBand21AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
QRBand22.Enabled:=False;
end;

procedure TFRBorKuc1.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRBand18.Enabled:=True;

end;

procedure TFRBorKuc1.QRBand17AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
QRBand18.Enabled:=False;

end;

procedure TFRBorKuc1.QuickR1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRBand13.Enabled:=True;

end;

procedure TFRBorKuc1.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
QRBand13.Enabled:=False;

end;

end.
