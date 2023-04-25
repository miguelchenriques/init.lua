require('lualine').setup {
    tabline = {
        lualine_a = {
            {
                'tabs',
                mode = 1,
                fmt = function(name, context)
                    -- Show + if buffer is modified in tab
                    local buflist = vim.fn.tabpagebuflist(context.tabnr)
                    local winnr = vim.fn.tabpagewinnr(context.tabnr)
                    local bufnr = buflist[winnr]
                    local mod = vim.fn.getbufvar(bufnr, '&mod')
                    return name .. (mod == 1 and ' +' or '')
                end
            }
        },
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    }
}
