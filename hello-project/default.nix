with import <nixpkgs> {};
haskell.packages.ghc881.override{
 overrides = self: super: {
  Hello      = self.callCabal2nix "hello" ./Hello {};
  World      = self.callCabal2nix "world" ./World {};
  HelloWorld = self.callCabal2nix "helloWorld" ./HelloWorld {};
  };
}
