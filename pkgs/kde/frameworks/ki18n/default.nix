{
  lib,
  mkKdeDerivation,
  qtdeclarative,
}:
mkKdeDerivation {
  pname = "ki18n";

  extraBuildInputs = [qtdeclarative];

  meta.license = null;
}
