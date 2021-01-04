" Listen very carefully, I will say this only once
if exists("did_load_filetypes")
  finish
endif
let did_load_filetypes_useafter = 1
"
au BufRead,BufNewFile *.inc :filetype plugin on | set filetype=pamcrash
au BufRead,BufNewFile *.pc :filetype plugin on | set filetype=pamcrash 
au BufRead,BufNewFile *.mat :filetype plugin on | set filetype=pamcrash 
au BufRead,BufNewFile *.metric :filetype plugin on | set filetype=pamcrash 
