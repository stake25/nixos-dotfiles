{
  # what are the url or resources we use? "inputs"
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  # Outputs -
  outputs = inputs: {
    nixosConfigurations.stake-lappy = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        # enable nix flakes (keep them enabled)
        { nix.settings.experimental-features = ["nix-command" "flakes"]; }

        # Take into account my entire nix configuration file
        ./configuration.nix
      ];
    };
  };
}
