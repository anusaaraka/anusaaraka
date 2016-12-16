(defglobal ?*wsd_tam_fact_file* = wsd_tam_fact_fp)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction never-called ()
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (id-H_vib_mng))
 (assert (id-wsd_number) )
 (assert (id-tam_type))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (make_verbal_noun))
 (assert (root_id-TAM-vachan))
 (assert (meaning_has_been_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-attach_emphatic))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-wsd_root))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (root-verbchunk-tam-chunkids))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (id-TAM))
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (conj_head-left_head-right_head))
 (assert (conj_head-components))
 (assert (conjunction-components))
 (assert (prep_id-relation-anu_ids))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi)) 
 (assert (id-tam-src))
 (assert (id-HM-source))
 (assert (id-domain_type))
 (assert (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng))
 (assert (dir_name-file_name-rule_name-id-wsd_root_mng))
 (assert (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng))
 (assert (dir_name-file_name-rule_name-id-wsd_word_mng))
 (assert (dir_name-file_name-rule_name-kriyA_id-object2_viBakwi))
 (assert (dir_name-file_name-rule_name-kriyA_id-object_viBakwi))
 (assert (dir_name-file_name-rule_name-kriyA_id-subject_viBakwi))
 (assert (dir_name-file_name-rule_name-make_verbal_noun))
 (assert (dir_name-file_name-rule_name-id-H_tam_mng))
 (assert (dir_name-file_name-rule_name-id-H_vib_mng))
 (assert (dir_name-file_name-rule_name-kriyA_id-object1_viBakwi))
 (assert (dir_name-file_name-rule_name-id-wsd_number))
 (assert (dir_name-file_name-rule_name-id-wsd_viBakwi))
 (assert (dir_name-file_name-rule_name-id-preceeding_part_of_verb))
 (assert (dir_name-file_name-rule_name-id-wsd_root))
 (assert (dir_name-file_name-rule_name-id-attach_emphatic))
 (assert (dir_name-file_name-rule_name-root_id-TAM-vachan))
 (assert (dir_name-file_name-rule_name-id-eng_src))
 (assert (dir_name-file_name-rule_name-id-domain_type))
 (assert (dir_name-file_name-rule_name-id-tam_type))
 (assert (default-iit-bombay-shabdanjali-dic.gdbm))
 (assert (language))
 )

 ; if there is a conjunction between verbs and the tam for first verb is say wA_hE then modify all the tams for the verbs in conjunction as wA_hE
 ;Suggested by Chaitanya Sir (12-12-12)
 ;Every living creature in the world experiences the need to impart or receive information almost continuously with others in the surrounding world.
 ; We walk, run and ride a bicycle.
 (defrule modify_tam_for_conjunction
 (declare (salience 8000))
 (conjunction-components ?con ?f_vb $? ?s_vb $?)
 (Head-Level-Mother-Daughters  ?  ?  ?CC  ?con)
 (Node-Category ?CC CC)
 (Head-Level-Mother-Daughters ?  ?  ? $? ?S ?CC ?S1 $?)
 (Node-Category ?S ?node&~S&~SBAR);He told me why he was here and what he was doing.Someone laughed suddenly and the spell was broken.
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
 (conjunction-components ?con ?f_vb $? ?s_vb $?)
 (make_verbal_noun ?f_vb)
 (not (got_vn_fact_for_second_verb ?s_vb))
 =>	
	(printout ?*wsd_tam_fact_file* "(make_verbal_noun  " ?s_vb ")" crlf)
	(assert (make_verbal_noun ?s_vb ))
	(assert (got_vn_fact_for_second_verb ?s_vb))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 14-5-14
 ;This rules takes tam meaning from templates
 ;Your cat keeps on rubbing itself against my leg.
 (defrule tam_mng_from_template
 (declare (salience 7001))
 (id-E_tam-H_tam_template_mng ?id  ?E_tam ?H_tam)
 (id-cat_coarse ?id verb)
 ?f1<-(pada_info (group_head_id ?id))
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source Template))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule tam_mng_from_wsd_tam_file_with_preceeding_verb
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
 ;Added by Shirisha Manju (12-05-14) -- Suggested by Chaitanya Sir
 ;This rule is added to solve 'noun' vib problem  [noun vib's: 0,ne,ko,se,ke_lie,se,kA/kI/ke,meM,para,vAlA]
 ;This book is [mine].
 ;'ne' and '0' are not considered becoz 'ne'  -- ne_xo [verb] and  '0'   -- ambiguous
 (defrule vib_mng_from_wsd_[word/root]_file
 (declare (salience 6550))
 ?f0<-(id-H_vib_mng ?id ?vib&~0)
 ?f1<-(pada_info (group_head_id ?id))
 (test (neq (str-index "_" ?vib)  FALSE))
 (test (member$ (string-to-field (sub-string 1 (- (str-index "_" ?vib) 1) ?vib)) (create$ kA kI ke meM)))
 (not (compound_meaning_decided ?id))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (12-05-14) -- Suggested by Chaitanya Sir
 ;This rule is added to solve 'noun' vib problem  [noun vib's: 0,ne,ko,se,ke_lie,se,kA/kI/ke,meM,para,vAlA]
 ;not added   '0'   -- ambiguous
 (defrule vib_mng_from_wsd_[word/root]_file1
 (declare (salience 6500))
 ?f0<-(id-H_vib_mng ?id ?vib&~0)
 ?f1<-(pada_info (group_head_id ?id))
 (test (member$ ?vib (create$ ne ko se kA kI ke meM para vAlA)))
 (not (compound_meaning_decided ?id))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;He wasted his golden opportunity to play in the national team. 
 (defrule tam_mng_from_wsd_[word/root]_file
 (declare (salience 6400))
 (id-H_vib_mng ?id ?H_tam)
 (id-cat_coarse ?id verb)
 ?f1<-(pada_info (group_head_id ?id))
 ?mng<-(meaning_to_be_decided ?id)
 (not (compound_meaning_decided ?id))
 =>
 	(retract ?mng)
        (modify ?f1 (H_tam ?H_tam)(tam_source WSD))
	(assert (tam_decided  ?id))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule tam_mng_from_wsd_tam_file
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
 ;BROKEN WINDOWS need to be replaced.
 (defrule tam_mng_for_grp_id_from_wsd_[word/root]_file
 (declare (salience 4000))
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
 (defrule tam_mng_for_grp_id_from_wsd_tam_file_with_preceeding_verb
 (declare (salience 3000))
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
 (defrule tam_mng_for_grp_id_from_wsd_tam_file
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
 (language ?lang)
 =>
	(bind ?tam (implode$ (create$  ?tam)))
	(if (eq ?lang hindi) then
		(bind ?def_tam (gdbm_lookup "hindi_default_tam.gdbm" ?tam))  ;?def_tam = nA_padA-ko-0
	else
		(if (eq ?lang marathi) then
			(bind ?def_tam (gdbm_lookup "marathi_tam.gdbm" ?tam))  ;?def_tam = nA_padA-ko-0
		)
	)
        (if (neq ?def_tam "FALSE") then
	    (retract ?f1)
            (bind ?i (str-index "-" ?def_tam))   ;?i = 8
            (bind ?h_tam (string-to-field (sub-string 1 (- ?i 1) ?def_tam)))  ; ?h_tam = nA_padA
            (bind ?sub  (sub-string (+ ?i 1) 1000 ?def_tam)) ; ?sub = ko-0
            (bind ?sub_v (string-to-field (sub-string 1 (- (str-index "-" ?sub) 1)  ?sub))) ; ?sub_v = ko
            (bind ?v (string-to-field (sub-string (+ (str-index "-" ?sub) 1) (length ?sub) ?sub))) ;?v = 0
	    (modify ?f2 (H_tam ?h_tam)(vibakthi ?sub_v)(preceeding_part_of_verb ?v)(tam_source Default))
	else
		(printout t "Warning: " ?tam " TAM Not Found in WSD or Default Tam Dictionary" crlf)
        )
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Similarly, prices of different goods and services generally have a tendency to rise or fall simultaneously.
 (defrule modify_vib_for_conjunction
 (conjunction-components ?con ?f_vb $? ?l_vb)
 ?f<-(pada_info (group_head_id ?f_vb) (vibakthi ?vib&~0))
 ?f0<- (pada_info (group_head_id ?l_vb) )
 (not (modified_vib ?con))
 =>
	(modify ?f (vibakthi 0))
	(modify ?f0 (vibakthi ?vib))
	(assert (modified_vib ?con))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule change_tam_source_for_WSD
 (declare (salience -100))
 ?f<-(pada_info (group_head_id ?head_id)(tam_source WSD))
 (dir_name-file_name-rule_name-id-H_tam_mng ?dir_name  ? ?rule_name  ?head_id  ?)
 =>
	(if (eq (str-index "provisional_wsd_rules" ?dir_name) FALSE) then
   		(bind ?str (str-cat "WSD,rule_name::" ?rule_name))
	else
		(bind ?str (str-cat "Prov_WSD,rule_name::" ?rule_name))
	)
	(modify ?f (tam_source ?str))
 )

