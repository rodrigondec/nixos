{ config, pkgs, ... }:

{
	services.xserver = {
		enable = true;
		desktopManager.plasma5.enable = true;
		displayManager.sddm = {
			enable = true;
			enableHidpi = true;
			# theme = "arc-kde-theme";
		};
	};

	#environment.systemPackages = let themes = pkgs.callPackage ./sddm-themes.nix {}; in [ 
		# pkgs.kdeconnect 
		# this doesn't do much, but makes it easier to see the settings
	#	pkgs.sddm-kcm
	#	themes.sddm-sugar-dark 
	#	themes.kde-plasma-chili 
	#	pkgs.arc-kde-theme
	#];
}
