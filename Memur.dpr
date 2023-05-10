program Memur;

uses
  Forms,
  UGelir in 'UGelir.pas' {FGelir},
  UData in 'UData.PAS' {FData: TDataModule},
  UANAMENU in 'UANAMENU.PAS' {FANAMENU},
  USicil in 'USicil.pas' {FSicil},
  UDon in 'UDon.pas' {FDon},
  UHESMENU in 'UHESMENU.pas' {FHESMENU},
  UPARMENU in 'UPARMENU.PAS' {FPARMENU},
  USicilAra in 'USicilAra.pas' {FSicilAra},
  URBordro in 'URBordro.pas' {FRBordro},
  USistem in 'USistem.pas' {FSistem},
  Udonem in 'Udonem.pas' {Fdonem},
  Ukatsayilar in 'Ukatsayilar.pas' {Fkatsayilar},
  Ukazanclar in 'Ukazanclar.pas' {FKazanclar},
  Udair in 'Udair.pas' {FDaire},
  Ukesintiler in 'Ukesintiler.pas' {Fkesintiler},
  UGostergeler in 'UGostergeler.pas' {FGostergeler},
  USsk in 'USsk.pas' {FSsk},
  UDonNet in 'UDonNet.pas' {FDonNet},
  UDonemtas in 'UDonemtas.pas' {FDonemtas},
  UAyEmek in 'UAyEmek.pas' {FAyEmek},
  URAPMENU in 'URAPMENU.PAS' {FRAPMENU},
  UKazanlar in 'UKazanlar.pas' {FKazanlar},
  UKesitlar in 'UKesitlar.pas' {FKesitlar},
  UNetler in 'UNetler.pas' {FNetler},
  UYilEm in 'UYilEm.pas' {FYilEm},
  URYilEm in 'URYilEm.pas' {FRYilEm},
  USicilLis in 'USicilLis.pas' {FSicilLis},
  USendika in 'USendika.pas' {FRSendika},
  URSendika in 'URSendika.pas' {FSendika},
  UHesapi in 'UHesapi.pas' {FHesap},
  URBorKuc in 'URBorKuc.pas' {FRBorKuc},
  Paracevir in 'Paracevir.pas',
  USicBuy in 'USicBuy.pas' {FSicBuy},
  URIcra in 'URIcra.pas' {FRIcra},
  UKefuc in 'UKefuc.pas' {FKefuc},
  UAyem2 in 'UAyem2.pas' {FAyem2},
  UHesNet in 'UHesNet.pas' {FHesNet},
  UAsker in 'UAsker.pas' {FAsker},
  UIlac in 'UIlac.pas' {FIlac},
  UTopHesap in 'UTopHesap.pas' {FTopHesap},
  UHasta in 'UHasta.pas' {FHasta},
  UBordro in 'UBordro.pas' {FBordro},
  UGelirkod in 'UGelirkod.pas' {FGelirkod},
  UNakit in 'UNakit.pas' {FNakit},
  URHasta in 'URHasta.pas' {FRHasta},
  URBorKuc1 in 'URBorKuc1.pas' {FRBorKuc1},
  UEcra in 'UEcra.pas' {FEcra},
  USicil2 in 'USicil2.pas' {FSicil2},
  UA4bordro in 'UA4bordro.pas' {FA4bordro},
  URKdv in 'URKdv.pas' {FRKdv},
  UAyEmek5510sonra in 'UAyEmek5510sonra.pas' {FAyEmek5510sonra},
  USicilTasima in 'USicilTasima.pas' {FSicilTasima},
  UAcilis in 'UAcilis.pas' {FAcilis},
  ConverterQR2FR in 'C:\Program Files\FastReports\FastReport 4\Source\ConverterQR2FR.pas',
  UYilKesintiler in 'UYilKesintiler.pas' {FYilKesintiler},
  UYilKazanlar in 'UYilKazanlar.pas' {FYilKazanlar},
  UIcraGirisi in 'UIcraGirisi.pas' {FIcraGirisi},
  UProvider in '..\Common\UProvider.pas',
  UBesKesinti in 'UBesKesinti.pas' {FBesKesinti},
  SerasCrmWs1 in 'SerasCrmWs1.pas',
  UVergiIstisnaKontrol in 'UVergiIstisnaKontrol.pas' {FVergiIstisnaKontrol};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'SKYBS | Memur Bordro';
  Application.CreateForm(TFData, FData);
  Application.CreateForm(TFANAMENU, FANAMENU);
  Application.CreateForm(TFVergiIstisnaKontrol, FVergiIstisnaKontrol);
  Application.Run;
end.
