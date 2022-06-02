" syntax/kasm.vim
syntax match kasmregisterR1 "[rR]\d"
syntax match kasmregisterR2 "[rR]\d\d"
syntax match kasmregisterL1 "[lL]\d"
syntax match kasmregisterL2 "[lL]\d\d"

syntax match kasmcomment ";.*"

syntax match kasmimm     "#[0-9a-zA-Z]*"
syntax match controlimm " \d*"

syntax match defines "$[a-zA-Z_]*"

syntax keyword kasminstrs
	\ move
	\ add
	\ addxz
	\ addzz
	\ sub
	\ subxz
	\ subzz
	\ mult
	\ multsa
	\ multsb
	\ multsab
	\ nop
	\ beginloop
	\ endloop
	\ beginloopscr
	\ jumpwor
	\ jump
	\ minc
	\ maxc
	\ sminc
	\ smaxc
	\ selectc
	\ write
	\ read
	\ bspush
	\ bsclearm
	\ bspop
	\ bsnot
	\ bsand
	\ bscondright
	\ bscondleft
	\ begincond
	\ endcond
	\ ltc
	\ equalc
	\ sltc
	\ cntpush
	\ scrtocntlo
	\ scrtocnthi

syntax keyword kasmspecial
	\ c1
	\ c0
	\ b1
	\ b0
	\ mp
	\ fbinv
	\ fbeqlatch
	\ fbaco
	\ cmp
	\ cmpswap
	\ scrtoimm
	\ qtoscr
	\ scrtoq
	\ arrtoscr
	\ scrtoarr
	\ qtoarr
	\ arrtoq
	\ FORCE
	\ INCLUDE
	\ DEFINE
	\ start
	
highlight default link kasminstrs Statement
highlight default link kasmspecial Special
highlight default link defines Include 
highlight default link kasmregisterR1 Identifier
highlight default link kasmregisterR2 Identifier
highlight default link kasmregisterL1 Identifier
highlight default link kasmregisterL2 Identifier
highlight default link kasmimm Constant
highlight default link controlimm Constant
highlight default link kasmcomment Comment
