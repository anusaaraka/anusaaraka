 ;This file is written by Shirisha Manju

 (defglobal ?*gen-file*  = gen_fp)

 (deffunction never-called ()
 (assert (id-inserted_sub_id))
 (assert (missing-level-id) )
 (assert (id-original_word))
 (assert (id-HM-source))
 (assert (meaning_to_be_decided))
 (assert (id-original_word))
 (assert (id-cat_coarse))
 (assert (id-cat))
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule retract_id_with_no_hin_mng
 (declare (salience 1000))
 (id-HM-source ?id - ?src)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(printout ?*gen-file* "(id-gender-src "?id"   -  Default)" crlf)
 	(retract ?mng)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; Sita is baking breads for breakfast
 (defrule get_gender_for_PropN
 (declare (salience 900))
 (id-cat_coarse ?id PropN)
 (id-original_word ?id ?word)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (numberp ?word) TRUE)) ;Added by Roja(07-01-10) That incident took place in 1800 B.C.
 => 
 	(bind ?a (gdbm_lookup "PropN.gdbm" ?word))
 	(if (neq ?a "FALSE") then
		(printout ?*gen-file* "(id-gender-src "?id"  " ?a " PropN_gdbm)" crlf)
		(retract ?mng)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;My many female friends were angered by the hearings. 
 (defrule get_female_gender
 (declare (salience 900))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (gdbm_lookup "female_list.gdbm" ?h_mng) "FALSE"))
 =>
	(printout ?*gen-file* "(id-gender-src "?id"   f	Female_list_gdbm)" crlf)
       	(retract ?mng)
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; To search kriyA mUla in the gdbm
 ; The patient had complained of vague pains and backache. (SikAyawa_kara) SikAyawa -- kriyA mUla, kara --- kriyA
 (defrule get_female_gender_with_cat
 (declare (salience 850))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id verb)
 (test (neq (str-index "_" ?h_mng) FALSE))
 =>
	(bind ?index (str-index "_" ?h_mng))
	(bind ?str (sub-string 1 (- ?index 1) ?h_mng))
        (bind ?b (gdbm_lookup "female_list.gdbm" ?str))
       	(if (neq ?b "FALSE") then
       		(printout ?*gen-file* "(id-gender-src "?id"  f	Female_list_gdbm)" crlf)
                (retract ?mng)
       	)
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Passion is a must to excel and to reach your potential .(anwarnihiwa_Sakwi)
 (defrule get_gender_from_female_list
 (declare (salience 800))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (str-index "_" ?h_mng) FALSE))
 =>
	(bind ?index (str-index "_" ?h_mng))
	(bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
       	(bind ?b (gdbm_lookup "female_list.gdbm" ?str))
	(if (neq ?b "FALSE") then
		(printout ?*gen-file* "(id-gender-src "?id"  f	Female_list_gdbm)" crlf)
        	(retract ?mng)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule get_male_gender
 (declare (salience 750))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (gdbm_lookup "male_list.gdbm" ?h_mng) "FALSE"))
 =>
 	(printout ?*gen-file* "(id-gender-src "?id"  m	Male_list_gdbm)" crlf)
        (retract ?mng)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;To search kriyA mUla in the gdbm
 ; Republican policies only benefit the rich and the powerful. (BalA kara)
 (defrule get_male_gender_with_cat
 (declare (salience 700))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id verb)
 (test (neq (str-index "_" ?h_mng) FALSE))
 =>
        (bind ?index (str-index "_" ?h_mng))
        (bind ?str (sub-string 1 (- ?index 1) ?h_mng))
        (bind ?b (gdbm_lookup "male_list.gdbm" ?str))
        (if (neq ?b "FALSE") then
                (printout ?*gen-file* "(id-gender-src "?id"  m	Male_list_gdbm)" crlf)
                (retract ?mng)
        )
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Delhi is my birth place.
 (defrule get_gender_from_male_list
 (declare (salience 650))
 (id-HM-source ?id ?h_mng ?)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (str-index "_" ?h_mng) FALSE))
 =>
	(bind ?index (str-index "_" ?h_mng))
	(bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
        (bind ?b (gdbm_lookup "male_list.gdbm" ?str))
	(if (neq ?b "FALSE") then
		(printout ?*gen-file* "(id-gender-src "?id"  m	Male_list_gdbm)" crlf)
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
