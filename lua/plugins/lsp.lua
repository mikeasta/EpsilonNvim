local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Python setup
lspconfig.pyright.setup({
	capabilities = capabilities,
})
