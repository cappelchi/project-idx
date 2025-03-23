{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''    
    mkdir "$out"
    mkdir -p "$out/.idx/"
    cp -rf ${./dev.nix} "$out/.idx/dev.nix"
  '';
}
