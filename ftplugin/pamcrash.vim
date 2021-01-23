" Vim filetype plugin file
" Language:     PAM-CRASH
" Maintainer:   Roman Firt (roman.firt@yahoo.de) 
" Last Change:  2014 May 26


" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Couple of Housekeeping stuff
set nocompatible
set ignorecase
set smartcase

" omni completion with Tab
set noexpandtab
nnoremap <Tab> R<C-X><C-O>
inoremap <Tab> <C-N>
inoremap <S-Tab> <C-P>

" Set the format of the include file specification for Abaqus
" Used in :check gf ^wf [i and other commands
setlocal include="^INCLU \/"


" Define format of comment lines (see 'formatoptions' for uses)
setlocal comments=:#,:$

" Set the PAMCRASH Complete Function
setlocal ofu=pamcomplete#Complete
set completeopt=menuone,preview

" Set the pamtags file
set tags=pamtags
set iskeyword+=:,',-,_,.,(,)

" Get the helptags working
helptags ~/.vim/doc
"
" Ctags refreshing
map <silent> <F12> :silent !~/.vim/ftplugin/pamtags.sh<CR>:redraw!<CR>
"
" Status Line hints
set laststatus=2
"set statusline=%{pamcomplete#pamHints()}%=%l,%c%V\ %P
"set statusline=%<%f\ %h%m%r\ \ \ \ \ \ \ \ \ \ %#pam_Hint#%{pamcomplete#pamHints()}%#StatusLine#%=%-14.(%l,%c%V%)\ %P
set statusline=%#pam_Hint#%{pamcomplete#pamHints()}%#StatusLine#%=%-14.(%l,%c%V%)\ %P
"
"
"PAM-CRASH lineal
map ,, 0i$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8<CR><ESC>

"PAM-CRASH Input Cards


" ==== Contact ====

"Contact Type 10
map <silent> ,c10 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c10.inc<CR>dd
"contact Type 154
map <silent> ,c154 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c154.inc<CR>dd
" Contact Type 1
map <silent> ,c1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c1.inc<CR>dd
"Contact Type 21
map <silent> ,c21 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c21.inc<CR>dd
"Contact Type 33
map <silent> ,c33 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c33.inc<CR>dd
"Contact Type 34
map <silent> ,c34 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c34.inc<CR>dd
"Contact Type 36
map <silent> ,c36 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c36.inc<CR>dd
"Contact Type 37
map <silent> ,c37 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c37.inc<CR>dd
"Contact Type 43
map <silent> ,c43 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c43.inc<CR>dd
"Contact Type 44
map <silent> ,c44 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c44.inc<CR>dd
"Contact Type 46
map <silent> ,c46 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c46.inc<CR>dd
"Contact Type 54
map <silent> ,c54 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c54.inc<CR>dd
"Contact Type 61
map <silent> ,c61 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Contact/c61.inc<CR>dd

" ==== Material ====

