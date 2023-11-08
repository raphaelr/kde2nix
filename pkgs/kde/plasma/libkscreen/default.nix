{
  lib,
  mkKdeDerivation,
  qtwayland,
  qttools,
  jq,
}:
mkKdeDerivation {
  pname = "libkscreen";

  extraNativeBuildInputs = [qttools qtwayland jq];
  extraBuildInputs = [qtwayland];

  meta.license = null;
}
