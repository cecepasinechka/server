{config, pkgs, ...}:

{
  imports = [
    ../../modules/image.nix
    ../../modules/base.nix
    ../../modules/docker-host.nix
    ../../modules/docker-auto-clean.nix 
    ../../modules/backup.nix
    ../../users/root.nix
    ../../users/user.nix
    ../../users/collab.nix
  ];

  environment.systemPackages = [pkgs.docker-compose];
  networking.firewall.allowedTCPPorts = [22 5050 9100];

}
