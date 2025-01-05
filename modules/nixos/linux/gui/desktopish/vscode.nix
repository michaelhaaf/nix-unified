{ pkgs, ... }: {
  /* imports = [
    flake.inputs.nixos-vscode-server.nixosModules.default
    ];
    services.vscode-server.enable = true;
    services.vscode-server.installPath = "~/.vscode-server-insiders";
  */

  # https://unix.stackexchange.com/q/659901/14042
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    # (vscode-with-extensions.override
    #  { vscodeExtensions = with vscode-extensions; [ ms-vsliveshare.vsliveshare ]; })
    vscode
    nodejs-16_x # Need this for https://nixos.wiki/wiki/Vscode server
  ];
}
