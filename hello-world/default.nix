with import <nixpkgs> {};
haskell.packages.ghc881.override{
 overrides = self: super: {
  hello      = self.callCabal2nix "hello" ./. {};
  };
}
