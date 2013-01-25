" Vim syntax file
" Language:	PBRT File Format
" Maintainer:	Shuen-Huei Guan <drake.guan@gmail.com>
" Last Change:	2012 Sep 30 
"

syn case match

" Comments
syn match   pbrtLineComment      "#.*$"
syn match   pbrtStructureComment "##.*$"

syn case ignore
syn match   pbrtCommand		/[A-Z][a-zA-Z]*/
syn case match

syn keyword pbrtType		integer float point vector normal spectrum bool string
syn region  pbrtString		start=/"/ skip=/\\"/ end=/"/

syn match   pbrtStructure	"[A-Z][a-zA-Z]*Begin\>\|[A-Z][a-zA-Z]*End"
syn region  pbrtSectionFold	start="FrameBegin" end="FrameEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="WorldBegin" end="WorldEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="TransformBegin" end="TransformEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="AttributeBegin" end="AttributeEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="MotionBegin" end="MotionEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="SolidBegin" end="SolidEnd" fold transparent keepend extend
syn region  pbrtSectionFold	start="ObjectBegin" end="ObjectEnd" fold transparent keepend extend

syn sync    fromstart

"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	pbrtNumbers	  display transparent "[-]\=\<\d\|\.\d" contains=pbrtNumber,pbrtFloat
syn match	pbrtNumber	  display contained "[-]\=\d\+\>"
"floating point number, with dot, optional exponent
syn match	pbrtFloat	  display contained "[-]\=\d\+\.\d*\(e[-+]\=\d\+\)\="
"floating point number, starting with a dot, optional exponent
syn match	pbrtFloat	  display contained "[-]\=\.\d\+\(e[-+]\=\d\+\)\=\>"
"floating point number, without dot, with exponent
syn match	pbrtFloat	  display contained "[-]\=\d\+e[-+]\d\+\>"
syn case match

if version >= 508 || !exists("did_pbrt_syntax_inits")
  if version < 508
    let did_pbrt_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink pbrtStructure		Structure
  HiLink pbrtCommand		Statement

  HiLink pbrtType		Type

  HiLink pbrtStructureComment	SpecialComment
  HiLink pbrtLineComment	Comment

  HiLink pbrtString		String
  HiLink pbrtNumber		Number
  HiLink pbrtFloat		Float

  delcommand HiLink
end


let b:current_syntax = "pbrt"

" Options for vi: ts=8 sw=2 sts=2 nowrap noexpandtab ft=vim
