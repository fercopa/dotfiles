return {
    "vim-test/vim-test",
    ft = {"python"},
    config = function()
        vim.cmd[[
        function! ToggleTerminalStrategy(command)
            exe 'TermExec cmd="' . a:command .'"'
        endfunction

        function! GetExc()
          let current_dir = getcwd()
          if filereadable(current_dir .. '/uv.lock')
            return 'uv run pytest -sx'
          else
            return 'pytest -sx'
          endif
        endfunction

        let g:test#custom_strategies = {'echo': function('ToggleTerminalStrategy')}
        let g:test#strategy = 'echo'
        let test#python#runner = 'pytest'
        let test#python#pytest#executable = GetExc()
        let g:test#preserve_screen = 1
        let g:test#neovim#start_normal = 1
        " let g:test#python#djangotest#executable = "docker compose -f docker-compose.dev.yml run --rm --entrypoint= backend python manage.py test --pdb"
        let g:test#python#pytest#file_pattern = '\v(test_[^/]+|[^/]+_test|tests_[^/]+)\.py$'
        ]]
  end,
  keys = {
    {",t", "<cmd>TestNearest<cr>", desc = "Test Nearest"},
    {",T", "<cmd>TestFile<cr>", desc = "Test Nearest"},
  }
}
