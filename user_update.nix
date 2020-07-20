{ config, pkgs, ... }:

{ 

  # allow users to use nix-env/nix-shell
  systemd.services.nixos-update = {
    description = "NixOS Upgrade";
    unitConfig.X-StopOnRemoval = false;
    serviceConfig.Type = "oneshot";

    environment = config.nix.envVars //
    { inherit (config.environment.sessionVariables) NIX_PATH;
      HOME = "/root";
    };
    path = [ pkgs.gnutar pkgs.xz config.nix.package.out ];
    script = ''
      nix-channel --add https://nixos.org/channels/nixos-20.03 nixos
      # nix-channel --add https://nixos.org/channels/nixos-unstable unstable
      nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs

      nix-channel --update
    '';
    startAt = "05:40";
  };
}