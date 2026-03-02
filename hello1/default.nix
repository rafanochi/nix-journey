let pkgs = import <nixpkgs> { };
in rec {

  hello = pkgs.callPackage ./hello.nix { audince = "world"; };

  hello-waifus = hello.override { audince = "waifus"; };
}
