{
  lib,
  mkKdeDerivation,
  pkg-config,
  qtwayland,
  wayland-protocols,
}:
mkKdeDerivation {
  pname = "kwayland";

  extraNativeBuildInputs = [pkg-config];
  extraBuildInputs = [qtwayland wayland-protocols];

  meta.license = null;
}