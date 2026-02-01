{lib, pkgs, config, ...} :

with lib;

{
  options.dev.tools.enable = mkOption {
    type = types.bool;
    default = false;
    description = "option to enable my dev tools";
  };

  config = mkIf config.dev.tools.enable {
    environment.systemPackages = with pkgs; [
      git
      curl
      cowsay
    ];
  };
}
