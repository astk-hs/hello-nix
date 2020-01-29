with import <nixpkgs> { config.allowUnfree = true; };

haskell.packages.ghc881.override {
 overrides = self: super: {
    rotate = haskell.lib.doJailbreak(self.callCabal2nix "rotate" ./rotate {});
    rotateBackpack = haskell.lib.doJailbreak(self.callCabal2nix "rotateBackpack" ./rotateBackpack {});
    rotateUse= haskell.lib.doJailbreak(self.callCabal2nix "rotateUse" ./rotateUse{});
  };
}
