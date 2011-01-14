 (defglobal ?*cat_file* = cat_fp1)
 (defglobal ?*link_file* = link_cat_fp)


 ;POS fine cat
 (defrule fine_cat
 (declare (salience 100))
 (id-cat ?id ?cat)
 =>
	(printout ?*cat_file* "(id-cat "?id" " ?cat")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------
 ; stanford cat  
 (defrule sd_cat
 (declare (salience 100))
 ?f1<-(sid-cat_coarse  ?lid ?cat)
 (parserid-wordid ?lid ?id)
 ?f0<-(id-cat_coarse ?id ?)
 (test (neq ?cat -))
 =>
	(printout ?*cat_file* "(parser_id-cat_coarse  "?lid"  "?cat")" crlf)
	(retract ?f0 ?f1)
 )
 ;-----------------------------------------------------------------------------------------------
 ;apertium cat
 (defrule pos_cat
 (declare (salience 50))
 ?f0<-(id-cat_coarse ?id ?cat)
 (parserid-wordid ?lid ?id)
 =>
        (printout ?*cat_file* "(parser_id-cat_coarse  "?lid"  "?cat")" crlf)
        (retract ?f0)
 )
 ;-----------------------------------------------------------------------------------------------
 (defrule end 
 (declare (salience 10))
 =>
    (close ?*cat_file*)
 )
 ;-----------------------------------------------------------------------------------------------
