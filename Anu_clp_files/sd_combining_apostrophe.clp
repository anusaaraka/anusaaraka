 (deffunction never-called ()
 (assert (parser_numeric_id-word))
 (assert (parserid-word))
 (assert (id-word))
 (assert (rel_name-sids))
 (assert (id-sd_cat))
 (assert (Head-Level-Mother-Daughters))
 (assert (Node-Category))
 )
 

 (deffunction string_to_integer (?parser_id) 
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (defglobal ?*nid_wrd_fp* =  l_n_w_fp)
 (defglobal ?*l_wrd_fp* =  l_fp )
 (defglobal ?*l_rel_fp* = l_r_fp )
 (defglobal ?*l_cat_fp* = l_c_fp)

 ;-------------------------------------------------------------------------------------------------------------------
 ; These are children's books.
 ; The parents documented every step of their child's development .
 (defrule word_rule_for_poss
 (declare (salience 100))
 (rel_name-sids nmod:poss|nummod|conj:and|conj:or|poss|num|conj_and|conj_or|dep ?lnode ?rnode)
 ?f1<-(id-sd_cat ?rnode ?c)
 ?f2<-(parserid-word ?rnode ?wrd)
 ?f3<-(parser_numeric_id-word ?rid ?wrd1)
 (test (= (string_to_integer ?rnode) ?rid))
 ?f4<-(parser_numeric_id-word =(+ (string_to_integer ?rnode) 1) ?word&'s|')
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
 ; Mathura station is on the North-Eastern Railway's line going to Gorakhpur from Agra Fort and on the Western Railway's Mumbai-Kota-Delhi line.
 (defrule rel_lnode
 (declare (salience 91))
 ?f0<-(rel_name-sids ?lname ?lnode ?rnode)
 (id-Modified_id ?lnode ?lnd)
 (not (modified_lid ?rnode))
 =>
       (retract ?f0)
        (assert (modified_rel_name-lnode-rnode ?lname ?lnd ?rnode))
        (assert (modified_lid ?rnode))
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
 ?f<-(Head-Level-Mother-Daughters ?pos1 ?lvl ?Mot $?pre ?NN ?POS $?post)
 ?f1<-(Head-Level-Mother-Daughters ?h ?lvl1 ?NN ?noun)
 ?f2<-(Head-Level-Mother-Daughters ?pos&'s|' ?lvl1 ?POS ?child)
 (Node-Category	?POS	POS|NNS|NN|CD|NNP)
  =>
  	(retract ?f ?f1 ?f2)
        (bind ?noun (explode$ (str-cat ?noun ?pos)))
	(bind ?head (sym-cat ?h ?pos))
        (assert (Head-Level-Mother-Daughters ?head ?lvl1 ?NN ?noun))
  	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?NN $?post))
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
