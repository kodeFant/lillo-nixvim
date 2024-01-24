{
  plugins.neorg = {
    enable = true;
    modules = {
      "core.defaults" = {
        __empty = null;
      };
      "core.dirman" = {
        config = {
          workspaces = {
            work = "~/kodefant-holding/";
          };
        };
      };
      "core.concealer" = {
        config = {
          folds = true;
        };
      };
      "core.autocommands" = {};
      "core.integrations.treesitter" = {};
    };
  };

}
