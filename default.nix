with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "tt";

  src = lib.cleanSource ./.;

  buildInputs = [ libnotify gdk-pixbuf ];
  nativeBuildInputs = [ pkg-config ];

  installPhase = ''
    mkdir -p $out/bin
    cp tt $out/bin
    cp tt-status.sh $out/bin/tt-status
  '';
}
