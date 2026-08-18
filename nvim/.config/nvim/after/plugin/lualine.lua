require('lualine').setup {
        options = {
            icons_enabled = true,
            theme = 'material',
            component_separators = { left = '|', right = '|'},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {},
            always_divide_middle = true,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {
                    {'branch'},
                    {'diff',
                        colored = true,
                        diff_color = {
                            added = nil,
                            modified = nil,
                            removed = nil,
                        },
                        symbols = {
                            added = '+',
                            modified = '~',
                            removed = '-'
                        }
                    },
                    {'diagnostics', sources={'nvim_lsp', 'coc'}}
                },
            lualine_c = {
                {
                    'filename',
                    file_status = true,
                    path = 1,
                    shorting_target = 40
                }
            },
            lualine_x = {'encoding', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        }
    }
