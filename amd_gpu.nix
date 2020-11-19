{ config, pkgs, ... }:

{
	boot.initrd.kernelModules = [ "amdgpu" ];
	services.xserver.videoDrivers = [ "amdgpu" ];

	hardware = {
		opengl = {
			enable = true;
			driSupport = true;

			extraPackages = with pkgs; [
				rocm-opencl-icd
				rocm-opencl-runtime
				amdvlk
			];

			# For 32 bit applications
			driSupport32Bit = true;

			#extraPackages32 = with pkgs; [
			#	driversi686Linux.amdvlk
			#];
		};
	};
}