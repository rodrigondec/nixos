{ config, pkgs, ... }:

{ 
	services.xserver.enable = true;
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.desktopManager.gnome3.enable = true;

	services.udev.packages = with pkgs; [ gnome3.gnome-settings-daemon ];
}
