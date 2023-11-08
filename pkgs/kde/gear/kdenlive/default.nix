{
  lib,
  mkKdeDerivation,
  substituteAll,
  qtsvg,
  qtmultimedia,
  qtnetworkauth,
  ffmpeg-full,
  mediainfo,
  mlt,
  shared-mime-info,
  libv4l,
  frei0r,
}:
mkKdeDerivation {
  pname = "kdenlive";

  extraBuildInputs = [
    qtsvg
    qtmultimedia
    qtnetworkauth

    mlt
    shared-mime-info
    libv4l
  ];

  patches = [
    (
      substituteAll {
        src = ./dependency-paths.patch;
        inherit mediainfo mlt;
        ffmpeg = ffmpeg-full;
      }
    )
  ];

  qtWrapperArgs = [
    "--set FREI0R_PATH ${frei0r}/lib/frei0r-1"
  ];

  meta.license = null;
}
