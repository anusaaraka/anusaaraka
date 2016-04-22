 ;-------------------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 100))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Modified below rule by Roja(13-04-16)
 ;To avoid numbers to gdbm_lookup function added if loop.
 ;To avoid repeatition of "gdbm_lookup "idioms.gdbm"" in create_eng_ord_html.clp, modified assert statement from ?str to ?lkup variable
 ;TODO: handling numbers in gdbm_lookup function
 (defrule chk_for_idiom
 (declare (salience 50))
 ?f<-(English-list $?Eng_list)
 (index ?id)
  =>
  (bind ?len (length $?Eng_list))
  (loop-for-count (?i 1 ?len) 
	(bind ?flag 1)
	(loop-for-count (?j ?i ?len)
		(bind ?k (nth$ ?j $?Eng_list))
                (if (eq ?flag 1) then
                	(bind ?str ?k)
 ;                      (bind $?ids (create$ ?j))
                        (bind ?flag 0)
		else
                	(bind ?str (str-cat ?str "_" ?k)))
; 			(bind $?ids (create$ $?ids ?j))
			(if (neq (numberp ?str) TRUE) then 
				(bind ?lkup (gdbm_lookup "idioms.gdbm" ?str))
				(if (neq ?lkup "FALSE") then
;					(printout t ?str "--------" (type ?lkup) crlf)
					(assert (sen_type-id-phrase idiom ?j (explode$ ?lkup)))
				)
			)
	)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule chk_for_idiom1
 ?f<-(sen_type-id-phrase idiom ?j  ?str)
 ?f1<-(sen_type-id-phrase idiom ?j1 ?str1)
 (test (neq ?str ?str1))
 (test (str-index  ?str ?str1))
 =>
  (if (> (length ?str) (length ?str1)) then
  (retract ?f1)
  else 
  (retract ?f)
 )
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule print_idiom
 (declare (salience -10))
 ?f<- (sen_type-id-phrase ?sen_type ?id $?phrase);Modified single field to multified by Roja(13-04-16) according to chk_for_idiom rule
 =>
 (retract ?f)
 (printout ?*catastrophe_file* "(sen_type-id-phrase     "?sen_type"     "?id"   "(implode$ $?phrase)        ")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
