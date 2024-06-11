{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      pythonEnv = shell: (pkgs.buildFHSUserEnv {
        name = "python-env";
        targetPkgs = pkgs: (with pkgs; [
          python3
          python3Packages.pip
          pipenv

          # Support binary wheels from PyPI
          pythonManylinuxPackages.manylinux2014Package

          # Enable building from sdists
          cmake
          ninja
          gcc
          pre-commit
        ]);
        runScript = "${pkgs.writeShellScriptBin "runScript" ''
            export PIPENV_VENV_IN_PROJECT=1
            pipenv install
            PIPENV_SHELL=${shell} pipenv shell
          ''}/bin/runScript";
      }).env;
    in
    {
      devShell = pythonEnv "fish";
    });
}
