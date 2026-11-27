return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts) -- Put the file type on the Far Right (Section Z)
      opts.sections.lualine_z = {
        {
          "filetype",
          icon_only = false, -- Set to true if you ONLY want the logo, false shows logo + name (like "lua")
          separator = { left = "" }, -- Optional: adds those cool angled dividers
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- Disable the inline virtual text
        virtual_text = false,
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