"LAYER Material Card
map <silent> ,la ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/la.inc<CR>dd
"Material Type 100
map <silent> ,m100 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m100.inc<CR>dd
"Material Type 101
map <silent> ,m101 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m101.inc<CR>dd
"Material Type 102 (CURVE Definition)
map <silent> ,m102 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m102.inc<CR>dd
"Material Type 103 (CURVE Definition)
map <silent> ,m103 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m103.inc<CR>dd
"Material Type 105 (CURVE Definition, HSR Damage)
map <silent> ,m105 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m105.inc<CR>dd
"Material Type 106 (CURVE Definition)
map <silent> ,m106 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m106.inc<CR>dd
"Material Type 108 (CURVE Definition)
map <silent> ,m108 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m108.inc<CR>dd
"Material Type 109 (CURVE Definition)
map <silent> ,m109 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m109.inc<CR>dd
"Material Type 110
map <silent> ,m110 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m110.inc<CR>dd
"Material Type 115 (CURVE Definition)
map <silent> ,m115 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m115.inc<CR>dd
"Material Type 116 (CURVE Definition)
map <silent> ,m116 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m116.inc<CR>dd
"Material Type 117 (CURVE Definition)
map <silent> ,m117 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m117.inc<CR>dd
"Material Type 118 (CURVE Definition)
map <silent> ,m118 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m118.inc<CR>dd
" Material Type 11
map <silent> ,m11 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m11.inc<CR>dd
"Material Type 121
map <silent> ,m121 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m121.inc<CR>dd
"Material Type 126
map <silent> ,m126 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m126.inc<CR>dd
"Material Type 127 (CURVE Definition)
map <silent> ,m127 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m127.inc<CR>dd
"Material Type 128
map <silent> ,m128 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m128.inc<CR>dd
" Material Type 12
map <silent> ,m12 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m12.inc<CR>dd
"Material Type 130
map <silent> ,m130 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m130.inc<CR>dd
"Material Type 131
map <silent> ,m131 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m131.inc<CR>dd
"Material Type 132
map <silent> ,m132 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m132.inc<CR>dd
"Material Type 143
map <silent> ,m143 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m143.inc<CR>dd
"Marerial Type 150
map <silent> ,m150 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m150.inc<CR>dd
"Material Type 151
map <silent> ,m151 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m151.inc<CR>dd
"Material Type 152
map <silent> ,m152 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m152.inc<CR>dd
" Material Type 15
map <silent> ,m15 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m15.inc<CR>dd
"Material Type 161
map <silent> ,m161 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m161.inc<CR>dd
"Material Type 162 (CURVE Definition)
map <silent> ,m162 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m162.inc<CR>dd
" Material Type 16 (CURVE Definition)
map <silent> ,m16 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m16.inc<CR>dd
"Material Type 171 (CURVE Definition)
map <silent> ,m171 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m171.inc<CR>dd
" Material Type 17
map <silent> ,m17 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m17.inc<CR>dd
" Material Type 18
map <silent> ,m18 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m18.inc<CR>dd
" Material Type 19
map <silent> ,m19 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m19.inc<CR>dd
" Material Type 1 (CURVE Definition)
map <silent> ,m1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m1.inc<CR>dd
"Material Type 200
map <silent> ,m200 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m200.inc<CR>dd
"Material Type 201
map <silent> ,m201 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m201.inc<CR>dd
"Material Type 202 (CURVE Definition)
map <silent> ,m202 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m202.inc<CR>dd
"Material Type 203
map <silent> ,m203 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m203.inc<CR>dd
"Material Type 204
map <silent> ,m204 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m204.inc<CR>dd
"Material Type 205
map <silent> ,m205 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m205.inc<CR>dd
" Material Type 20
map <silent> ,m20 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m20.inc<CR>dd
"Material Type 212 (CURVE Definition)
map <silent> ,m212 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m212.inc<CR>dd
"Material Type 213 (CURVE Definition)
map <silent> ,m213 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m213.inc<CR>dd
"Material Type 214
map <silent> ,m214 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m214.inc<CR>dd
" Material Type 21
map <silent> ,m21 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m21.inc<CR>dd
"Material Type 220
map <silent> ,m220 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m220.inc<CR>dd
"Material Type 221
map <silent> ,m221 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m221.inc<CR>dd
"Material Type 222
map <silent> ,m222 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m222.inc<CR>dd
"Material Type 223
map <silent> ,m223 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m223.inc<CR>dd
"Material Type 224
map <silent> ,m224 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m224.inc<CR>dd
"Material Type 225
map <silent> ,m225 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m225.inc<CR>dd
"Material Type 226
map <silent> ,m226 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m226.inc<CR>dd
"Material Type 22
map <silent> ,m22 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m22.inc<CR>dd
"Material Type 230
map <silent> ,m230 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m230.inc<CR>dd
"Material Type 240
map <silent> ,m240 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m240.inc<CR>dd
" Material Type 24
map <silent> ,m24 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m24.inc<CR>dd
" Material Type 25
map <silent> ,m25 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m25.inc<CR>dd
" Material Type 26 (CURVE Definition)
map <silent> ,m26 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m26.inc<CR>dd
" Material Type 28
map <silent> ,m28 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m28.inc<CR>dd
" Material Type 2
map <silent> ,m2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m2.inc<CR>dd
"Material Type 301
map <silent> ,m301 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m301.inc<CR>dd
"Material Type 302
map <silent> ,m302 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m302.inc<CR>dd
"Material Type 303
map <silent> ,m303 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m303.inc<CR>dd
"Material Type 304
map <silent> ,m304 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m304.inc<CR>dd
"Material Type 305
map <silent> ,m305 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m305.inc<CR>dd
"Material Type 306
map <silent> ,m306 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m306.inc<CR>dd
" Material Type 30
map <silent> ,m30 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m30.inc<CR>dd
" Material Type 31
map <silent> ,m31 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m31.inc<CR>dd
" Material Type 35 (CURVE Definition)
map <silent> ,m35 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m35.inc<CR>dd
" Material Type 36
map <silent> ,m36 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m36.inc<CR>dd
"Material Type 371
map <silent> ,m371 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m371.inc<CR>dd
" Material Type 37
map <silent> ,m37 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m37.inc<CR>dd
" Material Type 38
map <silent> ,m38 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m38.inc<CR>dd
" Material Type 41
map <silent> ,m41 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m41.inc<CR>dd
" Material Type 42
map <silent> ,m42 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m42.inc<CR>dd
" Material Type 45
map <silent> ,m45 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m45.inc<CR>dd
" Material Type 47
map <silent> ,m47 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m47.inc<CR>dd
" Material Type 51
map <silent> ,m51 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m51.inc<CR>dd
" Material Type 52 (CURVE Definition)
map <silent> ,m52 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m52.inc<CR>dd
" Material Type 5
map <silent> ,m5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m5.inc<CR>dd
" Material Type 61
map <silent> ,m61 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m61.inc<CR>dd
" Material Type 62 (CURVE Definition)
map <silent> ,m62 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m62.inc<CR>dd
" Material Type 6
map <silent> ,m6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m6.inc<CR>dd
" Material Type 71 (CURVE Definition)
map <silent> ,m71 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m71.inc<CR>dd
" Material Type 7
map <silent> ,m7 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m7.inc<CR>dd
" Material Type 8
map <silent> ,m8 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m8.inc<CR>dd
" Material Type 99
map <silent> ,m99 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/m99.inc<CR>dd
"VA Material Type 1
map <silent> ,ma1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ma1.inc<CR>dd
"VA Material Type 2
map <silent> ,ma2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ma2.inc<CR>dd
"VA Material Type 3
map <silent> ,ma3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ma3.inc<CR>dd
"VA Material Type 4
map <silent> ,ma4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ma4.inc<CR>dd
"VA Material Type 5
map <silent> ,ma5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ma5.inc<CR>dd
"PFMAT Porous Material
map <silent> ,mp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/mp.inc<CR>dd
"THMAT Thermal Material
map <silent> ,mt ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/mt.inc<CR>dd
"PLY Material Card
map <silent> ,ply0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply0.inc<CR>dd
"PLY Type 1
map <silent> ,ply1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply1.inc<CR>dd
"PLY Type 2
map <silent> ,ply2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply2.inc<CR>dd
"PLY Type 3
map <silent> ,ply3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply3.inc<CR>dd
"PLY Type 4
map <silent> ,ply4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply4.inc<CR>dd
"PLY Type 5
map <silent> ,ply5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply5.inc<CR>dd
"PLY Type 6
map <silent> ,ply6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply6.inc<CR>dd
"PLY Type 7
map <silent> ,ply7 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply7.inc<CR>dd
"PLY Type 8
map <silent> ,ply8 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Material/ply8.inc<CR>dd

