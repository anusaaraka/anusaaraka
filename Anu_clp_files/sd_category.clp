 (defglobal ?*cat_fp* = sd_cat_fp) 

 (deffunction string_to_integer (?parser_id)
; Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 
 ;He disputed that our program was superior . (PRP$) 
 (defrule PRP_rule
 ?f0<-(id-sd_cat	?id	PRP|PRP$)
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  pronoun)" crlf)
 	(retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ; NNS -- How many people died .
 (defrule NN_rule
 ?f0<-(id-sd_cat        ?id     ?cat&NN|NNS)
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  noun)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule NNP_rule
 ?f0<-(id-sd_cat        ?id     NNP)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id" PropN)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ; NNPS -- A Grateful Dead/Allman Brothers concert in Washington D.C., that July, presented an unexpected opportunity to serve as a dry-run for our upcoming trip.
 (defrule NNPS_rule
 (declare (salience 10))
 ?f0<-(id-sd_cat        ?id     NNPS)
 (id-sd_cat ?id1 NNP)
 (test (eq (- (string_to_integer ?id) 1) (string_to_integer ?id1)))
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id" PropN)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule VB_rule
 ?f0<-(id-sd_cat        ?id     VB|VBZ|VBN|VBG|VBD|VBP)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  verb)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule RB_rule
 ?f0<-(id-sd_cat        ?id     RB)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  adverb)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule JJ_rule
 ?f0<-(id-sd_cat        ?id     JJ)
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  adjective)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ;If you use that strategy, he will wipe you out.
 ;Since I know English, he spoke to me.
 (defrule IN_rule
 ?f0<-(id-sd_cat        ?id     IN)
 (not (parserid-word  ?id  ?word&If|if|Since|since))
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  preposition)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule DT_rule
 ?f0<-(id-sd_cat        ?id     DT)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  determiner)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule MD
 ?f0<-(id-sd_cat        ?id     MD)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  verb)" crlf)
        (retract ?f0)
 )
; MD may be modal verb or verb
 ;------------------------------------------------------------------------------------------
 (defrule close_cat_file
 (declare (salience -100))
 =>
 	(close ?*cat_fp*)
 )
 ;------------------------------------------------------------------------------------------
