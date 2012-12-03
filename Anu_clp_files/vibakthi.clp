;This file is written by Shirisha Manju

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
 (assert (ids-phy_cmp_mng-head-cat-mng_typ-priority)) 
 )


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
 )
 ;---------------------------------- verb-to-sub-vibakthi --------------------------
 (defrule  kriya_sub_vibakthi_rule
 (declare (salience 1000))
 (kriyA_id-subject_viBakwi ?root_id ?vib)
 (prep_id-relation-anu_ids ? kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP))
 =>
        (retract ?f0)
 	(modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------verb-to-obj vibakthi -----------------------------------------------------
 ;I saw him telling her about the party .
 (defrule kriya_obj_vibakthi_rule_from_wsd
 (declare (salience 1000))
 (or (and (kriyA_id-object_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object  ?root_id ?obj_id))(and (kriyA_id-object2_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_2  ?root_id ?obj_id))(and (kriyA_id-object1_viBakwi ?root_id ?vib)(prep_id-relation-anu_ids ? kriyA-object_1  ?root_id ?obj_id)))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (22-06-12)
 ;I abhor terrorism. I abrogate our plan to visit Bhopal.
 (defrule kriya_obj_vibakthi_rule_from_dbase
 (declare (salience 990))
 (prep_id-relation-anu_ids ? kriyA-object  ?root_id ?obj_id)
 (id-HM-source	?root_id ?mng ?)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP)(vibakthi 0))
 =>
	(bind ?vib (string-to-field (gdbm_lookup "kriyA_object_vib.gdbm" ?mng)))
	(if (neq ?vib FALSE) then
		(retract ?f0)
        	(modify ?f1 (vibakthi ?vib))
	)
 )
 ;--------------------------------------- se vib for (kriyA-prayojya_karwA ) --------------------------------
 ; She is making the girl feed the child 
 (defrule kriya_prayojya_karwA_rule
 (declare (salience 980))
 (prep_id-relation-anu_ids ? kriyA-prayojya_karwA  ?id ?id1)
 ?f0<-(pada_control_fact ?id1)
 ?f1<-(pada_info (group_head_id ?id1)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi se))
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
 )
 ;------------------------------------------- animate-obj-vib -------------------------------------------------
 ;I gave my brother an expensive present
 (defrule animate_vibakthi_rule
 (declare (salience 950))
 (prep_id-relation-anu_ids ? kriyA-object ?root_id ?obj_id)
 (not (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa  ?x ?obj_id))
 (id-HM-source ?obj_id ?obj_mng ?)
 (id-root ?root_id ~have)
 (id-original_word ?obj_id ?word)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (if (or (eq ?word you)(eq ?word You)) then
                (retract ?f0)
		(modify ?f1 (vibakthi ko))
        else
                (bind ?animate (gdbm_lookup "animate_list.gdbm" ?obj_mng))
                (if (eq ?animate "1") then
                        (retract ?f0) 
			(modify ?f1 (vibakthi ko))
                )
        )
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
 (id-HM-source ?root_id ? ?src)
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids1 ?h_mng ?head_id ?grp_cat ?mng_typ ?)
 ?f1<-(pada_info (group_ids $?ids)(group_cat PP))
 ?f0<-(pada_control_fact ?sub_id)
 (not (prep_id-relation-anu_ids ? kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 (test (and (eq ?src Compound_Phrase_gdbm) (member$ ?root_id $?ids1)))
 (test (member$ ?sub_id $?ids))
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
                        )
                else
                        (modify ?f1 (vibakthi ne))
                        (retract ?f0)
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
			)
		else
			(modify ?f1 (vibakthi ne))
                        (retract ?f0)
		)
	)
 )
 ;-------------------------- prefix vibakthi rule ---------------------------------------------
 ; These are the boy 's books . These are children 's books .
 (defrule prefix_vib_rule
 (declare (salience 700))
 ?f0<-(id-original_word ?id ?word)
 (test (eq (numberp ?word) FALSE)) ;Added by Roja(02-05-11) To avoid join network errors.
                                   ;Ex: We lost 30 minutes in the traffic jam. 
 (test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s"))
 ?f1<-(pada_info (group_head_id ?id)(group_cat ?cat))
 ;(test (and (neq ?cat English_PP)(neq ?cat PP_intermediate)))
 (test (neq ?cat PP_intermediate))
 =>  
	(retract ?f0)
	(modify ?f1 (vibakthi kA))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Eg: Mohan fell from the top of the house.
 ;Added on (11-03-11)
 (defrule vib_for_single_prep
 (declare (salience 701))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition ?pp_id ))
 ?f2<-(id-HM-source ?pp_id ?h_mng ?)
 (test (neq ?h_mng -))
 (not (modified_pada_with_prep ?pada_id)) ;He stopped killing of animals and birds throughout his kingdom.
  =>
	(modify ?f1 (vibakthi ?h_mng))
;	(retract ?f2)
	(assert (modified_pada_with_prep ?pada_id))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added on (15-03-11)	 
 ;The people of Orissa are facing grave adversities due to the cyclone. 
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule vib_for_multiple_prep
 (declare (salience 701))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition $?pp_ids )(vibakthi ?vib))
 ?f2<-(id-HM-source ?id ?h_mng ?)
 (test (> (length $?pp_ids) 1))
 (test (and (member$ ?id $?pp_ids)(neq ?h_mng -)))
 =>
	(bind ?len (length $?pp_ids))
	(loop-for-count (?i 1 ?len) do
		(if (eq ?id (nth$ ?i $?pp_ids)) then
                       	(modify ?f1 (vibakthi ?h_mng))
			(retract ?f2)
		)
       )
 )
 ;------------------------------------------------------------------------------------------
 ; She asked me to guess her age.
 ; I showed them how they should do it .
 (defrule default_ko_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  her|Her|him|Him|them|Them|me|Me)
 ?f1<-(pada_control_fact ?pada_id)
 =>
	(retract ?f1)
        (modify ?f0 (vibakthi ko))
 )
;------------------------------------------------------------------------------------------
 ; Is that the film in which he kills his mother.
 (defrule default_kA_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  his|His|our|Our)
 ?f1<-(pada_control_fact ?pada_id)
 =>
        (retract ?f1)
        (modify ?f0 (vibakthi kA))
 )
;------------------------------------------------------------------------------------------
;Added on (23-05-12)
;Many fat boys, a tall girl and a small child ate fruits. 
(defrule modify_and_vib
(declare (salience 400))
?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib))
(test (neq ?vib 0))
(id-original_word ?pada_id and|or)
(conj_head-left_head-right_head ?pada_id ? ?rh)
?f1<-(pada_info (group_head_id ?rh)(vibakthi 0))
=>
	(retract ?f1)
;	(modify ?f0 (vibakthi 0))
	(modify ?f1 (vibakthi ?vib))
)
;------------------------------------------------------------------------------------------

