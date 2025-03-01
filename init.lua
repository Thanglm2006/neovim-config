--------------------------------------------------------------------------------
-- Example init.lua demonstrating how to configure auto-completion for C++, HTML,
-- CSS, Python, JavaScript/TypeScript, and Java using LSP in Neovim.
--------------------------------------------------------------------------------

-- NOTE: This file is meant as a simplified example for setting up LSP servers
--       and auto-completion. It requires that you have 'mason.nvim', 
--       'mason-lspconfig.nvim', 'nvim-lspconfig', 'nvim-cmp', 'cmp-nvim-lsp',
--       and the appropriate language servers installed on your system.

-- Set up Mason so it can manage external tools like LSP servers.
require('mason').setup()

-- Use mason-lspconfig to automatically set up installed servers.
require('mason-lspconfig').setup({
  ensure_installed = {
    -- C++:
    'clangd',

    -- HTML and CSS:
    'html',
    'cssls',

    -- JavaScript/TypeScript:
    'tsserver',

    -- Python:
    'pyright',

    -- Java:
    -- For Java, you typically install 'jdtls'. Make sure to install Java on your system:
    -- i.e. "sudo apt-get install default-jdk" or similar for your OS.
    'jdtls',
  }
})

-- Provide extra capabilities that nvim-cmp can offer to LSP.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Loop through each listed server and set it up with nvim-lspconfig.
require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup({
      capabilities = capabilities,
    })
  end,
})

-- nvim-cmp setup for auto-completion.
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  -- You can configure additional completion behavior here.
  -- "menu,menuone,noinsert" is a common recommendation.
  completion = { completeopt = 'menu,menuone,noinsert' },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    -- Scroll docs
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- Confirm selection
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    -- Manually trigger completion
    ['<C-Space>'] = cmp.mapping.complete({}),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'path' },
  })
})

--------------------------------------------------------------------------------
-- That's it! You now have:
--   - Mason installing the clangd, html, cssls, tsserver, pyright, and jdtls servers
--   - nvim-lspconfig configuring each installed LSP server
--   - nvim-cmp providing auto-completion with those servers
--------------------------------------------------------------------------------