" ==== Auxiliaries ====

"CDATA Card
map <silent> ,cd ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/cd.inc<CR>dd
"DELEM - Deleted Element Card
map <silent> ,de ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/de.inc<CR>dd
" FUNCT Function Card
map <silent> ,fc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fc.inc<CR>dd
"FRAME IAXIS=0 U-based, 2 Vectors
map <silent> ,fm0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm0.inc<CR>dd
"FRAME IAXIS=1 U-based, 3 Nodes
map <silent> ,fm1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm1.inc<CR>dd
"FRAME IAXIS=2 T-based, 2 Vectors
map <silent> ,fm2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm2.inc<CR>dd
"FRAME IAXIS=3 T-based, 3 Nodes
map <silent> ,fm3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm3.inc<CR>dd
"FRAME IAXIS=4 Cylindrical
map <silent> ,fm4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm4.inc<CR>dd
"FRAME IAXIS=5 Spherical
map <silent> ,fm5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fm5.inc<CR>dd
"FRICT Friction Model Type 10
map <silent> ,fr10 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr10.inc<CR>dd
"FRICT Friction Model Type 11
map <silent> ,fr11 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr11.inc<CR>dd
"FRICT Friction Model Type 12
map <silent> ,fr12 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr12.inc<CR>dd
"FRICT Friction Model Type 13
map <silent> ,fr13 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr13.inc<CR>dd
"FRICT Friction Model Type 1
map <silent> ,fr1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr1.inc<CR>dd
"FRICT Friction Model Type 2
map <silent> ,fr2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr2.inc<CR>dd
"FRICT Friction Model Type 3
map <silent> ,fr3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr3.inc<CR>dd
"FRICT Friction Model Type 4
map <silent> ,fr4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr4.inc<CR>dd
"FRICT Friction Model Type 5
map <silent> ,fr5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr5.inc<CR>dd
"FRICT Friction Model Type 5
map <silent> ,fr6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fr6.inc<CR>dd
"FRICT Friction Model Type 10
map <silent> ,fra ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fra.inc<CR>dd
"FRICT Friction Model Type 11
map <silent> ,frb ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/frb.inc<CR>dd
"FRICT Friction Model Type 12
map <silent> ,frc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/frc.inc<CR>dd
"FRICT Friction Model Type 13
map <silent> ,frd ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/frd.inc<CR>dd
"FUNCSW Function Switch
map <silent> ,fw ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/fw.inc<CR>dd
" GROUP Group Definition
map <silent> ,gr ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/gr.inc<CR>dd
" LOOKU Lookup Table
map <silent> ,lo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/lo.inc<CR>dd
"NLAVE - Non Local Averadge Definition
map <silent> ,nl ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/nl.inc<CR>dd
"PLANE Type 0
map <silent> ,pa0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/pa0.inc<CR>dd
"PLANE Type 1
map <silent> ,pa1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/pa1.inc<CR>dd
"PLANE Type 2
map <silent> ,pa2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/pa2.inc<CR>dd
"PYFUNC Python Function
map <silent> ,pf ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/pf.inc<CR>dd
"RUPMO Type 0
map <silent> ,ru0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru0.inc<CR>dd
"RUPMO Type 1
map <silent> ,ru1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru1.inc<CR>dd
"RUPMO Type 2
map <silent> ,ru2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru2.inc<CR>dd
"RUPMO Type 3
map <silent> ,ru3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru3.inc<CR>dd
"RUPMO Type 5
map <silent> ,ru5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru5.inc<CR>dd
"RUPMO Type 6
map <silent> ,ru6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru6.inc<CR>dd
"RUPMO Type 7
map <silent> ,ru7 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ru7.inc<CR>dd
"SENSOR Type 10
map <silent> ,se10 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se10.inc<CR>dd
"SENSOR Type 11
map <silent> ,se11 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se11.inc<CR>dd
"SENSOR Type 12
map <silent> ,se12 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se12.inc<CR>dd
"SENSOR Type 13
map <silent> ,se13 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se13.inc<CR>dd
"SENSOR Type 14
map <silent> ,se14 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se14.inc<CR>dd
"SENSOR Type 1
map <silent> ,se1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se1.inc<CR>dd
"SENSOR Type 2
map <silent> ,se2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se2.inc<CR>dd
"SENSOR Type 3
map <silent> ,se3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se3.inc<CR>dd
"SENSOR Type 4
map <silent> ,se4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se4.inc<CR>dd
"SENSOR Type 5
map <silent> ,se5 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se5.inc<CR>dd
"SENSOR Type 6
map <silent> ,se6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se6.inc<CR>dd
"SENSOR Type 7
map <silent> ,se7 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se7.inc<CR>dd
"SENSOR Type 8
map <silent> ,se8 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se8.inc<CR>dd
"SENSOR Type 9
map <silent> ,se9 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/se9.inc<CR>dd
"SENSOR Type 10
map <silent> ,sea ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/sea.inc<CR>dd
"SENSOR Type 11
map <silent> ,seb ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/seb.inc<CR>dd
"SENSOR Type 12
map <silent> ,sec ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/sec.inc<CR>dd
"SENSOR Type 13
map <silent> ,sed ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/sed.inc<CR>dd
"SENSOR Type 14
map <silent> ,see ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/see.inc<CR>dd
" SURFA Surface Definition
map <silent> ,sr ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/sr.inc<CR>dd
" UDATA User Data
map <silent> ,ud ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ud.inc<CR>dd
"VECTOR Type 0
map <silent> ,ve0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ve0.inc<CR>dd
"VECTOR Type 1
map <silent> ,ve1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Auxiliaries/ve1.inc<CR>dd

