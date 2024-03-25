vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic options ]] --
require("options")

-- [[ Basic keymaps ]] --
require("keymaps")

-- [[ Lazy package manager installation ]] --
require("lazy-bootstrap")

-- [[ Plugin installation ]] --
require("lazy-plugins")

-- vim: ts=2 sts=2 sw=2 et
