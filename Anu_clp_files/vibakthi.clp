;This file is written by Shirisha Manju

(defglobal ?*vib_debug_file* = vib_debug_fp)
(defglobal ?*p_c_f_file* = p_c_fact)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;Added by Mahalaxmi
 (deffunction never-called ()
 (assert (id-inserted_sub_id))
 (assert (prep_id-relation-anu_ids))
 (assert (kriyA_id-subject_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object2_viBakwi))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-tam_type))
 (assert (id-H_vib_mng))
 (assert (make_verbal_noun))
 (assert (root_id-TAM-vachan))
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (id-attach_emphatic))
 (assert (meaning_has_been_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-last_word))
 (assert (missing-level-id))
 (assert (id-original_word))
 (assert (id-number-src))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (addition-level-word-sid))
 (assert (conjunction-components))
 (assert (id-wsd_root))
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (id-word))
 (assert (root-verbchunk-tam-chunkids))
 (assert (conj_head-left_head-right_head))
 (assert (ids-domain_cmp_mng-head-cat-mng_typ-priority)) 
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 )
 ;---------------------------------------------------------------------------------------------------------------
 (deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;;;yA_tams_with_ne_list 
 (defrule assert_facts
 (declare (salience 10000))
 (load_yA_tams_with_ne)
 =>
 (assert (yA-tam  yA))
 (assert (yA-tam  yA_WA))
 (assert (yA-tam  yA_ho))
 (assert (yA-tam  yA_hE))
 (assert (yA-tam  yA_huA))
 (assert (yA-tam  yA_huA_WA))
 (assert (yA-tam  yA_hogA))
 (assert (yA-tam  yA_howA))
 (assert (yA-tam  yA_binA))
 (assert (yA-tam  yA_huA_hogA))
 (assert (yA-tam  yA_huA_honA))
 (assert (yA-tam  yA_karawA_WA))
 (assert (yA-tam  yA_hI_WA))
 (assert (yA-tam  yA_hI_jAnA_hE))
 (assert (yA-tam  yA_hI_jAnA_hE))
 (assert (yA-tam  yA_cAhiye_WA))
 (assert (yA-tam  yA_huA_ho_sakawA_hE))
 (assert (yA-tam  yA_huA_nahIM_hogA))
 )

 ;to cntl generating vib for conj ids
 (defrule rm_pada_cnt_fact_for_conj_ids
 (declare (salience 1500))
 (prep_id-relation-anu_ids - kriyA-object ?id ?obj_id)
 (conjunction-components ?obj_id $? ?cid $?)
 ?f1<-(pada_control_fact ?cid)
 =>
	(retract ?f1)
 )
 ;---------------------------------- kA vib for RaRTI_viSeRaNa  ----------------------------------
 ;Added on (04-03-11)
 ;Ex: We had wasted our journey.
 (defrule RaRTI_viSeRaNa_rule
 (declare (salience 1000))
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 ?f1<-(pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP))
 ?f0<-(pada_control_fact ?RaRTI_viSeRaNa)
 =>
 	(retract ?f0 )
	(modify ?f1 (vibakthi kA))
	(printout ?*vib_debug_file* "(id-vib-source	"?RaRTI_viSeRaNa"	kA	viSeRya-RaRTI_viSeRaNa(relation) )" crlf )
 )
 ;---------------------------------- verb-to-sub-vibakthi -----------------------------------------------------
 (defrule  kriyA_sub_vibakthi_rule
 (declare (salience 1000))
 (kriyA_id-subject_viBakwi ?root_id ?vib)
 (prep_id-relation-anu_ids ? kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP))
 =>
        (retract ?f0)
 	(modify ?f1 (vibakthi ?vib))
	(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	"?vib"	WSD_sub_viBakwi )" crlf )
 )
 ;---------------------------------verb-to-obj vibakthi -----------------------------------------------------
 ;I like music, theatre and cinema. 
 (defrule wsd_kriyA_obj_vibakthi_rule_for_conj
 (declare (salience 1000))
 (or (and (kriyA_id-object_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object  ?root_id ?obj_id))(and (kriyA_id-object2_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_2  ?root_id ?obj_id))(and (kriyA_id-object1_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_1  ?root_id ?obj_id)))
 (conj_head-left_head-right_head ?obj_id ?lt ?rt)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_control_fact ?lt)
 ?f2<-(pada_control_fact ?rt)
 ?f3<-(pada_info (group_head_id ?rt)(group_cat PP))
 =>
        (retract ?f0 ?f1 ?f2)
        (modify ?f3 (vibakthi ?vib))
        (printout ?*vib_debug_file* "(id-vib-source     "?obj_id"       "?vib"  WSD_obj_viBakwi) " crlf )
 )
 ;--------------------------------------------------------------------------------------------------------
 ;I saw him telling her about the party .
 (defrule wsd_kriyA_obj_vibakthi_rule
 (declare (salience 995))
 (or (and (kriyA_id-object_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object  ?root_id ?obj_id))(and (kriyA_id-object2_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_2  ?root_id ?obj_id))(and (kriyA_id-object1_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_1  ?root_id ?obj_id)))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
	(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	"?vib"	WSD_obj_viBakwi) " crlf )
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (22-06-12)
 ;I abhor terrorism. I abrogate our plan to visit Bhopal.
 (defrule dbase_kriyA_obj_vibakthi_rule
 (declare (salience 990))
 (prep_id-relation-anu_ids ? kriyA-object  ?root_id ?obj_id)
 (id-HM-source	?root_id ?mng ?)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP)(vibakthi 0))
 (test (neq (gdbm_lookup "kriyA_object_vib.gdbm" ?mng) "FALSE")) 
 =>
	(bind ?vib (gdbm_lookup "kriyA_object_vib.gdbm" ?mng))
	(if (neq ?vib "FALSE") then
		(retract ?f0)
        	(modify ?f1 (vibakthi ?vib))
		(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	"?vib"	kriyA_object_vib.gdbm )" crlf )
	)
 )
 ;--------------------------------------- se vib for (kriyA-prayojya_karwA ) --------------------------------
 ; She is making the girl feed the child 
 (defrule kriyA_prayojya_karwA_rule
 (declare (salience 980))
 (prep_id-relation-anu_ids ? kriyA-prayojya_karwA  ?id ?id1)
 ?f0<-(pada_control_fact ?id1)
 ?f1<-(pada_info (group_head_id ?id1)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi se))
	(printout ?*vib_debug_file* "(id-vib-source	"?id1"	se	kriyA-prayojya_karwA(relation) )" crlf )
 )
