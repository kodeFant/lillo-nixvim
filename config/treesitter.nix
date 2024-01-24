{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    package = pkgs.vimPlugins.nvim-treesitter;
  };
}
