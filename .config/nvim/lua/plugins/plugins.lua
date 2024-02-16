plugins = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  'onsails/lspkind.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },
  { "m4xshen/autoclose.nvim" },
  -- lsp configuration
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },

  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  { 'kevinhwang91/nvim-ufo', dependencies = { 'kevinhwang91/promise-async' } },
  { "sindrets/diffview.nvim" },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          svelte = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          graphql = { "prettier" },
          lua = { "stylua" },
          python = { "isort", "black" },
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        },
      })

      vim.keymap.set({ "n", "v" }, "<leader>mp", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },
  { "mfussenegger/nvim-dap" },
  {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
    setup = {
      -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
      debugger_path = vim.fn.stdpath('data') .. "/lazy/vscode-js-debug",
      -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
      adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
      -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
      -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
      -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
    }
  },
}
