 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deftemplate tam_tmp_info (slot head_id (default 0))(slot eng_tam (default 0))(slot hin_tam (default 0))(slot subject_vibhakti (default 0))(slot preceding_part_of_the_verb (default 0)))

 (deffacts dummy_facts 
 (id-E_tam-H_tam_mng)
 (id-preceeding_part_of_verb)
 (id-H_vib_mng)
 (id-wsd_number) 
 (id-tam_type)
 (kriyA_id-object2_viBakwi)
 (kriyA_id-object1_viBakwi)
 (kriyA_id-object_viBakwi)
 (kriyA_id-subject_viBakwi)
 (make_verbal_noun)
 (root_id-TAM-vachan)
 (meaning_has_been_decided)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (id-attach_emphatic)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-wsd_root)
 )
 
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule wsd_tam_mng1
 (declare (salience 6000))
 (id-E_tam-H_tam_mng ?id ?E_tam ?H_tam)
 ?f1<-(pada_info (group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule wsd_tam_mng2
 (declare (salience 7000))
 (id-E_tam-H_tam_mng ?id  ?E_tam ?H_tam)
 (id-preceeding_part_of_verb ?id ?verb)
 ?f1<-(pada_info (group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(preceeding_part_of_verb ?verb)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule wsd_tam_mng3
 (declare (salience 7000))
 (id-H_vib_mng ?id ?H_vib)
 ?f1<-(pada_info (group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_vib)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule default_tam_mng1
 (declare (salience 5000))
 (tam_tmp_info (head_id  ?root_id)(eng_tam ?tam)(hin_tam ?h_tam) (preceding_part_of_the_verb ?vrb))
 ?f2<-(pada_info (group_head_id ?root_id))
 ?mng<-(meaning_to_be_decided ?root_id)
 =>
   (retract ?mng)
   (modify ?f2 (H_tam ?h_tam)(preceeding_part_of_verb ?vrb)(tam_source Default))
 )
 ;---------------------------------------------------------------------------------------------------------------------
