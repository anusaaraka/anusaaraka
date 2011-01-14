 (defglobal ?*gen-file*  = gen_fp)

 (deffacts dummy_facts 
 (missing-level-id) 
 (id-original_word)
 (id-HM-source)
 (meaning_to_be_decided)
 (id-original_word)
 (id-cat_coarse)
 (id-cat)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; Sita is baking breads for breakfast
 (defrule get_gender_for_PropN
 (declare (salience 900))
 (id-cat_coarse ?id PropN)
 (id-original_word ?id ?word)
 ?mng<-(meaning_to_be_decided ?id)
 =>     (if (neq (numberp ?word) TRUE) then  ;Added by Roja(07-01-10)That incident took place in 1800 B.C. 
 	(bind ?a (gdbm_lookup "PropN.gdbm" ?word))
 	(if (neq ?a "FALSE") then
		(printout ?*gen-file* "(id-gender-src "?id"  " ?a " PropN_gdbm)" crlf)
		(retract ?mng)
	))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Passion is a must to excel and to reach your potential .(anwarnihiwa_Sakwi)
 (defrule get_gender_from_female_list
 (declare (salience 800))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (bind ?a (gdbm_lookup "female_list.gdbm" ?h_mng))
	(if (eq ?a "FALSE") then
		(bind ?index (str-index "_" ?h_mng))
		(if (numberp ?index) then
			(bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
                        (bind ?b (gdbm_lookup "female_list.gdbm" ?str))
			(if (neq ?b "FALSE") then
				(printout ?*gen-file* "(id-gender-src "?id"  " ?b " Female_list_gdbm)" crlf)
			        (retract ?mng)
     			)
  		)
		else 
			(printout ?*gen-file* "(id-gender-src "?id"  " ?a " Female_list_gdbm)" crlf)
			(retract ?mng)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule get_gender_from_male_list
 (declare (salience 700))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (bind ?a (gdbm_lookup "male_list.gdbm" ?h_mng))
	(if (eq ?a "FALSE") then
		(bind ?index (str-index "_" ?h_mng))
		(if (numberp ?index) then
			(bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
                        (bind ?b (gdbm_lookup "male_list.gdbm" ?str))
			(if (neq ?b "FALSE") then
				(printout ?*gen-file* "(id-gender-src "?id"  " ?b " Male_list_gdbm)" crlf)
			        (retract ?mng)
			)
		)
	else
		(printout ?*gen-file* "(id-gender-src "?id"  " ?a " Male_list_gdbm)" crlf)
		(retract ?mng)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule get_gender
 (declare (salience 600))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(printout ?*gen-file* "(id-gender-src "?id"   -  Default)" crlf)
	(retract ?mng)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -1000))
 =>
	(close ?*gen-file*)
 )
 ;----------------------------------------------------------------------------------------------------------------
