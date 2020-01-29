with import <nixpkgs> { config.allowUnfree = true; };

haskellPackages.override {
  overrides = self: super: {
    rotate = self.callCabal2nix "rotate" ./rotate {};
    rotateBackpack = self.callCabal2nix "rotateBackpack" ./rotateBackpack {};
    rotateUse= self.callCabal2nix "rotateUse" ./rotateUse{};
  };
}
