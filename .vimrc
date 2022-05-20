set nonumber

"Go to normal mode
imap ii <Esc>

"Save Document
nmap s :w<CR>
nmap S :w<CR>

"Change Document
nnoremap J gT
nnoremap K gt


"Scrolling in visual mode through document
vnoremap H <C-u>zz
vnoremap L <C-d>zz

"Scrolling in normal mode through document
set relativenumber
nnoremap H <C-u>zz
nnoremap L <C-d>zz

"Close all documents with \q
map <leader>q :vsc Window.CloseAllDocuments<CR>
map <leader>Q :vsc Window.CloseAllDocuments<CR>

"Shortcut for replace
nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left>


"Shortcut for replace selected
vnoremap <leader>r :s///g<Left><Left>:
vnoremap <leader>rc :s///gc<Left><Left>

"Shortcut for replace selected
nnoremap <silent>r* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
vnoremap <silent>r* "sy:let @/=@s<CR>cgn

"Don't jump with * 
nnoremap * *``