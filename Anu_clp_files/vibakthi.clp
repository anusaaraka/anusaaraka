(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))


 (deffacts dummy_facts
 (kriyA_id-subject_viBakwi)
 (kriyA_id-object_viBakwi)
 (kriyA_id-object1_viBakwi)
 (kriyA_id-object2_viBakwi)
 (id-wsd_number)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-tam_type)
 (id-H_vib_mng)
 (make_verbal_noun)
 (root_id-TAM-vachan)
 (id-E_tam-H_tam_mng)
 (id-preceeding_part_of_verb)
 (id-attach_emphatic)
 (meaning_has_been_decided)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (id-last_word)
 (relation-anu_ids)
 (missing-level-id)
 (id-original_word)
 (id-number-src)
 (verb_type-verb-causative_verb-tam)
 (addition-level-word-sid)
 (conjunction-components)
 (id-wsd_root)
 (id-cat)
 (id-cat_coarse)
 (id-word)
 (root-verbchunk-tam-chunkids)
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

 ;---------------------------------- verb-to-sub-vibakthi --------------------------
 (defrule  kriya_sub_vibakthi_rule
 (declare (salience 1000))
 (kriyA_id-subject_viBakwi ?root_id ?vib)
 (relation-anu_ids kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP))
 =>
        (retract ?f0)
 	(modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------verb-to-obj vibakthi -----------------------------------------------------
 ;I saw him telling her about the party .
 (defrule kriya_obj_vibakthi_rule
 (declare (salience 1000))
 (or (and (kriyA_id-object_viBakwi ?root_id ?vib)(relation-anu_ids kriyA-object  ?root_id ?obj_id))(and (kriyA_id-object2_viBakwi ?root_id ?vib)(relation-anu_ids kriyA-object_2  ?root_id ?obj_id))(and (kriyA_id-object1_viBakwi ?root_id ?vib)(relation-anu_ids kriyA-object_1  ?root_id ?obj_id)))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
 )
 ;--------------------------------------- se vib for (kriyA-prayojya_karwA ) --------------------------------
 ; She is making the girl feed the child 
 (defrule kriya_prayojya_karwA_rule
 (declare (salience 980))
 (relation-anu_ids kriyA-prayojya_karwA  ?id ?id1)
 ?f0<-(pada_control_fact ?id1)
 ?f1<-(pada_info (group_head_id ?id1)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi se))
 )
 ;------------------------------------------- animate-obj-vib -------------------------------------------------
 ;I gave my brother an expensive present
 (defrule animate_vibakthi_rule
 (declare (salience 950))
 (relation-anu_ids kriyA-object|kriyA-object_2|kriyA-object_1 ?root_id ?obj_id)
; (or (kriyA-object  ?root_id ?obj_id)(kriyA-object_2  ?root_id ?obj_id)(kriyA-object_1  ?root_id ?obj_id))
 (not (relation-anu_ids subject-subject_samAnAXikaraNa  ?x ?obj_id))
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
 (relation-anu_ids kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id))
 (test (neq ?vib 0))
 =>
	(retract ?f0)
	(modify ?f1 (vibakthi ?vib))
	(modify ?f (vibakthi 0))
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;The object turned out to be a big meteorite .
 ;Here Compound-phrase is "turned out to be" (generally  for a compound phrase meaning is assigned to the last word and all other as "-"), and in this case "turned" is "kriyA" and hindi meaning is "-" so vibakthi information for this types of phrases will go wrong by using rule vib_rule1 .So, in order to solve this problem we have added the below rule in which if verb is part of any phrase , phrase meaning is taken as verb meaning.
 (defrule vib_rule2
 (declare (salience 850))
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (relation-anu_ids kriyA-subject  ?root_id ?sub_id)
 (not (relation-anu_ids kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 (id-HM-source ?root_id ? ?src)
 (ids-cmp_mng-head-cat-mng_typ $?ids1 ?h_mng ?head_id ?grp_cat ?mng_typ)
 (test (and (eq ?src Compound_Phrase_gdbm) (member$ ?root_id $?ids1)))
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_ids $?ids))
 (test (member$ ?sub_id $?ids))
 =>
        (retract ?f0)
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?index (str-index "_" ?h_mng))
                (while (neq ?index FALSE)
                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                (bind ?index (str-index "_" ?h_mng)))
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
                        (modify ?f1 (vibakthi 0))
                else
                        (modify ?f1 (vibakthi ne))
                )
        else
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
                        (modify ?f1 (vibakthi 0))
                else
                        (modify ?f1 (vibakthi ne))
                )
       )
 )

 ;-------------------------------------------------------------------------------------------------------
 ; I ate fruits , drank milk and slept . take the least verb id 
 ; They took them to policestation .
 (defrule vib_rule1
 (declare (salience 850))
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (relation-anu_ids kriyA-subject  ?root_id ?sub_id)
 (not (relation-anu_ids kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 (id-HM-source ?root_id ?h_mng ?)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_ids $?ids))
 (test (member$ ?sub_id $?ids))
 =>
        (retract ?f0)
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?index (str-index "_" ?h_mng))
                (while (neq ?index FALSE)
                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                (bind ?index (str-index "_" ?h_mng)))
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
 			(modify ?f1 (vibakthi 0))
                else
			(modify ?f1 (vibakthi ne))
                )
        else
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
			(modify ?f1 (vibakthi 0))
                else
			(modify ?f1 (vibakthi ne))
                )
       )
 )

 ;-------------------------- prefix vibakthi rule ---------------------------------------------

