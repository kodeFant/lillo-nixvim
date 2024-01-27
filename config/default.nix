{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./neorg.nix
    ./treesitter.nix
    ./autosave.nix
    ./ufo.nix
    ./codeium.nix
  ];
  colorschemes.rose-pine = {
    enable = true;
  };
  clipboard.register = "unnamedplus";
  extraPlugins = with pkgs.vimPlugins; [
    ctrlp-vim
    haskell-tools-nvim
    direnv-vim
  ];
}
