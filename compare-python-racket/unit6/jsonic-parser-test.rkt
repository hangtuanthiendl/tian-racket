#lang br
(require "jsonic/parser.rkt" "jsonic/tokenizer.rkt" brag/support)

(parse-to-datum (apply-tokenizer-maker make-tokenizer #<<DEREK
"hi"
// comment
@$ 42 $@
DEREK
))