" ==== Element ====

"BAR Element
map <silent> ,eba ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/eba.inc<CR>dd
"BEAM Element
map <silent> ,ebe ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ebe.inc<CR>dd
"BSHEL Element
map <silent> ,ebs ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ebs.inc<CR>dd
"GAP Element
map <silent> ,ega ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ega.inc<CR>dd
"HEXA20 Element
map <silent> ,ehe ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ehe.inc<CR>dd
"JOINT Element
map <silent> ,ejo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ejo.inc<CR>dd
"KJOIN Element
map <silent> ,ekj ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ekj.inc<CR>dd
"ELINK Element
map <silent> ,ele ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ele.inc<CR>dd
"LLINK Element
map <silent> ,ell ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ell.inc<CR>dd
"PLINK Element
map <silent> ,elp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/elp.inc<CR>dd
"SLINK Element
map <silent> ,els ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/els.inc<CR>dd
"MEMBR Element
map <silent> ,eme ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/eme.inc<CR>dd
"MTOJNT Element
map <silent> ,emt ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/emt.inc<CR>dd
"PENTA15 Element
map <silent> ,ep1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ep1.inc<CR>dd
"PENTA6 Element
map <silent> ,ep6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ep6.inc<CR>dd
"SPHEL Element
map <silent> ,eph ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/eph.inc<CR>dd
"SPHELO Element
map <silent> ,epo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/epo.inc<CR>dd
"SHEL6 Element
map <silent> ,es6 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/es6.inc<CR>dd
"SHEL8 Element
map <silent> ,es8 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/es8.inc<CR>dd
"SPRGBM Element
map <silent> ,esb ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/esb.inc<CR>dd
"SHELL Element
map <silent> ,esh ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/esh.inc<CR>dd
"SOLID Element
map <silent> ,eso ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/eso.inc<CR>dd
"SPRING Element
map <silent> ,esp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/esp.inc<CR>dd
"IMPMA Super Element Matrix Import
map <silent> ,esu ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/esu.inc<CR>dd
"TETR10 Element
map <silent> ,et1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/et1.inc<CR>dd
"TETR4 Element
map <silent> ,et4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/et4.inc<CR>dd
"TETRA Element
map <silent> ,ete ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ete.inc<CR>dd
"TIED Element
map <silent> ,eti ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/eti.inc<CR>dd
"TSHEL Element
map <silent> ,ets ,,,,kk:r ~/.vim/ftplugin/pam_cards/Element/ets.inc<CR>dd

