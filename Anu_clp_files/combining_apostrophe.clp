 (deffunction string_to_integer (?parser_id) 
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction never-called ()
 (assert (link_name-link_lnode-link_rnode))
 (assert (parser_numid-word-remark))
 (assert (parser_numeric_id-word))
 (assert (parserid-word))
 )
 
 (defglobal ?*nid_wrd_fp* =  l_n_w_fp)
 (defglobal ?*l_wrd_fp* =  l_fp )
 (defglobal ?*l_rel_fp* = l_r_fp )
 ;-------------------------------------------------------------------------------------------------------------
 ; Rama ate some sweets . 
 ; Removes square bracket after the word in link_word file  [ sweets[!] as sweets ]
 (defrule rm_sqr_brkt_from_word
 (declare (salience 500))
 ?f1<-(parserid-word  ?pid ?word)
 ?f0<-(parser_numeric_id-word ?id ?word)
 (test (eq  (numberp ?word) FALSE))
 (test (= (string_to_integer ?pid) ?id))
 (not (link_name-link_lnode-link_rnode YS|YP ?pid ?r))
 (test (neq (str-index "[" ?word)  FALSE)) ;Added by Shirisha Manju (29-12-10)
 =>
	(bind ?index (str-index "[" ?word))
	(if (numberp ?index) then
		(retract ?f0 ?f1)
		(bind ?str (sub-string 1 (- ?index 1) ?word))
                (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?str  "  -)" crlf)
                (printout ?*l_wrd_fp* "(parserid-word  "?pid "  "?str ")"crlf)
	)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Ex:  Mumbai is india's international gateway. 
 ;Added by Shirisha Manju (29-12-10)
 (defrule rm_sqr_brkt_from_word_with_YS_link
 (declare (salience 450))
 ?f1<-(parserid-word  ?pid ?word)
 ?f0<-(parser_numeric_id-word ?id ?word)
 (test (eq  (numberp ?word) FALSE))
 (test (= (string_to_integer ?pid) ?id))
 (test (neq (str-index "[" ?word)  FALSE))
 =>
        (bind ?index (str-index "[" ?word))
        (if (numberp ?index) then
		(retract ?f0 ?f1)
                (bind ?str (sub-string 1 (- ?index 1) ?word))
                (bind ?word (string-to-field ?str))
 	       	(assert (parser_numeric_id-word ?id ?word))
	       	(assert (parserid-word ?pid ?word))
        )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ; These are children's books.
 (defrule word_rule_ys_yp
 (declare (salience 100))
 (or (link_name-link_lnode-link_rnode YS ?lnode ?rnode) (link_name-link_lnode-link_rnode YP ?lnode ?rnode))
 ?f0<-(parserid-word ?lnode ?wrd)
 ?f1<-(parser_numeric_id-word ?pid ?wrd)
 (test (= (string_to_integer ?lnode) ?pid))
 ?f2<-(parserid-word ?rnode ?wrd1)
 ?f3<-(parser_numeric_id-word ?rid ?wrd1)
 (test (= (string_to_integer ?rnode) ?rid))
 =>
	(retract ?f0 ?f1 ?f2 ?f3)
        (printout ?*nid_wrd_fp*  "(parser_numid-word-remark  " ?pid "  "?wrd ?wrd1 "  " ?wrd1")" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?lnode ?wrd1" "?wrd ?wrd1 ")" crlf)
	(bind ?wrd1 (str-cat ?lnode ?wrd1))
	(bind ?lnd (explode$ ?wrd1))
	(assert (id-Modified_id ?lnode ?lnd))
        (assert (id-Modified_id ?rnode ?lnd))
 
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule word_rule
 (declare (salience 50))
 (parserid-word  ?pid ?word)
 ?f0<-(parser_numeric_id-word ?id ?word)
 =>
        (printout ?*nid_wrd_fp* "(parser_numid-word-remark  " ?id "  "?word "  -)" crlf)
        (printout ?*l_wrd_fp* "(parserid-word  "?pid "  "?word ")" crlf)

 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule word_rule1
 (declare (salience 30))
 (No complete linkages found)
 =>
	(printout ?*l_wrd_fp* "(No complete linkages found)" crlf)
        (printout ?*nid_wrd_fp* "(No complete linkages found)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule link_rel_ys_yp0
 (declare (salience 91))
 ?f0<-(link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 (id-Modified_id ?lnode ?lnd)
 (id-Modified_id ?rnode ?rnd)
 =>
        (retract ?f0)
        (assert (modified_link_name-link_lnode-link_rnode ?lname ?lnd ?rnd))
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule link_rel_ys_yp1
 (declare (salience 90))
 ?f0<-(link_name-link_lnode-link_rnode ?lname $?id1 ?lnode $?id2)
 (id-Modified_id ?lnode ?lnd)
 =>
        (retract ?f0)
        (assert (modified_link_name-link_lnode-link_rnode ?lname $?id1 ?lnd $?id2))
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule link_rel_ys_yp2
 (declare (salience 52))
 ?f0<-(modified_link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 =>
	(retract ?f0)
	(printout ?*l_rel_fp* "(link_name-link_lnode-link_rnode  " ?lname "   "?lnode "  "?rnode")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule link_rel_ys_yp3
 (declare (salience 30))
 ?f0<-(link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 =>
	(retract ?f0)
	(printout ?*l_rel_fp* "(link_name-link_lnode-link_rnode  "?lname "  "?lnode "  "?rnode")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule link_rel1
 (declare (salience 30))
 (No complete linkages found)
 =>
	(printout ?*l_rel_fp* "(No complete linkages found)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -50))
 =>
        (close ?*nid_wrd_fp*)
	(close ?*l_wrd_fp*)
	(close  ?*l_rel_fp*)
 )
 ;-------------------------------------------------------------------------------------------------------------
