{
  lib,
  mkKdeDerivation,
  qtsvg,
}:
mkKdeDerivation {
  pname = "bovo";

  extraBuildInputs = [qtsvg];

  meta.license = null;
}