" ==== Others ====

"FUNCT Card with Sinus Function
map <silent> ,fs ,,,,kk:r ~/.vim/ftplugin/pam_cards/Others/fs.inc<CR>dd
"Gratitational Acceleration
map <silent> ,gv ,,,,kk:r ~/.vim/ftplugin/pam_cards/Others/gv.inc<CR>dd

" ==== Part ====

"PART Type BAR
map <silent> ,pba ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pba.inc<CR>dd
"PART Type BEAM
map <silent> ,pbe ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pbe.inc<CR>dd
"PART Type BSHEL
map <silent> ,pbs ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pbs.inc<CR>dd
"PART Type COS3D
map <silent> ,pco ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pco.inc<CR>dd
"PART Type GAP
map <silent> ,pga ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pga.inc<CR>dd
"PART Type JOINT
map <silent> ,pjo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pjo.inc<CR>dd
"PART Type KJOIN
map <silent> ,pkj ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pkj.inc<CR>dd
"PART Type ELINK
map <silent> ,ple ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/ple.inc<CR>dd
"PART Type LLINK
map <silent> ,pll ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pll.inc<CR>dd
"PART Type PLINK
map <silent> ,plp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/plp.inc<CR>dd
"PART Type SLINK
map <silent> ,pls ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pls.inc<CR>dd
"PART Type MEMBR
map <silent> ,pme ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pme.inc<CR>dd
"PART Type MBKJN
map <silent> ,pmk ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pmk.inc<CR>dd
"PART Type MBSPR
map <silent> ,pms ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pms.inc<CR>dd
"PART Type MTOJNT
map <silent> ,pmt ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pmt.inc<CR>dd
"PART Type MUSCLE
map <silent> ,pmu ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pmu.inc<CR>dd
"MPART Type SOLID
map <silent> ,poo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/poo.inc<CR>dd
"MPART Type SHELL
map <silent> ,pos ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pos.inc<CR>dd
"PART Type SPRGBM
map <silent> ,psb ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/psb.inc<CR>dd
"PART Type SPHEL
map <silent> ,pse ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pse.inc<CR>dd
"PART Type SHELL
map <silent> ,psh ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/psh.inc<CR>dd
"PART Type SOLID
map <silent> ,pso ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pso.inc<CR>dd
"PART Type SPRING
map <silent> ,psp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/psp.inc<CR>dd
"PART Type TETRA
map <silent> ,pte ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pte.inc<CR>dd
"PART Type TIED
map <silent> ,pti ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pti.inc<CR>dd
"PART Type TSHEL
map <silent> ,pts ,,,,kk:r ~/.vim/ftplugin/pam_cards/Part/pts.inc<CR>dd

