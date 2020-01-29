with import <nixpkgs> { allowUnfree = true; };

haskellPackages.override {
  overrides = self: super: {
    rotate = self.callCabal2nix "rotate" ./rotate {};
    rotateBackpack = self.callCabal2nix "rotateBackpack" ./rotateBackpack {};
    rotateUse= self.callCabal2nix "rotateUse" ./rotateUse{};
  };
}


{-
hask@LAPTOP-PQ3KPQAO:~/rotateDistributed/rotateDistributed$ nix-build default.nix
error: anonymous function at /nix/store/kqsdinhsbvgv1x99hyn2w3z3pphi6077-nixpkgs-20.03pre210728.42a195919a1/nixpkgs/pkgs/top-level/default.nix:20:1 called with unexpected argument 'allowUnfree', at /nix/store/kqsdinhsbvgv1x99hyn2w3z3pphi6077-nixpkgs-20.03pre210728.42a195919a1/nixpkgs/pkgs/top-level/impure.nix:84:1
-}
