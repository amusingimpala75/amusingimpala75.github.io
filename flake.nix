{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs-lib";
    devshell.url = "github:numtide/devshell";
  };

  outputs = { flake-parts, ... }@inputs: flake-parts.lib.mkFlake { inherit inputs; } ({ ... }: {
    imports = [ inputs.devshell.flakeModule ];
    systems = inputs.nixpkgs.lib.systems.flakeExposed;
    perSystem = { pkgs, ... }: {
      devshells.default = {
        motd = "";
        packages = [
          ((pkgs.emacsPackagesFor pkgs.emacs).emacsWithPackages (epkgs: [
            epkgs.nix-mode
            epkgs.htmlize
          ]))
          pkgs.just
          pkgs.lighttpd
          pkgs.watchexec
        ];
      };
    };
  });
}
