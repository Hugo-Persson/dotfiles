{
  description = "My MacOS 🍏 Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nix-darwin, nixpkgs }:
    let
      configuration = { pkgs, ... }: {
        system.configurationRevision = self.rev or self.dirtyRev or null;
      };
    in {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#Hugos-MacBook-Pro
      darwinConfigurations."Hugos-MacBook-Pro" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        pkgs = import nixpkgs { system = "aarch64-darwin"; };
        modules = [

          configuration

          ./nix-darwin
        ];
      };
      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."Hugos-MacBook-Pro".pkgs;
    };
}
