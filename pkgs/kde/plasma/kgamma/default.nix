{
  lib,
  mkKdeDerivation,
  xorg,
}:
mkKdeDerivation {
  pname = "kgamma";

  extraBuildInputs = [xorg.libXxf86vm];

  meta.license = null;
}