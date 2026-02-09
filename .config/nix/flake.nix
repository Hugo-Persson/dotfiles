{
  description = "My MacOS 🍏 Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nix-darwin, nixpkgs }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };

      # Shared configuration for all machines
      sharedModules = [
        ({ ... }: {
          system.configurationRevision = self.rev or self.dirtyRev or null;
        })
        ./nix-darwin
      ];

      # Helper to create a darwin system
      mkDarwinHost = hostname: extraModules: nix-darwin.lib.darwinSystem {
        inherit system pkgs;
        modules = sharedModules ++ extraModules;
      };
    in {
      darwinConfigurations = {
        # Personal MacBook Pro
        "Hugos-MacBook-Pro" = mkDarwinHost "Hugos-MacBook-Pro" [];

        # Work laptop (neo4j)
        "Hugos-macbook-neo4j" = mkDarwinHost "Hugos-macbook-neo4j" [];
      };

      # Expose the package set for convenience
      darwinPackages = self.darwinConfigurations."Hugos-MacBook-Pro".pkgs;
    };
}
