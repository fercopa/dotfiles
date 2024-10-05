return {
    "vim-test/vim-test",
    ft = {"python"},
    config = function()
        vim.cmd[[
        function! ToggleTerminalStrategy(command)
            exe 'TermExec cmd="' . a:command .'"'
        endfunction

        function! GetExc()
            if !empty($SERVICE_NAME)
                return 'docker compose -f ../nb-dev-tools/docker-compose.yml run --rm --entrypoint= $SERVICE_NAME pytest --disable-pytest-warnings -sx'
            else
                return 'pytest -sx'
            endif
        endfunction

        " let g:test#custom_strategies = {'echo': function('ToggleTerminalStrategy')}
        let g:test#strategy = 'toggleterm'
        " let g:test#strategy = 'echo'
        let test#python#runner = 'pytest'
        let g:test#preserve_screen = 1
        let g:test#neovim#start_normal = 1
        " let g:test#python#pytest#executable = GetExc()
        let g:test#python#pytest#file_pattern = '\v(test_[^/]+|[^/]+_test|tests_[^/]+)\.py$'
        ]]
    end,
    keys = {
        {",t", "<cmd>TestNearest<cr>", desc = "Test Nearest"},
        {",T", "<cmd>TestFile<cr>", desc = "Test Nearest"},
    }
}
