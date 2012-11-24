 ; This file is written by Shirisha Manju

 (deffunction never-called ()
 (assert (id-sd_cat))
 (assert (parserid-word))
 (assert (word-wordid-nertype))
 (assert (parserid-wordid) )
 )

 (defglobal ?*cat_fp* = sd_cat_fp) 

 (deffunction string_to_integer (?parser_id)
; Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))


 ;------------------------------------------------------------------------------------------
;(Added by S.Maha Laxmi 4-07-11)(Suggested by Sukahada)
; #Ex. We ate at Joe's Diner last week. The Master said, if I did not go, how would you ever see? 
;(removed  sd_category.py and handled that part using NN_to_NNP rule )
  (defrule NN_to_NNP
  (declare (salience 11))
  ?f0<-(id-sd_cat   ?pid NN)
  (parserid-word ?pid ?word)
  (test (neq ?pid P1))
  (test (eq (upcase (sub-string 1 1 ?word)) (sub-string 1 1 ?word)))
  (test (eq (numberp (string-to-field (sub-string 1 1 ?word))) FALSE));Ex: One can reach kumbhalgarh by road from udaipur (84km) and ranakpur which is 18km from kumbhalgarh. (Added by Roja 19-11-12) 
  (test (eq (str-index "SYMBOL-" ?word) FALSE));Added this condition to avoid words with SYMBOL to convert to NNP category (Added by Roja 18-10-12) EX:  In one-dimensional motion, there are only two directions (backward and forward, upward and downward) in which an object can move, and these two directions can easily be specified by + and — signs. 
  =>
 	(retract ?f0)
	(assert (id-sd_cat   ?pid NNP))
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja (26-10-12)
  ;Modifying category of SYMBOLS  from 'NNP' to 'NN'. To avoid sending SYMBOLS to Tranliteration.
  ;Ex: Coriander Leaf Cooking Studio is located at 3A Merchant Court ,  #02-12 River Valley Road ,  Clarke Quay .
  ;Here '#' is sent to Stanford as SYMBOL-SHARP.
  (defrule NNP_to_NN
  (declare (salience 11))
  ?f0<-(id-sd_cat   ?pid NNP)
  (parserid-word ?pid ?word)
  (test (str-index "SYMBOL-" ?word))
  =>
     (retract ?f0)
        (assert (id-sd_cat   ?pid NN))
  )
  ;------------------------------------------------------------------------------------------ 
  (defrule PropN_rule
  (declare (salience 10))
  (word-wordid-nertype ?word ?id PERSON|LOCATION|ORGANIZATION)
  (parserid-wordid  ?pid ?id)
  (parserid-word ?pid ?lword)
  ?f0<-(id-sd_cat   ?pid ?)
  (test (eq ?lword ?word))
  =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?pid" PropN)" crlf)
	(retract ?f0)
 )
 ;------------------------------------------------------------------------------------------ 
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
 (declare (salience 5))
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
 ?f0<-(id-sd_cat        ?id     RB|RBR|RBS)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  adverb)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule JJ_rule
 ?f0<-(id-sd_cat        ?id     JJ|JJR|JJS)
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
 (defrule CC_rule
 ?f0<-(id-sd_cat        ?id     CC)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  conjunction)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 ;Added by Roja(06-08-12)
 (defrule WDT_rule
 ?f0<-(id-sd_cat        ?id     WDT)
 =>
        (printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  wh-determiner)" crlf)
        (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------
 (defrule close_cat_file
 (declare (salience -100))
 =>
 	(close ?*cat_fp*)
 )
 ;------------------------------------------------------------------------------------------