" ==== Constraint ====

" LINCO Linear Constraint
map <silent> ,lc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/lc.inc<CR>dd
"OTMCO Constraint
map <silent> ,oo ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/oo.inc<CR>dd
"RBODY Type 0
map <silent> ,rb0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/rb0.inc<CR>dd
"RBODY Type 1
map <silent> ,rb1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/rb1.inc<CR>dd
"RBODY Type 2
map <silent> ,rb2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/rb2.inc<CR>dd
"RBODY Type 3
map <silent> ,rb3 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/rb3.inc<CR>dd
"RBODY Type 4
map <silent> ,rb4 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/rb4.inc<CR>dd
"SEWING Definition
map <silent> ,sew ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/sew.inc<CR>dd
"Regular MTOCO
map <silent> ,to0 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/to0.inc<CR>dd
"MTOCO mit User Imposed Mass and Intertia
map <silent> ,to1 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Constraint/to1.inc<CR>dd

" ==== Control ====

"DMPEW User DMP Scaling Factors
map <silent> ,dm ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/dm.inc<CR>dd
"DRAPF Draping File Import
map <silent> ,dr ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/dr.inc<CR>dd
"EXPORT Card
map <silent> ,ex ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/ex.inc<CR>dd
"IMPORT Card
map <silent> ,im ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/im.inc<CR>dd
"INCLU Keyword
map <silent> ,in ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/in.inc<CR>dd
"MERIC Keyword
map <silent> ,me ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/me.inc<CR>dd
"MSTRM Mass Trimming
map <silent> ,mr ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/mr.inc<CR>dd
"ORTHF Orientation File Import
map <silent> ,or ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/or.inc<CR>dd
"PYVAR Variable Definition
map <silent> ,py ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/py.inc<CR>dd
"RMSSOL Shell-Solid Remeshing
map <silent> ,ss ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/ss.inc<CR>dd
"SUBDF Substructure Definition
map <silent> ,su ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/su.inc<CR>dd
"TRSFM Transformation Card
map <silent> ,tr ,,,,kk:r ~/.vim/ftplugin/pam_cards/Control/tr.inc<CR>dd

