{
  config,
  lib,
  ...
}:
with lib;
with builtins; {
  options.vim.dashboard.dashboard-nvim = {
    enable = mkEnableOption "Enable dashboard.nvim";
  };
}
