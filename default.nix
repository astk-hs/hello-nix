with import <nixpkgs> { config.allowUnfree = true; };

haskell.packages.ghc881.override {
 overrides = self: super: {
    rotate = self.callCabal2nix "rotate" ./rotate {};
    rotateBackpack = self.callCabal2nix "rotateBackpack" ./rotateBackpack {};
    rotateUse= self.callCabal2nix "rotateUse" ./rotateUse{};
  };
}
