with import <nixpkgs> {}; 
haskell.packages.ghc881.override{
 overrides = self: super: {
  hello      = self.callCabal2nix "hello" ./Hello {};
  world      = self.callCabal2nix "wolrd" ./World {};  
  helloWorld = self.callCabal2nix "helloWorld" ./HelloWorld {};  
  };
}
