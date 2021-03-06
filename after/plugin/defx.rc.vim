if !exists('g:loaded_defx')
  finish
endif

nnoremap <silent>sf :<C-u>Defx -listed -resume
  \ -columns=indent:mark:icon:icons:filename:git:size
  \ -buffer-name=tab`tabpagenr()`
  \ `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap <silent>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

autocmd FileType defx call s:defx_my_settings()
  function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
      \ defx#do_action('open')
    nnoremap <silent><buffer><expr> c
      \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
      \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
      \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> E
      \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> o
      \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> K
      \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
      \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> d
      \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
      \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
      \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
      \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
      \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
      \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
      \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
      \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
      \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
      \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
      \ defx#do_action('toggle_select')
    nnoremap <silent><buffer><expr> *
      \ defx#do_action('toggle_select_all')
  endfunction

call defx#custom#column('icon', {
      \ 'directory_icon': '▶ ',
      \ 'opened_icon': '▷ ',
      \ 'file_icon': '  ',
      \ 'root_icon': '  ',
      \})
