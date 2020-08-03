{ config, pkgs, ... }:

{
  
  environment.systemPackages = with pkgs; [
    anydesk
    awscli
    dbeaver
    docker
    docker-compose
    git
    gitkraken
    gnumake 
    gnupg
    httpie
    hubstaff
    insomnia
    jetbrains.pycharm-community
    ngrok
    python38Full 
    robo3t
    sublime3
    staruml
    terraform
    vscodium
    wget 
    xorg.xkill

  ];

  virtualisation.docker.enable = true;
}