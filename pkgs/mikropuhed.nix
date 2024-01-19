{ autoPatchelfHook
, fetchurl
, pulseaudio
, stdenv
}:

stdenv.mkDerivation {
  pname = "mikropuhe";
  version = "5.4";

  src = fetchurl {
    url = "https://luetus.nkl.fi/ladattavat/mikropuhe-linux/mikropuhe.tar.gz";
    sha256 = "sha256-LOymDBRdd6kWWU+wN/Ze3FwBX9kHqTGHY8NiCTGM+2E=";
  };
  sourceRoot = ".";

  nativeBuildInputs = [
    autoPatchelfHook
  ];
  buildInputs = [
    pulseaudio
  ];

  installPhase = ''
    cp -r . $out
  '';
}
