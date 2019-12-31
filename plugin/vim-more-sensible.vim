if exists("b:did_autoload_more_sensible")
    finish
endif
let b:did_autoload_more_sensible = 1

set nu
set mouse=a

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Highlight whitespace in end of a line
autocmd Filetype python match Error /\s\+$/

" Highlight long line
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

