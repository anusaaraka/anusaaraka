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
 (defrule id-link_id_map_for_first_word
 (declare (salience 1000))
 (id-original_word 1 ?wrd)
 (parser_numid-word-remark 1 ?wrd1 ?remark)
 =>
	(if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   P1"?remark"  1)" crlf)
	else
		(printout ?*link_map* "(parserid-wordid   P1   1)" crlf)
	)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Galelio was the first scentist to claim that the earth moves around the sun.
 (defrule map_id
 (declare (salience 500))
 ?f<-(id-original_word ?id ?wrd)
 ?f1<-(parser_numid-word-remark ?l_id ?wrd ?remark)
 (test (eq ?id ?l_id))
 =>
       (if (neq ?remark -) then
                (printout ?*link_map* "(parserid-wordid   P" ?l_id ?remark"  " ?id ")" crlf)
                (printout ?*link_map* "(parserid-wordid   P" (+ 1 ?l_id)"  " ?id ")" crlf)  (retract ?f ?f1)
        else
                (printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)   (retract ?f ?f1)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Because Link-parser generally changes the case of the first letter of the first word, and since id=1 always gets mapped to   itself so it has been treated specially.
 ; Rule re-modified by Roja (21-04-11). 
 ; Ex: Bell, based in Los Angeles, eats fruits, drinks milk, sleeps in the garden and distributes electronic, computer and          building products. (prob occurred when more than one 'and' is present.) 
 (defrule id-link_id_map 
 ?f<-(id-original_word ?id&:(> ?id 1) ?wrd)   
 ?f1<-(parser_numid-word-remark ?l_id&:(>= ?l_id ?id) ?wrd ?remark)  
 (not (parser_numid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (> ?l_id1 ?l_id)) ?wrd ?remark))   
 =>
	(if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   P" ?l_id ?remark"  " ?id ")" crlf)
		(printout ?*link_map* "(parserid-wordid   P" (+ 1 ?l_id)"  " ?id ")" crlf)  (retract ?f ?f1)
	else
		(printout ?*link_map* "(parserid-wordid   P" ?l_id"  " ?id ")" crlf)   (retract ?f ?f1)
	)	
 )
 ;--------------------------------------------------------------------------------------------------------------------
