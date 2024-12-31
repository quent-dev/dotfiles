-- Bootstrap lazy 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This has to be setup before initilazing lazy
vim.g.mapleader= " "


-- Initializing Lazy
require("lazy").setup("plugins",{
    change_detection = {
      enabled = true, -- automatically change for config files change and reload the ui
      notify = false, -- turn off notifications when plugin changes are made
  },
})

require("core.options")
require("core.keymaps")

