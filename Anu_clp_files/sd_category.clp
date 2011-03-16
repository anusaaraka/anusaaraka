 (defglobal ?*cat_fp* = cat_fp) 
 
 ;He disputed that our program was superior . (PRP$) 
 (defrule PRP_rule
 ?f0<-(id-sd_cat	?id	PRP|PRP$)
 =>
	(printout ?*cat_fp* "(sid-cat_coarse  "?id"  pronoun)" crlf)
 	(retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ; NNS -- How many people died .
 ; NNPS -- A Grateful Dead/Allman Brothers concert in Washington D.C., that July, presented an unexpected opportunity to serve as a dry-run for our upcoming trip.
 (defrule NN_rule
 ?f0<-(id-sd_cat        ?id     ?cat&NN|NNP|NNS|NNPS)
 =>
	(if (or (eq ?cat NN) (eq ?cat NNS)) then
		(printout ?*cat_fp* "(sid-cat_coarse  "?id"  noun)" crlf)
	else
		(printout ?*cat_fp* "(sid-cat_coarse  "?id" PropN)" crlf)
	)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule VB_rule
 ?f0<-(id-sd_cat        ?id     VB|VBZ|VBN|VBG|VBD|VBP)
 =>
        (printout ?*cat_fp* "(sid-cat_coarse  "?id"  verb)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule RB_rule
 ?f0<-(id-sd_cat        ?id     RB)
 =>
        (printout ?*cat_fp* "(sid-cat_coarse  "?id"  adverb)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule JJ_rule
 ?f0<-(id-sd_cat        ?id     JJ)
 =>
	(printout ?*cat_fp* "(sid-cat_coarse  "?id"  adjective)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ;If you use that strategy, he will wipe you out.
 ;Since I know English, he spoke to me.
 (defrule IN_rule
 ?f0<-(id-sd_cat        ?id     IN)
 (not (parserid-word  ?id  ?word&If|if|Since|since))
 =>
        (printout ?*cat_fp* "(sid-cat_coarse  "?id"  preposition)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule DT_rule
 ?f0<-(id-sd_cat        ?id     DT)
 =>
        (printout ?*cat_fp* "(sid-cat_coarse  "?id"  determiner)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule MD
 ?f0<-(id-sd_cat        ?id     MD)
 =>
        (printout ?*cat_fp* "(sid-cat_coarse  "?id"  verb)" crlf)
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
