 (defglobal ?*link_map* = link_word_fp)

 (deffunction never-called ()
 (assert (id-original_word))
 (assert (parser_numid-word-remark))
 (assert (No complete linkages found))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -100))
 =>
	(close  ?*link_map*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Women 's rights have been put back on the agenda .
 ;Rule re-modified by Roja(10-10-11)
 (defrule id-link_id_map_for_first_word
 (declare (salience 1000))
 ?f<-(id-original_word 1 ?wrd)
 ?f1<-(parser_numid-word-remark 1 ?wrd1 ?remark)
 =>
        (if (and (neq ?wrd1 ``) (neq ?wrd1 `)(neq ?wrd1 '')(neq ?wrd1 PUNCT-OpenParen)(neq ?wrd1 PUNCT-DoubleQuote)(neq ?wrd1 PUNCT-SingleQuote)(neq ?wrd1 PUNCT-DotDotDot)) then   ;Ex: "Who is he like?" Ex : (iv) The ray incident at any angle at the pole. ; Stanford stores the information of " as `` .  
	  (if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   P1"?remark"  1)" crlf)
		(printout ?*link_map* "(parserid-wordid   P2   1)" crlf)
	  else
		(printout ?*link_map* "(parserid-wordid   P1   1)" crlf)
	  )
          (retract ?f ?f1)
          (assert (current_id 2))
        )
        else
             (assert (current_id 1)) ; Ex: "Who is he like?" 
 )
 ; Because Link-parser generally changes the case of the first letter of the first word, and since id=1 always gets mapped to   itself so it has been treated specially.

 ;--------------------------------------------------------------------------------------------------------------------
 (defrule id-link_id_map 
 (declare (salience 999))
 ?f0<-(current_id ?id);Added by Mahalaxmi. (24-06-11) Suggested by Chaitanya Sir.
 ?f1<-(id-original_word ?id ?wrd)   
 ?f2<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?wrd ?remark)  
 (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id ?l_id1)) ?wrd ?remark))   
 =>
        (retract ?f0 ?f1 ?f2)
	(if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   P" ?l_id ?remark"  " ?id ")" crlf)
		(printout ?*link_map* "(parserid-wordid   P" (+ 1 ?l_id)"  " ?id ")" crlf)  
	else
		(printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)  
	)	
      (bind ?id (+ ?id 1))
      (assert (current_id ?id))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Ex:-On january 14th every year, something extraordinary happens in bangalore's gavi gangadhareswara temple.
 ;In order to make the system robust we have added this rule.
 ;here in the above sentence stanford makes "j"anuary ===> "J"anuary so lowercase of these words are also checked.
 ;Added by Mahalaxmi. (14-07-11) Suggested by Chaitanya Sir
 (defrule id-link_id_map_for_lowercase
 (declare (salience 998))
 ?f0<-(current_id ?id)
 ?f1<-(id-original_word ?id ?wrd)
 (test (eq (numberp ?wrd) FALSE))
 ?f2<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?WRD&:(eq (lowcase ?wrd) ?WRD) ?remark) ;Checking equality with the original word is required . Modified the function by Manju(06-06-13)
 (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id ?l_id1)) ?WRD&:(eq (lowcase ?wrd) ?WRD) ?remark))
 =>
        (retract ?f0 ?f1 ?f2)
	(bind ?x (lowcase ?wrd))
        (if (neq ?remark -) then
                (printout ?*link_map* "(parserid-wordid   P" ?l_id ?remark"  " ?id ")" crlf)
                (printout ?*link_map* "(parserid-wordid   P" (+ 1 ?l_id)"  " ?id ")" crlf)
        else
                (printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)
        )
      (bind ?id (+ ?id 1))
      (assert (current_id ?id))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja(06-06-13)
 ;Ex: The average maturity for funds open only to institutions, considered by some to be a stronger indicator because those managers watch the market closely, reached a high point for the year [SYMBOL-EMDASH] 33 days.
 ;In above example when SYMBOL-EMDASH was missing in stanford parser word list, mapping ended after 'year'. To get the remaining ids added a default rule, to get mapping for the words '33' and 'days'
 ;(Note: its neccessary to debug why the word SYMBOL-EMDASH is missing.) 
 (defrule default_rule
 (declare (salience 10))
 ?f1<-(id-original_word ?id ?wrd)
 ?f2<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?wrd ?remark)
 =>
	(retract ?f1 ?f2)
        (printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (16-01-18)
 (defrule default_rule1
; (declare (salience 11))
 (declare (salience 1000))
 ?f0<-(current_id ?id)
 ?f1<-(id-original_word ?id ?wrd)
 ?f2<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?wrd1 ?remark)
 (test (neq (str-index "." (implode$ (create$ ?wrd1))) FALSE))
 (test (and (eq (string-to-field (sub-string 1 (- (length ?wrd1) 1) ?wrd1)) ?wrd)
            (eq (sub-string (length ?wrd1) (length ?wrd1) ?wrd1) "."))) 
 (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id ?l_id1)) ?wrd1 ?remark))
 =>
	(retract ?f0 ?f1 ?f2)
        (if (neq ?remark -) then
                (printout ?*link_map* "(parserid-wordid   P" ?l_id ?remark"  " ?id ")" crlf)
                (printout ?*link_map* "(parserid-wordid   P" (+ 1 ?l_id)"  " ?id ")" crlf)
        else
                (printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)
        )
	(bind ?id (+ ?id 1))
        (assert (current_id ?id))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;I nonascii3226128175 brought you all up and trained you like Princes.
 (defrule default_rule_for_nonascii_missing
 (declare (salience 1000))
 ?f0<-(current_id ?id)
 ?f1<-(id-original_word ?id ?wrd)
 (test (neq (str-index "nonascii" (implode$ (create$ ?wrd))) FALSE))
 (not (parser_numid-word-remark ?id ?wrd ?))
 ?f2<-(id-original_word ?id1&:(= (+ ?id 1) ?id1) ?wrd1)
 ?f3<-(parser_numid-word-remark ?id ?wrd1 ?remark)
; (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id ?l_id1)) ?wrd1 ?remark))
 =>
        (retract ?f0 ?f1 ?f2 ?f3)
        (if (neq ?remark -) then
                (printout ?*link_map* "(parserid-wordid   P" ?id ?remark"  " ?id1 ")" crlf)
                (printout ?*link_map* "(parserid-wordid   P" (+ 1 ?id)"  " ?id1 ")" crlf)
        else
                (printout ?*link_map* "(parserid-wordid   P" ?id"  " ?id1 ")" crlf)
        )
        (bind ?id1 (+ ?id1 1))
        (assert (current_id ?id1))
	(assert (nonascii_missing =(+ ?id 1)))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;I nonascii3226128175 brought you all up and trained you like Princes.
 (defrule get_next_map_for_nonascii
 (declare (salience 1000))
 ?f0<-(current_id ?id)
 ?f1<-(id-original_word ?id ?wrd)
 ?f2<-(nonascii_missing ?id1)
 ?f3<-(parser_numid-word-remark ?id1 ?wrd ?remark)
 =>
	(retract ?f0 ?f1 ?f2 ?f3)
        (if (neq ?remark -) then
                (printout ?*link_map* "(parserid-wordid   P" ?id1 ?remark"  " ?id ")" crlf)
                (printout ?*link_map* "(parserid-wordid   P" (+ 1 ?id1)"  " ?id ")" crlf)
        else
                (printout ?*link_map* "(parserid-wordid   P" ?id1"  " ?id ")" crlf)
        )
        (bind ?id (+ ?id 1))
        (assert (current_id ?id))
        (assert (nonascii_missing =(+ ?id1 1)))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja(06-06-13)
 ;If mapping for a original word is missing then printing a warning message. 
 (defrule print_warning_msg
 (declare (salience -10))
 ?f1<-(id-original_word ?id ?wrd)
 (test (or (neq ?id 10000) (neq ?id 10001) (neq ?id 2000)))
 =>
	(retract ?f1)
	(printout t "Warning: Parserid Wordid mapping missing for "	?id	"	"?wrd crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
