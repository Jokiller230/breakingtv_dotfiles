{ config, lib, pkgs, copyparty, ... }:
with lib;
let
    cfg = config.services.copypartyService;
in
{
    options.services.copypartyService = {
        enable = mkEnableOption "custom copyParty service";
    };

    config = mkIf cfg.enable {
        nixpkgs.overlays = [ copyparty.overlays.default ];
        environment.systemPackages = with pkgs; [ copyparty ];

        services.copyparty = {
            enable = true;

            settings = {
                i = "0.0.0.0";
                p = [ 3210 ];

                no-reload = true;
                ignored-flag = false;
            };

            accounts = {
                semiko.passwordFile = config.age.secrets.copyparty-semiko.path;
                sergej.passwordFile = config.age.secrets.copyparty-sergej.path;
             };

            volumes = {
                # Create a volume at "/raid" (files.semiko.dev/raid)
                "/raid" = {
                    # this volume points to "/mnt/raid"
                    path = "/mnt/raid/";

                    access = {
                        rw = [ "semiko" "sergej" ];
                    };

                    flags = {
                        fk = 4;
                        # Time before next scan
                        scan = 60;

                        # Enables uploads to the database
                        e2d = true;
                        # Disable Multimedia parses
                        d2t = true;
                    };
                };
            };

            openFilesLimit = 8192;
        };


        networking.firewall.allowedTCPPorts = [ 3210 ];
        services.nginx.virtualHosts."files.semiko.dev" = {
            addSSL = true;
            enableACME = true;
            locations."/".proxyPass = "http://127.0.0.1:3210";
            extraConfig = "proxy_ssl_server_name on;";
        };
    };
}