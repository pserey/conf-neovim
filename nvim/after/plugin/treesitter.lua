require('nvim-treesitter.configs').setup {
  ensure_installed = { "vim", "python", "lua", "java", "make", "c" },
  sync_install = false,
  highlight = {
    enable = true
  }
}
