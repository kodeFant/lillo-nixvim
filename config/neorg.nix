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
            home = "~/kodefant-holding/org/home";
            work = "~/kodefant-holding/org/work";
          };
        };
      };
    };
  };

}
