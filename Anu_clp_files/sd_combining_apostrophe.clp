 (deffunction string_to_integer (?parser_id) 
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (defglobal ?*nid_wrd_fp* =  l_n_w_fp)
 (defglobal ?*l_wrd_fp* =  l_fp )
 (defglobal ?*l_rel_fp* = l_r_fp )
 (defglobal ?*l_cat_fp* = l_c_fp)
 ;-------------------------------------------------------------------------------------------------------------------
 ; Please do accept the same; bless the Anusaaraka project to make speedy progress.
 (defrule handling_punctuations
 (declare (salience 1000))
 ?f0<-(parser_numeric_id-word ?id ?word)
 ?f1<-(parserid-word  ?pid ?word)
 (test (or (eq ?word "\"")(eq ?word "?")(eq ?word "(")(eq ?word ")")(eq ?word ";")))
 =>
	(retract ?f0 ?f1)
	(if  (eq ?word "\"") then
		(printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  \"\\"  ?word"\""  "  -)" crlf)
		(printout ?*l_wrd_fp* "(parserid-word  "?pid " \"\\"  ?word"\"" ")" crlf)
	else	
		(printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "   \"" ?word"\"  -)" crlf)
		(printout ?*l_wrd_fp* "(parserid-word  "?pid "  \"" ?word"\" )" crlf))
 )
  ;-------------------------------------------------------------------------------------------------------------------
 ;She got 70% in her semester .
 (defrule handling_percentage
 (declare (salience 1000))
 ?f0<-(parser_numeric_id-word ?id ?word)
 ?f1<-(parser_numeric_id-word =(+  ?id 1) %)
 ?f2<-(parserid-word  ?pid ?word)
 ?f3<-(parserid-word  ?pid1  %)
 (id-word  ?wrdid  ?wrd) 
 =>
        (bind ?wrd_wrd (string-to-field (str-cat ?word "%")))
        (if (eq ?wrd ?wrd_wrd) then
                (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?wrd  "  -)" crlf)
                (printout ?*l_wrd_fp* "(parserid-word  "?pid "  "?wrd"  )" crlf)
                (retract ?f0 ?f1 ?f2 ?f3)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; These are children's books.
 ; The parents documented every step of their child's development .
 (defrule word_rule_for_poss
 (declare (salience 100))
 (rel_name-sids poss ?lnode ?rnode)
 ?f1<-(id-sd_cat ?rnode ?c)
 ?f2<-(parserid-word ?rnode ?wrd)
 ?f3<-(parser_numeric_id-word ?rid ?wrd1)
 (test (= (string_to_integer ?rnode) ?rid))
 ?f4<-(parser_numeric_id-word =(+ (string_to_integer ?rnode) 1) ?word&'s)
  =>
	(retract ?f2 ?f3 ?f4 ?f2)
        (printout ?*nid_wrd_fp*  "(parser_numid-word-remark  " ?rid "  "?wrd1 ?word "  " ?word")" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?rnode ?word" "?wrd1 ?word ")" crlf)
        (printout ?*l_cat_fp* "(id-sd_cat  "?rnode ?word" "?c ")" crlf)
	(bind ?wrd1 (str-cat ?rnode ?word))
        (bind ?lnd (explode$ ?wrd1))
        (assert (id-Modified_id ?rnode ?lnd))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;I read about the train accident in today's paper. 
 (defrule word_rule_4_possessive
 (declare (salience 100))
 (rel_name-sids possessive ?lnode ?rnode)
 ?f1<-(parserid-word ?lnode ?wrd)
 ?f2<-(parserid-word ?rnode ?rwrd)
 ?f3<-(parser_numeric_id-word ?lid ?wrd1)
 ?f4<-(parser_numeric_id-word ?rid  ?word&'s)
 (test (= (string_to_integer ?lnode) ?lid))
 (test (= (string_to_integer ?rnode) ?rid))
  =>
        (retract ?f2 ?f3 ?f4)
        (printout ?*nid_wrd_fp*  "(parser_numid-word-remark  " ?lid "  "?wrd1 ?word "  " ?word")" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?lnode ?word" "?wrd1 ?word ")" crlf)
        (bind ?wrd1 (str-cat ?lnode ?word))
        (bind ?lnd (explode$ ?wrd1))
        (assert (id-Modified_id ?lnode ?lnd))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule word_rule
 (declare (salience 50))
 (parserid-word  ?pid ?word)
 ?f1<-(id-sd_cat ?pid ?cat)
 ?f0<-(parser_numeric_id-word ?id ?word)
 (test (eq (string_to_integer ?pid) ?id));Added by Roja(17-03-11) Without this condition we get repeated parserid-word facts.
 ;Ex: As the 1970's arrived, the country was emerging from the Kennedy and Martin Luther King assassinations and from the nightmare of Viet Nam and a decade of "everything goes" and if "it feels good, do it, culture. 
 =>
        (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?word "  -)" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?pid "  "?word ")" crlf)
	(printout ?*l_cat_fp* "(id-sd_cat  "?pid "  "?cat ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; The parents documented every step of their child's development .
 ; The Big Board's Mr. Grasso said, "Our systemic performance was good."
 (defrule rel_lnode
 (declare (salience 91))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
 (id-Modified_id ?lnode ?lnd)
 (not (modified_lid ?lname))
 =>
       (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname ?lnd ?rnode))
        (assert (modified_lid ?lname))
 )
 ;------------------------------------------------------------------------------------------------------------------- 
 ;These are children's books.
 (defrule rel_rnode
 (declare (salience 91))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
 (id-Modified_id ?rnode ?rnd)
 =>
        (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname ?lnode ?rnd))
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
 (defrule map_cons
 ?f<-(Head-Level-Mother-Daughters 's ?lvl ?Mot $?pre ?NN ?POS $?post)
 ?f1<-(Head-Level-Mother-Daughters ?h ?lvl1 ?NN ?noun)
 ?f2<-(Head-Level-Mother-Daughters 's ?lvl1 ?POS ?child)
 (Node-Category	?POS	POS|P_COM|P_DOT|P_QES|P_DQ|P_DQT)
  =>
  	(retract ?f ?f1 ?f2)
  	(assert (Head-Level-Mother-Daughters 's ?lvl ?Mot $?pre ?NN $?post))
        (bind ?noun (explode$ (str-cat ?noun 's)))
        (assert (Head-Level-Mother-Daughters ?h ?lvl1 ?NN ?noun))
 )
 
 (defrule map_cons1
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?PUNC $?post)
 ?f1<-(Head-Level-Mother-Daughters ?h2 ?lvl1 ?PUNC ?child)
 (Node-Category ?PUNC    P_COM|P_DOT|P_QES|P_DQ|P_DQT)
  =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre $?post))
 )

 ;-------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -50))
 =>
        (close ?*nid_wrd_fp*)
	(close ?*l_wrd_fp*)
	(close  ?*l_rel_fp*)
	(close ?*l_cat_fp*)
 )
 ;-------------------------------------------------------------------------------------------------------------------
