{
  plugins.neorg = {
    enable = true;
    modules = {
      "core.defaults" = {
        __empty = null;
      };
      "core.dirman" = {
        config = {
          default_workspace  = "main";
          workspaces = {
            main = "~/kodefant-holding";
          };
          index = "index.norg";
        };
      };
      "core.concealer" = {
        config = {
          folds = false;
          icon_preset = "basic";
        };
      };
      "core.journal" = {
        config = {
          journal_folder = "journal";
          strategy = "flat";
	};
      };
      "core.qol.toc" = {
         config = {
           close_after_use = true;
	 };
      };
      "core.autocommands" = {};
      "core.integrations.treesitter" = {};
    };
  };

}
