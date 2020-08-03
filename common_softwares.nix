{ config, pkgs, ... }:

{
  
  # List packages installed in system profile. To search, run:

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    ark
    discord
    firefox 
    gnome3.gnome-disk-utility
    gnome3.gedit 
    keepassxc
    kolourpaint
    libreoffice
    nomacs
    qbittorrent
    spectacle
    spotify
    tdesktop
    vlc
    wget 
    xorg.xkill

  ];

}