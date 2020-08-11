{ stdenv, fetchFromGitHub }:

{
	sddm-sugar-dark = stdenv.mkDerivation rec {
		pname = "sddm-sugar-dark-theme";
		version = "1.2";
		dontBuild = true;
		installPhase = ''
			mkdir -p $out/share/sddm/themes
			cp -aR $src $out/share/sddm/themes/sugar-dark
		'';
		src = fetchFromGitHub {
			owner = "MarianArlt";
			repo = "sddm-sugar-dark";
			rev = "v${version}";
			sha256 = "0gx0am7vq1ywaw2rm1p015x90b75ccqxnb1sz3wy8yjl27v82yhb";
		};
	};


	kde-plasma-chili = stdenv.mkDerivation rec {
		pname = "kde-plasma-chili-theme";
		version = "0.5.5";
		dontBuild = true;
		installPhase = ''
			mkdir -p $out/share/sddm/themes
			cp -aR $src $out/share/sddm/themes/plasma-chili
		'';
		src = fetchFromGitHub {
			owner = "MarianArlt";
			repo = "kde-plasma-chili";
			rev = "${version}";
			sha256 = "17pkxpk4lfgm14yfwg6rw6zrkdpxilzv90s48s2hsicgl3vmyr3x";
		};
	};
}