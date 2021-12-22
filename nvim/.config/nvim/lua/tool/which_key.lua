local wk = require("which-key")

local n_keymap = {
	j = {
		name = 'basic',
		c = {'viwU<esc>', 'capital'},
		h = {'<cmd>bprevious<cr>', 'previous buffer'},
		l = {'<cmd>bnext<cr>', 'next buffer'},
		d = {'<cmd>bd<cr>', 'delete buffer'},
	},
	n = {   name = 'tree',
		t = {'<cmd>NvimTreeToggle<cr>', 'nvimTree'},
		r = {'<cmd>NvimTreeRefresh<cr>', 'refresh'}
	},
	s = {
		name = '+split',
		s = {'<cmd>split<cr>', 'split horizontal'},
		v = {'<cmd>vsplit<cr>', 'split vertical'},
		j = {'<cmd>resize -2<cr>', 'resize down'},
		k = {'<cmd>resize +2<cr>', 'resize up'},
		h = {'<cmd>vertical resize +2<cr>', 'resize left'},
		l = {'<cmd>vertical resize -2<cr>', 'resize right'},
		i = {'<c-w>j', 'go down'},
		o = {'<c-w>k', 'go up'},
		u = {'<c-w>h', 'go left'},
		p = {'<c-w>l', 'go right'}
	},
	r = {'<cmd>Lspsaga rename<cr>', 'rename'},
	t = {'<cmd>Lspsaga open_floaterm<cr>', 'termanal'},
        q = {'<cmd>Lspsaga close_floaterm<cr>', 'close terminal'},
	l = {
		name = "+lspSaga",
		f = {'<cmd>Lspsaga lsp_finder<cr>', 'finder'},
		a = {'<cmd>Lspsaga code_action<cr>', 'code'},
		h = {'<cmd>Lspsaga hover_doc<cr>', 'hover'},
		d = {'<cmd>Lspsaga preview_definition<cr>', 'definition'},
		e = {
			name = '+diagnostic',
			d = {'<cmd>Lspsaga show_line_diagnostics<cr>', 'diagnostic'},
			j = {'<cmd>Lspsaga diagnostic_jump_next<cr>', 'next'},
			k = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', 'previous'}
                },
		s = {'<cmd>Lspsaga signature help', 'siganature'},
		j = {'<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<cr>', 'saga up'},
		k = {'<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<cr>', 'saga down'}
	},
	m = {
		name = '+markdown',
		v = {'<cmd>Glow<cr>', 'mdView'},
		p = {'<cmd>Pandoc<space>pdf<cr>', 'transform to pdf'},
		t = {'<cmd>TableFormat<cr>', 'tableformat'},
		l = {'<cmd>Limelight!!<cr>', 'light toggle'},
		g = {'<cmd>Goyo<cr>', 'goyo on'},
		G = {'<cmd>Goyo!<cr>', 'goyo off'}
	},
	p = {'<cmd>RMarkdown pdf<cr>', 'Rpdf'},
	f = {
		name = 'telescpe',
		f = {'<cmd>Telescope<space>find_files<cr>', 'find file'},
		w = {'<cmd>Telescope<space>live_grep<cr>', 'find word'},
		h = {'<cmd>Telescope<space>help_tags<cr>', 'help tag'},
		o = {'<cmd>Telescope<space>oldfiles<cr>', 'find history'},
		c = {'<cmd>Telescope<space>colorscheme<cr>', 'change colorscheme'},
		m = {'<cmd>Telescope<space>marks<cr>', 'book mark'}
	},
	--j = {
		--name = 'jupyter',
		--c = {'<Plug>JupyterExecute', 'execute cell'},
		--a = {'<Plug>JupyterExecuteAll', 'execute all'}
	--},
	d = {
		name = 'dashboard-session',
		s = {'<c-u>SessionSave<cr>', 'session-save'},
		l = {'<c-u>SessionLoad<cr>', 'session-load'}
	}

}

wk.register(n_keymap, {prefix= '<leader>', mode = "n"})