" ==== Load ====

"*3D Boundary Condition
map <silent> ,3d ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/3d.inc<CR>dd
"VAABSO Acoustic Absorber
map <silent> ,ab ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ab.inc<CR>dd
"ACFLD Acceleration Field
map <silent> ,ac ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ac.inc<CR>dd
"VADIFF Acoustic Diffuse Sound Field
map <silent> ,ad ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ad.inc<CR>dd
"VAMPSO Acoustic Monopole Source
map <silent> ,am ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/am.inc<CR>dd
"Acoustic Plane Wave
map <silent> ,ap ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ap.inc<CR>dd
"ACTUA - Joint Actuator Definition
map <silent> ,at ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/at.inc<CR>dd
"BOUNC Displacement BC
map <silent> ,bc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/bc.inc<CR>dd
"BDFOR Body Forces
map <silent> ,bd ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/bd.inc<CR>dd
"BFLUX Definition
map <silent> ,bf ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/bf.inc<CR>dd
"PRESBC Pressure Porous BC
map <silent> ,bp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/bp.inc<CR>dd
"CONLO Concentrated Load
map <silent> ,cl ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/cl.inc<CR>dd
"DAMP Nodal Damping
map <silent> ,da ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/da.inc<CR>dd
"DFLUX Definition
map <silent> ,df ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/df.inc<CR>dd
"DISLIM Displacement Limitation
map <silent> ,dl ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/dl.inc<CR>dd
"DETOP Detonation Point
map <silent> ,dp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/dp.inc<CR>dd
"FBC3D - Prescribed Motion onto Fluid Media
map <silent> ,fb ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/fb.inc<CR>dd
"FBCFA - Prescribed Surface Normal BC onto Fluid
map <silent> ,fn ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/fn.inc<CR>dd
"HFLUX
map <silent> ,hf ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/hf.inc<CR>dd
"HTSURF Heat Exchange Surface
map <silent> ,hs ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/hs.inc<CR>dd
"PREBM Beam Pressure
map <silent> ,ib ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ib.inc<CR>dd
"PREFA Face Pressure
map <silent> ,if ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/if.inc<CR>dd
"INPRES Initial Pressure
map <silent> ,ip ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/ip.inc<CR>dd
"INTEM Initial Temperature
map <silent> ,it ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/it.inc<CR>dd
"INVEL Initial Velocity
map <silent> ,iv ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/iv.inc<CR>dd
"KINDA Kinematic Damping
map <silent> ,kd ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/kd.inc<CR>dd
"PFSURF Porous Flow Exchange Surface
map <silent> ,pu ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/pu.inc<CR>dd
"RMLOAD Resudial Mode Load
map <silent> ,rm ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/rm.inc<CR>dd
"LCPSD Power Spectral Density Function
map <silent> ,sd ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/sd.inc<CR>dd
"TEMBC Temperature BC
map <silent> ,tc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/tc.inc<CR>dd
"TURBL Turbulent Boundary Layer Load
map <silent> ,tu ,,,,kk:r ~/.vim/ftplugin/pam_cards/Load/tu.inc<CR>dd

