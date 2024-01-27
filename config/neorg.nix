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
          index = "index.norg";
        };
      };
      "core.concealer" = {
        config = {
          folds = true;
          icon_preset = "diamond";
        };
      };
      "core.autocommands" = {};
      "core.integrations.treesitter" = {};
    };
  };

}
