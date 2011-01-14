 (deffunction string_to_integer (?link_id) 
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (defglobal ?*nid_wrd_fp* =  l_n_w_fp)
 (defglobal ?*l_wrd_fp* =  l_fp )
 (defglobal ?*l_rel_fp* = l_r_fp )
 ;-------------------------------------------------------------------------------------------------------------------
 ; Please do accept the same; bless the Anusaaraka project to make speedy progress.
 (defrule handling_punctuations
 (declare (salience 1000))
 ?f0<-(parser_numeric_id-word ?id ?word)
 ?f1<-(parserid-word  ?lid ?word)
 (test (or (eq ?word "\"")(eq ?word "?")(eq ?word "(")(eq ?word ")")(eq ?word ";")))
 =>
	(retract ?f0 ?f1)
	(if  (eq ?word "\"") then
		(printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  \"\\"  ?word"\""  "-)" crlf)
		(printout ?*l_wrd_fp* "(parserid-word  "?lid " \"\\"  ?word"\"" ")" crlf)
	else	
		(printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "   \"" ?word"\"  -)" crlf)
		(printout ?*l_wrd_fp* "(parserid-word  "?lid "  \"" ?word"\" )" crlf))
 )
  ;-------------------------------------------------------------------------------------------------------------------
 ;She got 70% in her semester .
 (defrule handling_percentage
 (declare (salience 1000))
 ?f0<-(parser_numeric_id-word ?id ?word)
 ?f1<-(parser_numeric_id-word =(+  ?id 1) %)
 ?f2<-(parserid-word  ?lid ?word)
 ?f3<-(parserid-word  ?lid1  %)
 (id-word  ?wrdid  ?wrd) 
 =>
        (bind ?wrd_wrd (string-to-field (str-cat ?word "%")))
        (if (eq ?wrd ?wrd_wrd) then
                (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?wrd  "  -)" crlf)
                (printout ?*l_wrd_fp* "(parserid-word  "?lid "  "?wrd"  )" crlf)
                (retract ?f0 ?f1 ?f2 ?f3)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; These are children's books.
 ; The parents documented every step of their child's development .
 (defrule word_rule_for_possessive
 (declare (salience 100))
 (rel_name-sids possessive ?lnode ?rnode)
 ?f0<-(parserid-word ?lnode ?wrd)
 ?f1<-(parser_numeric_id-word ?lid ?wrd)
 (test (= (string_to_integer ?lnode) ?lid))
 ?f2<-(parserid-word ?rnode ?wrd1)
 ?f3<-(parser_numeric_id-word ?rid ?wrd1)
 (test (= (string_to_integer ?rnode) ?rid))
 =>
	(retract ?f0 ?f1 ?f2 ?f3)
        (printout ?*nid_wrd_fp*  "(parser_numid-word-remark  " ?lid "  "?wrd ?wrd1 "  " ?wrd1")" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?lnode ?wrd1" "?wrd ?wrd1 ")" crlf)
	(bind ?wrd1 (str-cat ?lnode ?wrd1))
        (bind ?lnd (explode$ ?wrd1))
        (assert (id-Modified_id ?lnode ?lnd))
        (assert (id-Modified_id ?rnode ?lnd))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule word_rule
 (declare (salience 50))
 (parserid-word  ?lid ?word)
 ?f0<-(parser_numeric_id-word ?id ?word)
 =>
        (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?word "  -)" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?lid "  "?word ")" crlf)

 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule rel_lnode
 (declare (salience 91))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
 (id-Modified_id ?lnode ?lnd)
 =>
        (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname ?lnd ?rnode))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule rel_rnode
 (declare (salience 91))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
 (id-Modified_id ?rnode ?rnd)
 =>
        (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname ?lnode ?rnd))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule rel1
 (declare (salience 90))
 ?f0<-(rel_name-sids ?lname ?lnode $?id1 ?lnode $?id2)
 (id-Modified_id ?lnode ?lnd)
 =>
        (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname $?id1 ?lnd $?id2))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule rel2
 (declare (salience 52))
 ?f0<-(modified_rel_name-lnode-rnode ?lname ?lnode ?rnode)
 =>
        (retract ?f0)
        (printout ?*l_rel_fp* "(rel_name-sids  " ?lname "   "?lnode "  "?rnode")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule rel3
 (declare (salience 30))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
  =>
        (retract ?f0)
        (printout ?*l_rel_fp* "(rel_name-sids  " ?lname "   "?lnode "  "?rnode")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -50))
 =>
        (close ?*nid_wrd_fp*)
	(close ?*l_wrd_fp*)
	(close  ?*l_rel_fp*)
 )
 ;-------------------------------------------------------------------------------------------------------------------
