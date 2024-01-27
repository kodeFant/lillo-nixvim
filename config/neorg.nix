{
  plugins.neorg = {
    enable = true;
    modules = {
      "core.defaults" = {
        __empty = null;
      };
      "core.dirman" = {
        config = {
          default_workspace  = "work";
          workspaces = {
            work = "~/kodefant-holding/";
          };
          index = "org.norg";
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
