{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # install packages
  environment.systemPackages = with pkgs; [
    steam
    steam-run
    playonlinux

    #xorg.xorgserver
    #xorg.xf86inputlibinput
    xorg.xf86videointel
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };

  hardware = {

    pulseaudio = {
      support32Bit = true;
    };

    opengl = {
      enable = true;
      extraPackages = with pkgs; [
        vaapiIntel
        vaapiVdpau
        libvdpau-va-gl
        intel-media-driver # only available starting nixos-19.03 or the current nixos-unstable
      ];

      driSupport = true;
      driSupport32Bit = true;

      extraPackages32 = with pkgs; [
        linuxPackages.nvidia_x11.lib32
      ];
    };
  };
}