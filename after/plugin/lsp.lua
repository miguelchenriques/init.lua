local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.ensure_installed({
	'rust_analyzer',
	'pylsp',
	'lua_ls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})


lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
    local function lsp_opts(description)
        local opts_table = {buffer = bufnr, remap = false, desc = description}
        return opts_table
    end

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
    lsp_opts('Go to Definition'))
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
    lsp_opts('Hover'))
	vim.keymap.set("n", "<leader>ws",
    function() vim.lsp.buf.workspace_symbol() end, lsp_opts('Workspace Symbols'))
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "´d", function() vim.lsp.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "`d", function() vim.lsp.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca",
    function() vim.lsp.buf.code_actions() end, lsp_opts('Code Actions'))
	vim.keymap.set("n", "<leader>gr",
    function() vim.lsp.buf.references() end, lsp_opts('View References'))
	vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end,
    lsp_opts('Refactor Rename'))
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end,
    lsp_opts('Show keyword signature'))
end)

require'lspconfig'.lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}

require'lspconfig'.pylsp.setup{}


lsp.setup()
