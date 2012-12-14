(defglobal ?*wsd_tam_fact_file* = wsd_tam_fact_fp)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

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
 (verb_type-verb-causative_verb-tam)
 (root-verbchunk-tam-chunkids)
 (verb_type-verb-kriyA_mUla-tam)
 (id-TAM)
 (id-cat)
 (id-cat_coarse)
 (conj_head-left_head-right_head)
 (conj_head-components)
 )

 ; if there is a conjunction between verbs and the tam for first verb is say wA_hE then modify all the tams for the verbs in conjunction as wA_hE
 ;Suggested by Chaitanya Sir (12-12-12)
 ;Every living creature in the world experiences the need to impart or receive information almost continuously with others in the surrounding world.
 (defrule modify_tam_for_conjunction
 (declare (salience 8000))
 (conj_head-components ?con ?f_vb $? ?s_vb $?)
 (id-E_tam-H_tam_mng ?f_vb ? ?htam)
 ?f0<-(id-E_tam-H_tam_mng ?s_vb ?etam ?)
 (not (modified_sverb_tam ?s_vb))
 =>
	(retract ?f0)
	(assert (id-E_tam-H_tam_mng ?s_vb ?etam ?htam))
	(assert (modified_sverb_tam ?s_vb))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (12-12-12)
 ;Every living creature in the world experiences the need to impart or receive information almost continuously with others in the surrounding world.
 (defrule get_verbal_noun_fact_for_modified_tam
 (declare (salience 7500))
 (modified_sverb_tam ?s_vb)
 (conj_head-components ?con ?f_vb $? ?s_vb $?)
 (make_verbal_noun ?f_vb)
 (not (got_vn_fact_for_second_verb ?s_vb))
 =>	
	(printout ?*wsd_tam_fact_file* "(make_verbal_noun  " ?s_vb ")" crlf)
	(assert (make_verbal_noun ?s_vb ))
	(assert (got_vn_fact_for_second_verb ?s_vb))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule wsd_tam_mng_verb
 (declare (salience 7000))
 (id-preceeding_part_of_verb ?id ?verb)
 (id-E_tam-H_tam_mng ?id  ?E_tam ?H_tam)
 (id-cat_coarse ?id verb) 
 ?f1<-(pada_info (group_head_id ?id))
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(preceeding_part_of_verb ?verb)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;He wasted his golden opportunity to play in the national team. 
 (defrule wsd_tam_mng_verb1
 (declare (salience 6000))
 (id-H_vib_mng ?id ?H_tam)
 (id-cat_coarse ?id verb)
 ?f1<-(pada_info (group_head_id ?id))
 ?mng<-(meaning_to_be_decided ?id)
 =>
 	(retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
	(assert (tam_decided  ?id))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule wsd_tam_mng_verb2
 (declare (salience 5000))
 (id-E_tam-H_tam_mng ?id ?E_tam ?H_tam)
 (id-cat_coarse ?id verb)
 ?f1<-(pada_info (group_head_id ?id))
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
        (assert (tam_decided  ?id))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule wsd_tam_mng1
 (declare (salience 4000))
 (id-E_tam-H_tam_mng ?id  ?E_tam ?H_tam)
 (id-preceeding_part_of_verb ?id ?verb)
 ?f1<-(pada_info (group_head_id ?h)(group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 (not (tam_decided  ?h))
 =>
	(retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(preceeding_part_of_verb ?verb)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;BROKEN WINDOWS need to be replaced.
 (defrule wsd_tam_mng2
 (declare (salience 3000))
 (id-H_vib_mng ?id ?H_tam)
 ?f1<-(pada_info (group_head_id ?h)(group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 (not (tam_decided  ?h))
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule wsd_tam_mng3
 (declare (salience 2000))
 (id-E_tam-H_tam_mng ?id ?E_tam ?H_tam)
 ?f1<-(pada_info (group_head_id ?h)(group_ids $? ?id $?))
 ?mng<-(meaning_to_be_decided ?id)
 (not (tam_decided  ?h))
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Roja(10-03-11)
 ;A fat ugly boy had to eat fruits.(here tam is had_to_0) 
 (defrule get_tam_from_database
 (root-verbchunk-tam-chunkids  $? ?head_id)
 (id-TAM ?head_id ?tam)
 ?f2<-(pada_info (group_head_id ?head_id))
 ?f1<-(meaning_to_be_decided ?head_id)
 =>
	(bind ?tam (implode$ (create$  ?tam)))
	(bind ?def_tam (gdbm_lookup "hindi_default_tam.gdbm" ?tam))  ;?def_tam = nA_padA-ko-0
        (if (neq ?def_tam "FALSE") then
	    (retract ?f1)
            (bind ?i (str-index "-" ?def_tam))   ;?i = 8
            (bind ?h_tam (string-to-field (sub-string 1 (- ?i 1) ?def_tam)))  ; ?h_tam = nA_padA
            (bind ?sub  (sub-string (+ ?i 1) 1000 ?def_tam)) ; ?sub = ko-0
            (bind ?sub_v (string-to-field (sub-string 1 (- (str-index "-" ?sub) 1)  ?sub))) ; ?sub_v = ko
            (bind ?v (string-to-field (sub-string (+ (str-index "-" ?sub) 1) (length ?sub) ?sub))) ;?v = 0
	    (modify ?f2 (H_tam ?h_tam)(vibakthi ?sub_v)(preceeding_part_of_verb ?v)(tam_source Default))
        )
 )
 ;---------------------------------------------------------------------------------------------------------------------
