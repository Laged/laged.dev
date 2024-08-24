{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "cloudinary-static-site-deploy";
  
  buildInputs = with pkgs; [
    cloudinary-cli
  ];

  shellHook = ''
    echo "Cloudinary deployment environment ready"
  '';
}