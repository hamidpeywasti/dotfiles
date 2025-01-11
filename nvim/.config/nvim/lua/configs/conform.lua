local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome" },
    typescript = { "biome" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    c = { "clang-format" },
    css = { "biome" },
    html = { "prettier" },
    yaml = { "biome" },
  },

  formatters = {
    biome = {
      command = "biome",
      args = { "format", "--stdin-file-path", "$FILENAME", "--fix"},
      stdin = true,
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 10000,
    lsp_fallback = true,
  },
}

return options
