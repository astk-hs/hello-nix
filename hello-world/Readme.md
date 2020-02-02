a simple haskell project printing "hello" to the screen.
it can be built and run either by typing

$> cabal new-run hello

or, using nix

$> nix-build -A hello && ./result/bin/hello
