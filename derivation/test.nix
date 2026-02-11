with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "some env";

  buildInputs = [ pkgs.cowsay ];

  shellHook = ''
  cowsay hello
  '';
}
