{
  lib,
  mkKdeDerivation,
  akonadi-contacts,
}:
mkKdeDerivation {
  pname = "kgpg";

  extraBuildInputs = [akonadi-contacts];

  meta.license = null;
  # FIXME: not ported to new akonadi?
  meta.broken = true;
}
