local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  }
}


M.general = {
  n = {
    ["<leader>w|"] = {"<cmd> vsplit <CR>", "Split window vertically"},
    ["<leader>w-"] = {"<cmd> split <CR>", "Split window horizontally"},
  }
}

M.git = {
  n = {
    ["<leader>gs"] = {vim.cmd.Git, "Git status"},
    ["<leader>gb"] = {"<cmd> Git branch <CR>", "Git branch"},
  }
}

M.lspconfig = {
  i = {
    ["<C-a>"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },
  }
}

M.telescope = {
  n = {
    ["<leader>fr"] = {"<cmd> Telescope lsp_references <CR>", "Find references"},
    ["<leader>fs"] = {"<cmd> Telescope lsp_document_symbols <CR>", "Find document symbols"},
  }
}

return M
