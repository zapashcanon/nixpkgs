{
  buildDunePackage,
  miou,
  tls,
}:

buildDunePackage {
  pname = "tls-miou-unix";

  inherit (tls) src meta version;

  minimalOCamlVersion = "5.0";

  doCheck = true;

  propagatedBuildInputs = [
    miou
    tls
  ];
}