" ==== Node ====

" CNODE Card
map <silent> ,cn ,,,,kk:r ~/.vim/ftplugin/pam_cards/Node/cn.inc<CR>dd
" MASS Card
map <silent> ,ms ,,,,kk:r ~/.vim/ftplugin/pam_cards/Node/ms.inc<CR>dd
"NSMAS2 - Nonstructural mass Type 2
map <silent> ,nm2 ,,,,kk:r ~/.vim/ftplugin/pam_cards/Node/nm2.inc<CR>dd
" NSMAS - Nonstructural mass
map <silent> ,nm ,,,,kk:r ~/.vim/ftplugin/pam_cards/Node/nm.inc<CR>dd
" NODE Card
map <silent> ,nn ,,,,kk:r ~/.vim/ftplugin/pam_cards/Node/nn.inc<CR>dd

" ==== Output ====

"SENPTG Sensor Point (Global)
map <silent> ,seg ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/seg.inc<CR>dd
"SELOUT Selective Output
map <silent> ,sel ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sel.inc<CR>dd
"SENPT Sensor Point (Local)
map <silent> ,sen ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sen.inc<CR>dd
"SEFCO Type CONTACT
map <silent> ,sfc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfc.inc<CR>dd
"SECFO Type LINK
map <silent> ,sfl ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfl.inc<CR>dd
"SECFO Type CONT_MS
map <silent> ,sfm ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfm.inc<CR>dd
"SECFO Type PLANE
map <silent> ,sfp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfp.inc<CR>dd
"SECFO Type SECTION
map <silent> ,sfs ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfs.inc<CR>dd
"SECTION Type SUPPORT
map <silent> ,sfu ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfu.inc<CR>dd
"SECFO Type VOLFRAC
map <silent> ,sfv ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/sfv.inc<CR>dd
"THNAC Acoustic Output
map <silent> ,tha ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/tha.inc<CR>dd
"THCRS Cross Spectral Density Printout
map <silent> ,thc ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/thc.inc<CR>dd
"THELE Card
map <silent> ,the ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/the.inc<CR>dd
"THLOC Output
map <silent> ,thl ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/thl.inc<CR>dd
"THNOD Output
map <silent> ,thn ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/thn.inc<CR>dd
"THNPO Porous Nodal Output
map <silent> ,thp ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/thp.inc<CR>dd
"VAPANL Structural Panel
map <silent> ,vap ,,,,kk:r ~/.vim/ftplugin/pam_cards/Output/vap.inc<CR>dd

" ==== Safety ====

"BAGIN Definition
map <silent> ,bag ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/bag.inc<CR>dd
"FASCI Muscular Facicle Definition
map <silent> ,fa ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/fa.inc<CR>dd
"GASPEC Gas Specification
map <silent> ,gas ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/gas.inc<CR>dd
"MUSC1 Muscle Element Definition
map <silent> ,mus ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/mus.inc<CR>dd
"RETRA Belt Retractor Definition
map <silent> ,ret ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/ret.inc<CR>dd
"SLIPR Slipring Definition
map <silent> ,sli ,,,,kk:r ~/.vim/ftplugin/pam_cards/Safety/sli.inc<CR>dd

" ==== MMC ====

"MMC Assign Definition
map <silent> ,mm ,,,,kk:r ~/.vim/ftplugin/pam_cards/MMC/mm.inc<CR>dd
