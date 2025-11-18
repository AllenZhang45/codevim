
" ============================================================================
" CodeVim 初始化入口
" 负责按 README 中描述的目录结构加载所有模块
" ============================================================================

let s:root = fnamemodify(expand('<sfile>'), ':p:h')
let g:codevim_root = s:root

" 确保当前项目根目录位于 runtimepath
if index(split(&runtimepath, ','), s:root) < 0
  execute 'set runtimepath^=' . fnameescape(s:root)
endif

function! s:source(file) abort
  if filereadable(a:file)
    execute 'source' fnameescape(a:file)
  endif
endfunction

function! s:load_group(dir, files) abort
  for l:file in a:files
    call s:source(s:root . '/' . a:dir . '/' . l:file . '.vim')
  endfor
endfunction

" --- Core ---
call s:load_group('core', [
      \ 'options',
      \ 'keymaps',
      \ 'autocmds',
      \ 'environment',
      \ ])

" --- UI ---
call s:load_group('ui', [
      \ 'statusline',
      \ 'colors',
      \ 'gui',
      \ 'fonts',
      \ ])

" --- Plugins ---
call s:load_group('plugins', [
      \ 'init',
      \ 'lsp',
      \ 'treesitter',
      \ 'git',
      \ 'completion',
      \ 'lint',
      \ 'debug',
      \ ])

" --- Modules ---
call s:load_group('modules', [
      \ 'workspace',
      \ 'editor',
      \ ])

" --- Local overrides ---
call s:source(s:root . '/local/custom.vim')
call s:source(s:root . '/local/project.vim')


