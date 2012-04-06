 (defglobal ?*cat_fp* = cat_fp)

 (deffunction never-called ()
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (parserid-wordid))
 (assert (parser_id-cat_coarse))
 (assert (No complete linkages found))
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ;POS fine cat
 (defrule fine_cat
 (declare (salience 150))
 (id-cat ?id ?cat)
 =>
	(printout ?*cat_fp* "(id-cat "?id" " ?cat")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ; link cat  
 (defrule link_cat
 (declare (salience 100))
 ?f1<-(parser_id-cat_coarse  ?pid  ?cat)
 (parserid-wordid  ?pid ?id)
 ?f0<-(id-cat_coarse ?id ?)
 (test (neq ?cat -))
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?pid"  "?cat")" crlf)
	(retract ?f0 ?f1)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ; if link category is present and id is missing for that category in apertium category then consider the link category
 ; Ex : The stand-still alert ended . (alert id is missing in apertium bcoz of "-")
 (defrule link_cat1
 (declare (salience 90))
 ?f1<-(parser_id-cat_coarse  ?pid  ?cat)
 (parserid-wordid  ?pid ?id)
 (test (neq ?cat -))
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?pid"  "?cat")" crlf) 
        (retract ?f1)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ;apertium cat
 (defrule pos_cat
 (declare (salience 50))
 ?f0<-(id-cat_coarse ?id ?cat)
 (parserid-wordid  ?pid ?id)
 =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?pid"  "?cat")" crlf)
        (retract ?f0)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ; if No complete linkages  
 (defrule pos_cat1
 (declare (salience 50))
 (No complete linkages found)
 ?f0<-(id-cat_coarse ?id ?cat)
  =>
	(retract ?f0)
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?id"  "?cat")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 (defrule cat_end
 (declare (salience -100))
 =>
	(close ?*cat_fp*)
 )
 ;-----------------------------------------------------------------------------------------------------------------
