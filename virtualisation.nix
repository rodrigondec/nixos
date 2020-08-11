{ config, pkgs, ... }:

{

  virtualisation = {
    libvirtd.enable = true;
    kvmgt.enable = true;

    virtualbox.host.enable = true;
  };

  boot.kernelModules = [ "kvm-intel" ];

  networking.firewall.checkReversePath = false;

  users.extraGroups.vboxusers.members = [ "rodrigondec" ];
}