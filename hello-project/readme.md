this can be built with;   
cabal new-run helloWorld   
but it fails with nix;

nix-build -A HelloWorld    
error: anonymous function at /nix/store/0xv9jk8ahb1cr41ndahhyln099ldsnvg-cabal2nix-helloWorld/default.nix:1:1 called without required argument 'world', at /nix/store/kqsdinhsbvgv1x99hyn2w3z3pphi6077-nixpkgs-20.03pre210728.42a195919a1/nixpkgs/pkgs/development/haskell-modules/make-package-set.nix:87:27
