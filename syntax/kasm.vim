" syntax/kasm.vim
syntax match kasmregister "R\d"
syntax match kasmregister1 "R\d\d"
syntax match kasmregister2 "L\d"
syntax match kasmregister3 "L\d\d"
syntax match kasmcomment ";.*"
syntax match kasmimm     "#\d*"
syntax match kasmimm2    "#scr"
syntax keyword kasmcommands 
	\ move
	\ add
	\ addxz
	\ addzz
	\ sub
	\ subxz
	\ subzz
	\ nop
	\ mult
	\ beginloop
	\ endloop
	\ beginloopscr
	\ fbinv
	\ jumpwor
	\ cmp
	\ bspush
	\ bsclearm
	\ bspop
	\ bsnot
	\ minc
	\ maxc
	\ begincond
	\ endcond
	\ write
	\ read

syntax keyword kasmcommands2
	\ c1
	\ b1
	\ fbinv
	\ ltc
	\ cmp
	\ cmpswap
	\ scrtoimm
	\ qtoscr
	\ scrtoq
	\ arrtoscr
	\ scrtoarr
	\ qtoarr
	\ arrtoq
	\ mp
	\ FORCE

highlight default link kasmcomment Comment
highlight default link kasmcommands Keyword
highlight default link kasmcommands2 Include 
highlight default link kasmregister Type
highlight default link kasmregister1 Type
highlight default link kasmregister2 Type
highlight default link kasmregister3 Type
highlight default link kasmimm Number
highlight default link kasmimm2 Number
highlight default link kasmcomment Comment
