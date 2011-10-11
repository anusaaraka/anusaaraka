 (defglobal ?*link_map* = link_word_fp)

 (deffacts dummy_linkid_id_mapping
 (id-original_word)
 (parser_numid-word-remark)
 (No complete linkages found)
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
        (if (neq ?wrd1 ``) then   ;Ex: "Who is he like?" ; Stanford stores the information of " as `` .  
	  (if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   P1"?remark"  1)" crlf)
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
 ?f2<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?WRD&:(lowcase (lexemep ?wrd)) ?remark)
 (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id ?l_id1)) ?WRD&:(lowcase (lexemep ?wrd)) ?remark))
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
