# Not in use. Will probably stick with neorg.

{ pkgs, ... }:
let
  nvim-orgmode = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-orgmode";
    version = "0.2.1";
    src = pkgs.fetchFromGitHub {
      owner = "nvim-orgmode";
      repo = "orgmode";
      rev = "93ab75f";
      sha256 = "sha256-tgva99awHvSZKfmgcFyT+32iICEcY/I2THZ5ptjPj38=";
    };
    meta.homepage = "https://github.com/nvim-orgmode/orgmode";
  };
in
{
  extraPlugins = [{
    plugin = nvim-orgmode;
    config = ''
      local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
      if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
          "git",
          "clone",
          "--filter=blob:none",
          "https://github.com/folke/lazy.nvim.git",
          "--branch=stable", -- latest stable release
          lazypath,
        })
      end
      vim.opt.rtp:prepend(lazypath)
      lua require('orgmode').setup_ts_grammar()
      lua << EOF
      require('orgmode').setup({
        org_agenda_files = {'~/kodefant-holding/**/*'},
        org_default_notes_file = '~/kodefant-holding/index.org',
      })
      EOF'';

    optional = false; # Load the plugin by default
  }];
}
