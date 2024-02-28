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
  extraFiles."after/ftplugin/haskell.lua" = builtins.readFile ./lua/haskell.lua;

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
    vim-wakatime
  ];
  plugins = {
    nix.enable = false;
    lsp = {
      enable = true;
      servers = {
	nixd.enable = true;
	html.enable = true;
	tsserver.enable = true;
	cssls.enable = true;
      };
    };

    # lsp-format.enable = true;
    rainbow-delimiters.enable = true;
    multicursors.enable = true;
    trouble.enable = true;
    nvim-colorizer.enable = true;
  };
  extraConfigLuaPre = ''
    vim.g.mapleader = ","
    -- vim.g.ormolu_command = "fourmolu"
    -- vim.g.ormolu_suppress_stderr = "1"
    -- vim.g.ormolu_options = {"-o -XTypeApplications", "--ghc-opt -XImportQualifiedPost", "--no-cabal"}
  '';
  extraConfigLua = ''
    -- Line numbers
    vim.wo.relativenumber = true
    vim.wo.number = true
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
      action = ''
        function() 
        	vim.lsp.buf.format({ async = true }) 
        end
      '';
      key = "<leader>f";
      lua = true;
      options = {
        silent = true;
      };
    }
    {
      action = "vim.lsp.buf.hover";
      key = "<leader>h";
      lua = true;
      options = {
        silent = true;
      };
    }
    {
      action = "vim.diagnostic.open_float";
      key = "gl";
      mode = "n";
      lua = true;
      options = {
        silent = true;
      };
    }
  ];
}
