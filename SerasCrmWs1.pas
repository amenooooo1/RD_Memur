// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://skybs.net:6565/SerasWebServiceCrm/services/SerasCrmWs?wsdl
//  >Import : http://skybs.net:6565/SerasWebServiceCrm/services/SerasCrmWs?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (24.03.2020 09:48:56 - - $Rev: 45757 $)
// ************************************************************************ //

unit SerasCrmWs1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  ErisimBilgileri      = class;                 { "http://service.webservice.seras.org"[GblCplx] }
  ServisBilgileri      = class;                 { "http://service.webservice.seras.org"[GblCplx] }
  ServisDurumu         = class;                 { "http://service.webservice.seras.org"[GblCplx] }



  // ************************************************************************ //
  // XML       : ErisimBilgileri, global, <complexType>
  // Namespace : http://service.webservice.seras.org
  // ************************************************************************ //
  ErisimBilgileri = class(TRemotable)
  private
    FservisBilgileri: ServisBilgileri;
    FservisDurumu: ServisDurumu;
  public
    destructor Destroy; override;
  published
    property servisBilgileri: ServisBilgileri  Index (IS_NLBL) read FservisBilgileri write FservisBilgileri;
    property servisDurumu:    ServisDurumu     Index (IS_NLBL) read FservisDurumu write FservisDurumu;
  end;



  // ************************************************************************ //
  // XML       : ServisBilgileri, global, <complexType>
  // Namespace : http://service.webservice.seras.org
  // ************************************************************************ //
  ServisBilgileri = class(TRemotable)
  private
    FeskiProjeDatabase: string;
    FeskiProjeGlobalIp: string;
    FeskiProjeLocalIp: string;
    FeskiProjePassword: string;
    FeskiProjePort: Integer;
    FeskiProjeUserName: string;
    FisCostumer: Boolean;
    FproductionDatabase: string;
    FproductionGlobalIp: string;
    FproductionLocalIp: string;
    FproductionPassword: string;
    FproductionPort: Integer;
    FproductionUserName: string;
  published
    property eskiProjeDatabase:  string   Index (IS_NLBL) read FeskiProjeDatabase write FeskiProjeDatabase;
    property eskiProjeGlobalIp:  string   Index (IS_NLBL) read FeskiProjeGlobalIp write FeskiProjeGlobalIp;
    property eskiProjeLocalIp:   string   Index (IS_NLBL) read FeskiProjeLocalIp write FeskiProjeLocalIp;
    property eskiProjePassword:  string   Index (IS_NLBL) read FeskiProjePassword write FeskiProjePassword;
    property eskiProjePort:      Integer  Index (IS_NLBL) read FeskiProjePort write FeskiProjePort;
    property eskiProjeUserName:  string   Index (IS_NLBL) read FeskiProjeUserName write FeskiProjeUserName;
    property isCostumer:         Boolean  Index (IS_NLBL) read FisCostumer write FisCostumer;
    property productionDatabase: string   Index (IS_NLBL) read FproductionDatabase write FproductionDatabase;
    property productionGlobalIp: string   Index (IS_NLBL) read FproductionGlobalIp write FproductionGlobalIp;
    property productionLocalIp:  string   Index (IS_NLBL) read FproductionLocalIp write FproductionLocalIp;
    property productionPassword: string   Index (IS_NLBL) read FproductionPassword write FproductionPassword;
    property productionPort:     Integer  Index (IS_NLBL) read FproductionPort write FproductionPort;
    property productionUserName: string   Index (IS_NLBL) read FproductionUserName write FproductionUserName;
  end;



  // ************************************************************************ //
  // XML       : ServisDurumu, global, <complexType>
  // Namespace : http://service.webservice.seras.org
  // ************************************************************************ //
  ServisDurumu = class(TRemotable)
  private
    Faciklama: string;
    Fkod: Integer;
  published
    property aciklama: string   Index (IS_NLBL) read Faciklama write Faciklama;
    property kod:      Integer  read Fkod write Fkod;
  end;


  // ************************************************************************ //
  // Namespace : http://service.webservice.seras.org
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : SerasCrmWsSoapBinding
  // service   : SerasCrmWsService
  // port      : SerasCrmWs
  // URL       : http://skybs.net:6565/SerasWebServiceCrm/services/SerasCrmWs
  // ************************************************************************ //
  SerasCrmWs = interface(IInvokable)
  ['{B041FAE3-55DE-2594-20BB-30FE26776FDC}']
    function  crmBilgiGetir(const infosId: Integer; const licenseKey: string): ErisimBilgileri; stdcall;
  end;

function GetSerasCrmWs(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SerasCrmWs;


implementation
  uses SysUtils;

function GetSerasCrmWs(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SerasCrmWs;
const
  defWSDL = 'http://skybs.net:6565/SerasWebServiceCrm/services/SerasCrmWs?wsdl';
  defURL  = 'http://skybs.net:6565/SerasWebServiceCrm/services/SerasCrmWs';
  defSvc  = 'SerasCrmWsService';
  defPrt  = 'SerasCrmWs';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as SerasCrmWs);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor ErisimBilgileri.Destroy;
begin
  SysUtils.FreeAndNil(FservisBilgileri);
  SysUtils.FreeAndNil(FservisDurumu);
  inherited Destroy;
end;

initialization
  { SerasCrmWs }
  InvRegistry.RegisterInterface(TypeInfo(SerasCrmWs), 'http://service.webservice.seras.org', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SerasCrmWs), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SerasCrmWs), ioDocument);
  { SerasCrmWs.crmBilgiGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(SerasCrmWs), 'crmBilgiGetir', '',
                                 '[ReturnName="crmBilgiGetirReturn"]');
  RemClassRegistry.RegisterXSClass(ErisimBilgileri, 'http://service.webservice.seras.org', 'ErisimBilgileri');
  RemClassRegistry.RegisterXSClass(ServisBilgileri, 'http://service.webservice.seras.org', 'ServisBilgileri');
  RemClassRegistry.RegisterXSClass(ServisDurumu, 'http://service.webservice.seras.org', 'ServisDurumu');

end.