with import <nixpkgs> {}; stdenv.mkDerivation { name = "hello"; src = ./hello.hs; }
