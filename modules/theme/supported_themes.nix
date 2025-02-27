{lib}: {
  onedark = {
    setup = {style ? "dark"}: ''
      -- OneDark theme
      require('onedark').setup {
        style = "${style}"
      }
      require('onedark').load()
    '';
    styles = ["dark" "darker" "cool" "deep" "warm" "warmer"];
  };

  tokyonight = {
    setup = {style ? "night"}: ''
      -- need to set style before colorscheme to apply
      vim.g.tokyonight_style = '${style}'
      vim.cmd[[colorscheme tokyonight]]
    '';
    styles = ["day" "night" "storm"];
  };

  dracula = {
    setup = ''
      require('dracula').setup({});
      require('dracula').load();
    '';
  };

  catppuccin = {
    setup = {
      style ? "mocha",
      transparent ? false,
    }: ''
      -- Catppuccin theme
      require('catppuccin').setup {
        flavour = "${style}",
        transparent_background = "${builtins.toString transparent}",
        integrations = {
      	  nvimtree = {
      		  enabled = true,
      		  transparent_panel = false,
      		  show_root = true,
      	  },

          hop = true,
      	  gitsigns = true,
      	  telescope = true,
      	  treesitter = true,
      	  ts_rainbow = true,
        },
      }
      -- setup must be called before loading
      vim.cmd.colorscheme "catppuccin"
    '';
    styles = ["latte" "frappe" "macchiato" "mocha"];
  };
}
