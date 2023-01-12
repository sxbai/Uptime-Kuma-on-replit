{ pkgs }: {
    deps = [
        pkgs.nodejs-16_x
		    pkgs.wget
        pkgs.nodePackages.pm2
    ];
}
