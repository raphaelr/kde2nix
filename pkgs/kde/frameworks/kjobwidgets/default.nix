{
  lib,
  mkKdeDerivation,
  qttools,
}:
mkKdeDerivation {
  pname = "kjobwidgets";

  extraNativeBuildInputs = [qttools];

  meta.license = null;
}