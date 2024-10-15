return {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = { 'bash', 'go', 'c', 'diff', 'html', 'lua', 'vimdoc', 'javascript', 'typescript'},
        -- Autoinstall languages that are not installed
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { 'markdown' },
        },
        indent = { enable = true, disable = { 'ruby' } },
    },
}
