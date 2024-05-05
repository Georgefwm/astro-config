return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    }
  },
  -- {
  --   "telescope.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope-fzf-native.nvim",
  --     build = "make",
  --     config = function()
  --       require("telescope").load_extension("fzf")
  --     end,
  --   }, 
  -- },
  {
    'Civitasv/cmake-tools.nvim',
    cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G \"Unix Makefiles\""},
    -- cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
    cmake_build_directory = "build/${variant:buildType}",
    lazy = false
  }
}
