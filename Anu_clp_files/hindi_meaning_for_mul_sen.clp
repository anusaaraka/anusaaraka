
 ;Added by Roja (01-08-12). 
 ;Generating dummy categories.
 (defrule generate_dummy_cat
 (declare (salience 9900))
 (default-cat)
 =>
 (assert (default-cat noun))
 (assert (default-cat verb))
 (assert (default-cat adverb))
 (assert (default-cat adjective))
 (assert (default-cat PropN))
 (assert (default-cat conjunction))
 (assert (default-cat pronoun))
 (assert (default-cat determiner))
 (assert (default-cat wh-adverb))
 (assert (default-cat verbal_noun))
 (assert (default-cat UNDEFINED))
 (assert (default-cat wh-determiner))
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Rule Added by Roja (01-08-12). 
 ;Getting Hindi meanings from default dictionary when there is a same category 
 (defrule default_hindi_mng-same-cat
 (declare (salience 5500))
 ?f<-(id-HM-source  ?id  ?mng   Default)
 (id-root ?id ?rt)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat)) "FALSE"))
 (not (multiple_meanings_asserted ?id))
 =>
        (bind ?a (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat)))
        (if (neq ?a "FALSE") then
	   (if (neq (str-index "/" ?a) FALSE) then  
                (bind ?h_mng  ?a)
		(bind ?index (str-index "/" ?h_mng))
	        (while (neq ?index FALSE)
        	        (bind ?hmng (sub-string 1 (- ?index 1) ?h_mng))
        		(assert (id-HM-source  ?id  (string-to-field  ?hmng) Default))
	                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                	(bind ?index (str-index "/" ?h_mng))
        	)
            else
                (bind ?h_mng  ?a)
           )
        (assert (id-HM-source  ?id  (string-to-field ?h_mng)  Default))
	(assert (multiple_meanings_asserted ?id))
	)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja (01-08-12).
 ;Getting Hindi meanings from default dictionary when there is a different category.
 (defrule default_hindi_mng-different-cat
 (declare (salience 5400))
 ?f<-(id-HM-source  ?id  ?mng Default)
 (id-root ?id ?rt)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat1)) "FALSE"))
 (not (multiple_meanings_asserted ?id))
 =>
        (bind ?a (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat1)))
        (if (neq ?a "FALSE") then
        	(if (neq (str-index "/" ?a) FALSE) then
			(bind ?h_mng  ?a)
	                (bind ?index (str-index "/" ?h_mng))
        	        (while (neq ?index FALSE)
                	        (bind ?hmng (sub-string 1 (- ?index 1) ?h_mng))
                        	(assert (id-HM-source  ?id  (string-to-field  ?hmng) Default))
	                        (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                	        (bind ?index (str-index "/" ?h_mng))
                	)	
                else
                 	(bind ?h_mng  ?a)
        	)
        (assert (id-HM-source   ?id   (string-to-field ?h_mng)  Default))
	(assert (multiple_meanings_asserted ?id))
	)
 )
;--------------------------------------------------------------------------------------------------------------
