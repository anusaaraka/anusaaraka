  ;Algorithm to get paxasUwra information

  ; if category is PropN
  ;	get paxasUwra with original word if not
  ;         get paxasUwra with  word if not
  ;             get paxasUwra with  root if not
  ;                 assert  paxasUwra as PropN

 
  ; for remaining categories 
  ; get paxasUwra with original word if not
  ;     get paxasUwra with  word if not
  ;         get paxasUwra with  root if not
  ;             assert paxasUwra as "-"		
                


 (defglobal ?*paxasUwra_fp* = paxasUwra_fp)

 (deffunction never-called ()
 (assert (id-inserted_sub_id) )
 (assert (id-last_word))
 (assert (id-word))
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (id-original_word))
 (assert (id-HM-source))
 (assert (id-root))
 )
 ;----------------------------------------------------------------------------------------------------  
 ;Added by Shirisha Manju (17-12-10)
 ;The inscription on the tomb of Michael-Faraday 1897-1990.  (1897-1990.)
 (defrule word_as_numbers
 (declare (salience 250))
 ?f0<-(id-original_word ?id ?word)
 ?f1<-(id-root ?id ?rt)
 (test (eq (numberp ?rt) FALSE)) ;To avoid join network errors. Added by Roja (27-04-11)
 (test (neq (str-index "-" ?rt) FALSE));To avoid join network errors. Added by Roja (27-04-11)
 (test (numberp (string-to-field (sub-string 1 (- (str-index "-" ?rt) 1) ?rt) ))) ;Modified by Roja(11-03-11)
 (test (numberp (string-to-field (sub-string (+ (str-index "-" ?rt) 1) 1000 ?rt))));Instead of ?word testing with ?rt 
 (not (cntrl_fact_for_padasuthra ?id))
 =>
        (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"   \""?word"\")" crlf)
        (assert (cntrl_fact_for_padasuthra ?id))
 )
 ;----------------------------------------------------------------------------------------------------
 (defrule word_as_number
 (declare (salience 200))
 ?f0<-(id-original_word ?id ?word)
 ?f1<-(id-root ?id ?rt)
 (test (numberp ?rt)) ;Modified by Roja(11-03-11) Instead of ?word testing with ?rt Ex: The idea of predators lurking on street corners was simply something that was not part of the collective consciousness of early 1960's America. 
 (not (cntrl_fact_for_padasuthra ?id))
 =>
	(printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"   \""?word"\")" crlf)
        (assert (cntrl_fact_for_padasuthra ?id))
 )
 ;----------------------------------------------------------------------------------------------------
 ;Rama is a good boy.
 (defrule padasuthra_for_PropN_with_original_word
 (declare (salience 145))
 ?f0<-(id-original_word ?id ?word)
 (id-cat_coarse ?id PropN)
 (test (not (numberp ?word)))
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?word))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;Passion is a must to excel and to reach your potential.       (passion)
 (defrule padasuthra_for_PropN_with_word
 (declare (salience 140))
 ?f0<-(id-word ?id ?word)
 (id-cat_coarse ?id PropN)
 (test (not (numberp ?word)))
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?word))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;The Danes are nice people.(dane)
 (defrule padasuthra_for_PropN_with_root
 (declare (salience 135))
 ?f0<-(id-root ?id ?root)
 (id-cat_coarse ?id PropN)
 (test (not (numberp ?root)))
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?root))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;I waited for Seeta for hours .      (Seeta)
 (defrule default_padasuthra_for_PropN
 (declare (salience 134))
 ?f0<-(id-word ?id ?word)
 (id-cat_coarse ?id PropN)
 (not (cntrl_fact_for_padasuthra ?id))
 =>
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"@PropN\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 ;----------------------------------------------------------------------------------------------------
 ;He lives at Chandinichok in Delhi in India .   (Delhi)
 (defrule padasuthra_for_original_word
 (declare (salience 130))
 ?f0<-(id-original_word ?id  ?word)
 (test (not (numberp ?word)));To avoid gdbm_lookup for numbers. Eg. Moon is at a distance of 2.68 billion miles from Earth.
                             ;Added by Mahalaxmi.(6-04-11)
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?word))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;Passion is a must to excel and to reach your potential.       (excel)
 (defrule padasuthra_for_word
 (declare (salience 125))
 ?f0<-(id-word ?id  ?word)
 (test (not (numberp ?word)))
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?word))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;
 (defrule padasuthra_for_root
 (declare (salience 120))
 ?f0<-(id-root ?id  ?root)
 (test (not (numberp ?root)))
 (not (cntrl_fact_for_padasuthra ?id))
 =>
 (bind  ?paxasUwra (gdbm_lookup "total-paxasUwra.gdbm" ?root))
 (if (neq ?paxasUwra "FALSE") then
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"" ?paxasUwra"\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 )
 ;----------------------------------------------------------------------------------------------------
 ;The landlord had to back down.        (The)
 (defrule default_padasuthra
 (declare (salience 100))
 ?f0<-(id-word ?id  ?word)
 (not (cntrl_fact_for_padasuthra ?id))
 =>
     (printout ?*paxasUwra_fp* "(id-padasuthra  " ?id"  \"-\")" crlf)
     (assert (cntrl_fact_for_padasuthra ?id))
 )
 ;----------------------------------------------------------------------------------------------------
