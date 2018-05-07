" Vim syntax file
" Language:     ThinkScript - Ameritrade/InvestTools scripting language for the ThinkOrSwim platform.
" Maintainer:   Me
" URL:          https://github.com/guyhoozdis/vim-thinkscript
" Spec:         http://tlc.thinkorswim.com/center/reference/thinkScript.html

if exists("b:current_syntax")
  finish
endif


" Code Comments
syn keyword thinkscriptTodo contained TODO FIXME NOTE XXX
syn match thinkscriptComment "#.*$" contains=thinkscriptTodo


" Reserved Words
"
"   http://tlc.thinkorswim.com/center/reference/thinkScript/Reserved-Words.html

syn keyword thinkscriptReserved   above ago and bar bars below between case
syn keyword thinkscriptReserved   crosses declare def default do else equal
syn keyword thinkscriptReserved   equals false fold from greater if input is
syn keyword thinkscriptReserved   less no not or plot profile rec reference
syn keyword thinkscriptReserved   script switch than then to true while with
syn keyword thinkscriptReserved   within yes


" Declarations
"
"   
syn keyword thinkscriptDeclarations hide_on_daily hide_on_intraday lower
syn keyword thinkscriptDeclarations on_volume once_per_bar real_size upper
syn keyword thinkscriptDeclarations weak_volume_dependency zerobase


" Functions
"
"
syn keyword thinkscriptFunction Function


" Constants
"
"
syn keyword thinkscriptConstants AggregationPeriod Alert AverageType ChartType
syn keyword thinkscriptConstants Color CrossingDirection Curve Double
syn keyword thinkscriptConstants EarningTime Events FundamentalType
syn keyword thinkscriptConstants MonkeyVolumeShowStyle NumberFormat OptionClass
syn keyword thinkscriptConstants OrderType PaintingStrategy PricePerRow
syn keyword thinkscriptConstants PriceType Sound


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Data Types
"

" Any 

" boolean 
" The values true, yes, false, and no are already defined as reserved words.

" CustomColor 


" IDataHolder 

" int / double
syn match thinkscriptInt        "[0-9\-]+"
syn match thinkscriptDouble     "\-?[0-9]*\.[0-9]+"


" String
syn region thinkscriptStringD   start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region thinkscriptStringS   start=+'+  skip=+\\\\\|\\'+  end=+'+

" Symbol


"syn keyword thinkscriptDataType   thinkscriptBoolean thinkscriptNumber


" Operators
"
"
"syn keyword thinkscriptOperator Arithmetic Comparison Conditional Indexing
"syn keyword thinkscriptOperator Logical




hi def link thinkscriptTodo           Todo
hi def link thinscriptComment         Comment
hi def link thinkscriptReserved        Statement
hi def link thinkscriptDeclarations   Macro
hi def link thinkscriptConstants      Constant

"hi def link thinkscriptDataType       Type
hi def link thinkscriptInt            Number
hi def link thinkscriptDouble         Float
hi def link thinkscriptStringD        String
hi def link thinkscriptStringS        String

hi def link thinkscriptFunction       Function


let b:current_syntax = "thinkscript"