;------------------------------------------- obj_1-vib -----------------------------------------------------
 ; Suggested by Sukhada (12-08-11) 
 ; Ex: I gave Rama a book.
 (defrule obj_1_vibakthi_rule
 (declare (salience 970))
 (and (prep_id-relation-anu_ids ? kriyA-object_1 ?root_id ?obj_id)(prep_id-relation-anu_ids ? kriyA-object_2 ?root_id ?obj_id1))
 (not (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa  ?x ?obj_id))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
	(retract ?f0)
        (modify ?f1 (vibakthi ko))
	(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	ko	kriyA-object_1 and kriyA-object_2(relation) )" crlf )
 )
 ;------------------------------------------- animate-obj-vib -------------------------------------------------
 ; Rama is beating a boy. The mother calmed the angry son. The leopard seizes its kill and begins to eat.
 ; Modified the rule to use 'animate.gdbm (english) instead of 'animate_list.gdbm (hindi)' and added the below rule
 ; Suggested by Chaitanya Sir (4-11-13)
 (defrule animate_vibakthi_rule
 (declare (salience 950))
 (prep_id-relation-anu_ids ? kriyA-object ?root_id ?obj_id)
 (not (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa  ?x ?obj_id))
 (id-root ?obj_id ?obj_mng)
 (id-root ?root_id ~have)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (if (or (eq ?obj_mng you)(eq ?obj_mng You)) then
                (retract ?f0)
		(modify ?f1 (vibakthi ko))
		(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	ko	word_you )" crlf )
        else
                (bind ?animate (gdbm_lookup "animate.gdbm" ?obj_mng))
                (if (eq ?animate "1") then
                        (retract ?f0) 
			(modify ?f1 (vibakthi ko))
			(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	ko	animate.gdbm )" crlf )
		)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;This rule is for relative clauses (jo_samAnAXikaraNa) Suggested by Chaitanya sir (4-11-13)
 ;The man you saw is intelligent. Phil gave me a sweater which he bought in Paris.
 (defrule animate_vibakthi_rule1
 (declare (salience 950))
 (prep_id-relation-anu_ids ? kriyA-object ?root_id ?obj_id)
 (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?x ?obj_id)
 (id-root ?x ?obj_mng)
 (id-root ?root_id ~have)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
 	(retract ?f0)
        (modify ?f1 (vibakthi ko))
	(printout ?*vib_debug_file* "(id-vib-source	"?obj_id"	ko	object_as_jo_samAnAXikaraNa )" crlf )
 )
 ;---------------------------------------- vib from wsd -------------------------------------------------------------
 ;Suggested by Sukhada (4-03-14)
 ;Most of the inexpensive budget accommodation is in taj ganj.
 ;kama KarcIle bajata meM rukane_kI vyvasWA jyAxAwara taj ganj meM hE.
 (defrule get_vib_for_grp_id_from_wsd
 (declare (salience 900))
 (id-wsd_viBakwi ?id ?vib)
 ?f0<-(pada_info (group_head_id ?hid) (group_ids $?ids ?id $?ids1) )
 (test (neq ?hid ?id))
 =>
        (modify ?f0 (group_ids $?ids1))
	(assert (pada_info (group_cat PP)(group_head_id ?id) (group_ids $?ids ?id) (vibakthi ?vib) ))
	(printout ?*p_c_f_file* "(pada_control_fact	" ?id ")" crlf)
	(printout ?*vib_debug_file* "(id-vib-source	"?id"	"?vib "  get_vib_for_grp_id_from_wsd )" crlf )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Suggested by Sukhada (4-03-14)
 ;The newspapers branded her a hypocrite.
 (defrule get_vib_for_hid_from_wsd
 (declare (salience 900))
 (id-wsd_viBakwi ?id ?vib)
 ?f0<-(pada_info (group_head_id ?id)(vibakthi 0) )
 =>
        (modify ?f0 (vibakthi ?vib))
	(printout ?*vib_debug_file* "(id-vib-source	"?id"	"?vib "  get_vib_for_hid_from_wsd )" crlf )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Suggested by Sukhada (14-08-14)
 ;Others conspired to keep Thomas off the original Dream Team.
 ;अन्यों ने मूल ड्रीम टीम से टॉमस को दूर रखने का षडयन्त्र रचा.
 (defrule get_vib_for_kriyA_mUla
 (declare (salience 900))
 (id-HM-source ?id ?hm ? )
 (prep_id-relation-anu_ids ? kriyA-kriyArWa_kriyA|kriyA-kqxanwa_karma ?id ?vn) 
 (make_verbal_noun ?vn)
 (test (neq (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hm) "FALSE"))
 ?f0<-(pada_info (group_head_id ?vn)(vibakthi ?vib) (H_tam ?tam))
 (test (neq ?vib kA))
 =>
;        (modify ?f0 (vibakthi kA) (H_tam kA))
        (modify ?f0 (vibakthi kA) )
        (printout ?*vib_debug_file* "(id-vib-source     "?vn"   kA   get_vib_for_kriyA_mUla )" crlf )
 )

 ;---------------------------------------------( vib from tam database ) ------------------------------------
 ;Rule re-modified by Roja (11-03-11)
 ;Removed deftemplate tam_tmp_info and hindi_tam_rules.clp and instead created it as gdbm with name hindi_default_tam.gdbm.
 ;A fat ugly boy had to eat fruits. 
 (defrule vib_rule
 (declare (salience 850))
 ?f<-(pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi ?vib)(H_tam ?tam)(tam_source Default))
 (prep_id-relation-anu_ids ? kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP))
 (test (neq ?vib 0))
 =>
	(retract ?f0)
	(modify ?f1 (vibakthi ?vib))
	(modify ?f (vibakthi 0))
	(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	"?vib"	tam_database )" crlf )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ; Added by Mahalaxmi
 ;The object turned out to be a big meteorite .
 ;Here Compound-phrase is "turned out to be" (generally  for a compound phrase meaning is assigned to the last word and all other as "-"), and in this case "turned" is "kriyA" and hindi meaning is "-" so vibakthi information for this types of phrases will go wrong by using rule vib_rule1 .So, in order to solve this problem we have added the below rule in which if verb is part of any phrase , phrase meaning is taken as verb meaning.
 (defrule  ne_vib_rule1
 (declare (salience 850))
 (prep_id-relation-anu_ids ? kriyA-subject  ?root_id ?sub_id)
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (id-HM-source ?root_id ? ?src&Compound_Phrase_gdbm)
 (ids-cmp_mng-head-cat-mng_typ-priority $? ?root_id $? ?h_mng ?head_id ?grp_cat ?mng_typ ?)
 ?f1<-(pada_info (group_ids $?ids)(group_cat PP))
 (test (member$ ?sub_id $?ids))
 ?f0<-(pada_control_fact ?sub_id)
 (not (prep_id-relation-anu_ids ? kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 =>

	(bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
        (if (neq ?a "0") then
                (if (neq (str-index "_" ?h_mng) FALSE) then
                        (bind ?index (str-index "_" ?h_mng))
                        (while (neq ?index FALSE)
                                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                                (bind ?index (str-index "_" ?h_mng))
                        )
                        (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                        (if (neq ?a "0") then
                                (modify ?f1 (vibakthi ne))
                                (retract ?f0)
				(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	ne	not_ne_verb_list.gdbm )" crlf )
                        )
                else
                        (modify ?f1 (vibakthi ne))
                        (retract ?f0)
			(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	ne	not_ne_verb_list.gdbm )" crlf )
                )
        )
 )
 ;-------------------------------------------------------------------------------------------------------
 ; I ate fruits , drank milk and slept . take the least verb id 
 ; They took them to policestation .
 (defrule ne_vib_rule2
 (declare (salience 850))
 (prep_id-relation-anu_ids ? kriyA-subject  ?root_id ?sub_id)
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (id-HM-source ?root_id ?h_mng ?)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_ids $?ids)(group_cat PP))
 ?f0<-(pada_control_fact ?sub_id)
 (not (prep_id-relation-anu_ids ? kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 =>
	(bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
	(if (neq ?a "0") then
		(if (neq (str-index "_" ?h_mng) FALSE) then
			(bind ?index (str-index "_" ?h_mng))
			(while (neq ?index FALSE)
				(bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
				(bind ?index (str-index "_" ?h_mng))
			)
			(bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
			(if (neq ?a "0") then
		                (modify ?f1 (vibakthi ne))
                		(retract ?f0)
				(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	ne	not_ne_verb_list.gdbm )" crlf )
			)
		else
			(modify ?f1 (vibakthi ne))
                        (retract ?f0)
			(printout ?*vib_debug_file* "(id-vib-source	"?sub_id"	ne	not_ne_verb_list.gdbm )"crlf)
		)
	)
 )
 ;-------------------------- prefix vibakthi rule ---------------------------------------------
 ; These are the boy 's books . These are children 's books .
 (defrule prefix_vib_rule
 (declare (salience 701))
 ?f0<-(id-original_word ?id ?word)
 (test (eq (numberp ?word) FALSE)) ;Added by Roja(02-05-11) To avoid join network errors.
                                   ;Ex: We lost 30 minutes in the traffic jam. 
 (test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s"))
 ?f1<-(pada_info (group_head_id ?id)(group_cat ?cat)(vibakthi 0))
 ;(test (and (neq ?cat English_PP)(neq ?cat PP_intermediate)))
 (test (neq ?cat PP_intermediate))
 =>  
	(retract ?f0)
	(modify ?f1 (vibakthi kA))
	(printout ?*vib_debug_file* "(id-vib-source	"?id"	kA	's )" crlf )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Eg: Mohan fell from the top of the house.
 ;Added on (11-03-11)
 (defrule vib_for_single_prep
 (declare (salience 700))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition ?pp_id )(vibakthi 0))
 ?f2<-(id-HM-source ?pp_id ?h_mng ?s)
 (test (neq ?h_mng -))
 (not (modified_pada_with_prep ?pada_id)) ;He stopped killing of animals and birds throughout his kingdom.
  =>
	(modify ?f1 (vibakthi ?h_mng))
;	(retract ?f2)
	(assert (modified_pada_with_prep ?pada_id))	
	(printout ?*vib_debug_file* "(id-vib-source	"?pada_id"	"?h_mng"	"?s"(single_prep) )" crlf )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;NOTE: Multiple prep meaning should be compound meaning
 ;Added on (15-03-11)	 
 ;The people of Orissa are facing grave adversities due to the cyclone. 
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule vib_for_multiple_prep
 (declare (salience 701))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition $?pp_ids )(vibakthi 0))
 ?f2<-(id-HM-source ?id ?h_mng ?s)
 (test (> (length $?pp_ids) 1))
 (test (and (member$ ?id $?pp_ids)(neq ?h_mng -)))
 =>
	(bind ?len (length $?pp_ids))
	(loop-for-count (?i 1 ?len) do
		(if (eq ?id (nth$ ?i $?pp_ids)) then
                       	(modify ?f1 (vibakthi ?h_mng))
	          	(printout ?*vib_debug_file* "(id-vib-source	"?pada_id"	"?h_mng" 	"?s"(multi_prep) )" crlf )
		)
       )
 )
 ;------------------------------------------------------------------------------------------
 ; She asked me to guess her age.
 ; I showed them how they should do it .
 (defrule default_ko_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  ?w&him|Him|them|Them|me|Me)
 ?f1<-(pada_control_fact ?pada_id)
 =>
	(retract ?f1)
        (modify ?f0 (vibakthi ko))
	(printout ?*vib_debug_file* "(id-vib-source	"?pada_id"	ko	word_"?w " )" crlf )
 )
;------------------------------------------------------------------------------------------
 ; Is that the film in which he kills his mother. This book is mine|ours|yours.
 (defrule default_kA_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  ?w&his|His|our|Our|mine|my|ours|your|yours)
 ?f1<-(pada_control_fact ?pada_id)
 =>
        (retract ?f1)
        (modify ?f0 (vibakthi kA)) 
       	(printout ?*vib_debug_file* "(id-vib-source	"?pada_id"	kA	word_"?w " )" crlf )
 )
;------------------------------------------------------------------------------------------
;He was awarded for his courage.
;Suggested by Chaitanya Sir (16-07-13)
(defrule ko_vib_for_xe_root
(declare (salience 450))
(id-E_tam-H_tam_mng ?id ? yA_gayA_WA)
(id-HM-source ?id ?hmng ?)
(test (or (eq ?hmng xe)(member$ xe  (create$ (remove_character "_" ?hmng " ")))))
(prep_id-relation-anu_ids - kriyA-subject ?id ?sub)
?f0<-(pada_info (group_head_id ?sub)(group_cat PP)(vibakthi 0))
?f1<-(pada_control_fact ?sub)
=>
	(retract ?f1)
	(modify ?f0 (vibakthi ko))
       	(printout ?*vib_debug_file* "(id-vib-source	"?sub"	ko	root_xe_and_tam_yA_gayA_WA )" crlf )
)
;------------------------------------------------------------------------------------------
;Suggested by Chaitanya Sir (16-08-13)
;Henceforth, every Sunday, I shall be giving a talk on the teaching of the Gita, who is verily our mother.
(defrule ko_vib_for_every
(declare (salience 440))
?f0<-(pada_info (group_head_id ?hid)(group_cat PP)(vibakthi 0))
(id-root ?hid sunday|monday|tuesday|wednesday|thursday|friday|saturday)
(id-root =(- ?hid 1) every)
?f1<-(pada_control_fact ?hid)
=>
	(retract ?f1)
        (modify ?f0 (vibakthi ko))
       	(printout ?*vib_debug_file* "(id-vib-source	"?hid"	ko	previous_word_every )" crlf )
)
;------------------------------------------------------------------------------------------
;Added on (23-05-12)
;Many fat boys, a tall girl and a small child ate fruits. 
(defrule modify_and_vib
(declare (salience 400))
?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib))
(test (neq ?vib 0))
(id-original_word ?pada_id ?w&and|or)
(conj_head-left_head-right_head ?pada_id ? ?rh)
?f1<-(pada_info (group_head_id ?rh)(vibakthi 0))
=>
	(retract ?f1)
;	(modify ?f0 (vibakthi 0))
	(modify ?f1 (vibakthi ?vib))
       	(printout ?*vib_debug_file* "(id-vib-source	"?rh"	"?vib"	"?w " )" crlf )
)
;------------------------------------------------------------------------------------------

