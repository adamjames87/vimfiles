" A gap syntax file for vim based on the file by F. Luebeck. To instal copy this
" file to $VIMRUNTIME/syntax/gap.vim or ~/.vim/syntax.vim
"

" Remove any old syntax stuff hanging around
syn clear

" comments
syn match gapComment "\(#.*\)*" contains=gapTodo,gapFunLine

" strings and characters
syn region gapString  start=+"+ end=+\([^\\]\|^\)\(\\\\\)*"+
syn match  gapString  +"\(\\\\\)*"+
syn match gapChar +'\\\=.'+ 
syn match gapChar +'\\"'+

" must do
syn keyword gapTodo TODO contained
syn keyword gapTodo XXX contained

" basic infos in file and folded lines
syn match gapFunLine '^#[FVOMPCAW] .*$' contained

syn keyword gapDeclare	DeclareOperation DeclareGlobalFunction 
syn keyword gapDeclare  DeclareGlobalVariable
syn keyword gapDeclare	DeclareAttribute DeclareProperty
syn keyword gapDeclare	DeclareCategory DeclareFilter DeclareCategoryFamily
syn keyword gapDeclare	DeclareRepresentation DeclareInfoClass
syn keyword gapDeclare	DeclareCategoryCollections DeclareSynonym
" the CHEVIE utils
syn keyword gapDeclare  MakeProperty MakeAttribute MakeOperation 
syn keyword gapDeclare  MakeGlobalVariable MakeGlobalFunction

syn keyword gapMethsel	InstallMethod InstallOtherMethod NewType Objectify 
syn keyword gapMethsel	NewFamily InstallTrueMethod
syn keyword gapMethsel  InstallGlobalFunction ObjectifyWithAttributes
syn keyword gapMethsel  BindGlobal BIND_GLOBAL InstallValue
" CHEVIE util
syn keyword gapMethsel  NewMethod

syn keyword gapOperator	and div in mod not or

syn keyword gapFunction	function -> return local end Error 
syn keyword gapConditional	if else elif then fi
syn keyword gapRepeat		do od for while repeat until
syn keyword gapOtherKey         Info Unbind IsBound

syn keyword gapBool         true false fail
syn match  gapNumber		"-\=\<\d\+\>\/"
syn match  gapListDelimiter	"[][]"
syn match  gapParentheses	"[)(]"
syn match  gapSublist	"[}{]"

"hilite
hi def link gapString String
hi def link gapFunction  Function
hi def link gapDeclare PreProc 
hi def link gapMethsel  Function
hi def link gapOtherKey  Keyword
hi def link gapOperator Operator
hi def link gapConditional Conditional
hi def link gapRepeat Repeat
hi def link gapComment  Comment
hi def link gapTodo Todo 
hi def link gapTTodoComment Todo 
hi def link gapTodoComment Comment	
hi def link gapNumber Number 
hi def link gapBool Boolean
hi def link gapChar String 
hi def link gapListDelimiter Normal
hi def link gapParentheses Normal
hi def link gapSublist Normal
hi def link gapFunLine Function
