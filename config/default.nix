{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./neorg.nix
    ./treesitter.nix
    ./autosave.nix
    ./copilot.nix
    ./telescope.nix
    ./cmp.nix
    # ./ufo.nix
    # ./codeium.nix
  ];
  colorschemes.rose-pine = {
    enable = true;
  };
  colorschemes.tokyonight.enable = false;
  colorschemes.gruvbox.enable = false;
  clipboard = {
    register = "unnamedplus";
    providers.xclip.enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    ctrlp-vim
    haskell-tools-nvim
    direnv-vim
    fzf-vim
  ];
  plugins = {
    nix.enable = true;
    lsp.enable = true;
    lsp.servers.nixd.enable = true;
    lsp-format.enable = true;
    rainbow-delimiters.enable = true;
  };
  extraConfigLuaPre = ''
    vim.g.mapleader = ","
    -- vim.g.ormolu_command = "fourmolu"
    -- vim.g.ormolu_suppress_stderr = "1"
    -- vim.g.ormolu_options = {"-o -XTypeApplications", "--ghc-opt -XImportQualifiedPost", "--no-cabal"}
  '';
  autoCmd = [
    {
      event = [ "BufEnter" "BufWinEnter" ];
      pattern = [ "*.norg" ];
      command = "set conceallevel=3";
    }
    #    {
    #      event = [ "BufWritePre" ];
    #      pattern = [ "*.hs" ];
    #      command = "lua vim.lsp.buf.format()";
    #    }
  ];
  keymaps = [
    {
      action = "<cmd>lua vim.lsp.buf.format({ async = true })<CR>";
      key = "<leader>f";
      # lua = true;
      options = {
        silent = false;
      };
    }
  ];
}