; These are the boy 's books . These are children 's books .
 (defrule prefix_vib_rule
 (declare (salience 700))
 ?f0<-(id-original_word ?id ?word)
 (test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s"))
 ?f1<-(pada_info (group_head_id ?id)(group_cat ?cat))
 (test (neq ?cat English_PP))
 =>  
	(retract ?f0)
	(modify ?f1 (vibakthi kA))
 )

 ;------------------------------------------------------------------------------------------------------------------
 (defrule PP_vib
 (declare (salience 700))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition ?pp_id))
 (id-HM-source ?pp_id ?h_mng ?)
 (test (neq ?pp_id 0))
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?h_mng -) then 
		(modify ?f1 (vibakthi 0))
	else 
		(modify ?f1 (vibakthi ?h_mng))
 	)
 )

 ;------------------------------------------------------------------------------------------------------------------
 ;Creating the fact of hindi-meanings in english-order(this fact is used by "vib_for_multiple_prep" rule for getting the vibakthi mng (26-03-10))
 (defrule get_hin_mng_list
 (declare (salience 702))
 ?f1<-(index ?id)
 ?f<-(hin_mng_list $?hin_list)
 ?f2<-(id-HM-source ?id ?h_mng ?)
 =>
 (retract ?f ?f1)
 (bind ?h_mng (str-cat ?h_mng ""))
 (assert (hin_mng_list $?hin_list ?h_mng))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )

 ;-------------------------------------------------------------------------------------------------------------------
 ;Eg:-He came FROM INSIDE the room .
 (defrule vib_for_multiple_prep
 (declare (salience 701))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition ?pp_id))
 ?f2<-(hin_mng_list $?hin_list)
 (test (neq ?pp_id 0))
 (test (numberp (str-index "_" (str-cat ?pp_id ""))))
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (bind ?str "")(bind ?str1 "")
        (while (neq (str-index "_" ?pp_id) FALSE) do
	        (bind ?index (str-index "_" ?pp_id))
        	(bind ?str (sub-string 1 (- ?index 1) ?pp_id))
	        (bind ?str (str-cat ?str " " ))
        	(bind ?str1 (sub-string (+ ?index 1) 1000 ?pp_id)) 
	        (bind ?pp_id (str-cat ?str ?str1))
	)
        (bind ?vib (str-cat ""))
	(bind $?ids (explode$ ?pp_id))
        (bind ?len (length$ $?ids))
        (loop-for-count (?i 1 ?len)
        	(bind ?id (nth$ ?i $?ids))
                (if (and (eq ?i ?len)(neq (nth$ ?id $?hin_list)  "-")) then
                	(bind ?vib (str-cat ?vib (nth$ ?id $?hin_list)))
                        else (if (neq (nth$ ?id $?hin_list)  "-") then
                        (bind ?vib (str-cat ?vib (nth$ ?id $?hin_list) "_")))			
               	)
	)
        (if (neq ?vib "") then
                (bind ?vib (string-to-field ?vib))
                (modify ?f1 (vibakthi ?vib))
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
