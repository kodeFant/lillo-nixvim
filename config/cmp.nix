{
  plugins = {
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      preselect = "None";
      sources = [
        { name = "path"; }
        { name = "buffer"; groupIndex = 10; }
        { name = "copilot"; }
      ];
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<CR>" = "cmp.mapping.confirm({ select = false })";
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [
            "i"
            "s"
          ];
        };
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [
            "i"
            "s"
          ];
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-nvim-lsp.enable = true;
  };
}
