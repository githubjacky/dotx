" perl plugins


" node plugins


" python3 plugins
call remote#host#RegisterPlugin('python3', '/home/jacky/dotfile/local/.local/share/nvim/site/pack/packer/start/magma-nvim/rplugin/python3/magma', [
      \ {'sync': v:true, 'name': 'MagmaDeinit', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaDelete', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaReevaluateCell', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaEvaluateLine', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaEvaluateOperator', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaEvaluateVisual', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaInit', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'MagmaLoad', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'MagmaSave', 'type': 'command', 'opts': {'nargs': '?'}},
      \ {'sync': v:true, 'name': 'MagmaShowOutput', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaClearInterface', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaOperatorfunc', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaTick', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaOnBufferUnload', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaOnExitPre', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'MagmaUpdateInterface', 'type': 'function', 'opts': {}},
     \ ])


" ruby plugins


" python plugins


