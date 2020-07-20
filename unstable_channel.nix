{ config, pkgs, ... }:

{ 
	system.autoUpgrade.channel = "https://nixos.org/channels/nixpkgs-unstable";
	# system.autoUpgrade.channel = "https://nixos.org/channels/nixos-unstable";
}
