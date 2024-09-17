 -- Configuration goes here.
local g = vim.g

g.ale_linters = {
  python = {'ruff'},
	lua = {'lua_language_server'}
}

