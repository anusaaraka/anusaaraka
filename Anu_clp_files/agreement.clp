 (defglobal ?*agrmt_file* = agrmt_fp)
 (defglobal ?*agrmt_debug* = agrmt_db)

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffacts dummy_facts
 (id-inserted_sub_id)
 (missing-level-id)
 (id-original_word)
 (id-number-src)
 (verb_type-verb-causative_verb-tam)
 (addition-level-word-sid)
 (id-wsd_number)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-last_word)
 (id-wsd_root)
 (No complete linkages found)
 (id-cat)
 (id-cat_coarse)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
 (to_be_included_in_paxa)
 (id-word)
 (root-verbchunk-tam-chunkids)
 (conjunction-components)
 (prep_id-relation-anu_ids)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -2000))
 =>
        (close  ?*agrmt_file*)
        (close ?*agrmt_debug*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with last id of subject with head_id "or"
 ;Ex. Are John or I invited ?
 (defrule sub_or_agr
 (declare (salience 1100))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (prep_id-relation-anu_ids  ? kriyA-subject|kriyA-aBihiwa ?root_id ?x)
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0) (group_ids $?ids ?last_id))
 (id-original_word ?x or)
 ?f0<-(agmt_control_fact ?root_id)
 (test (and (neq ?cat English_PP)(neq ?cat PP_intermediate))) ;the condition "PP_intermediate" is for "and" pada
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  or_subject  "?last_id" "?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_or_agr   or_subject  "?last_id" "?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Verb agrees with: With Subject(karwA), If it has 0 prasarg.
 ; if subject has vibhakti
 (defrule sub_agrmt
 (declare (salience 1000))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (prep_id-relation-anu_ids ? kriyA-subject|kriyA-aBihiwa ?root_id ?x)
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0))
 ?f0<-(agmt_control_fact ?root_id)
 (test (and (neq ?cat English_PP)(neq ?cat PP_intermediate)));the condition "PP_intermediate" is for "and" pada
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  subject  "?x" "?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_agrmt   subject "?x" "?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with:With Object(Karma), If it has 0 prasarg.
 (defrule obj_agrmt
 (declare (salience 900))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (prep_id-relation-anu_ids ?  kriyA-object|kriyA-object_2 ?root_id ?x)
 (pada_info (group_cat ?cat)(group_head_id ?x)(vibakthi 0))
 ?f0<-(agmt_control_fact ?root_id)
 (test (and (neq ?cat English_PP)(neq ?cat PP_intermediate))) ;the condition "PP_intermediate" is for "and" pada
 =>
        (retract ?f0)
        (printout ?*agrmt_file* "(verb_agrmt-object_id-head_id  object " ?x" " ?root_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-object_id-head_id  obj_agrmt   object " ?x" " ?root_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with:With kriyA_mUla
 (defrule kriyA_mUla_agrmt
 (declare (salience 800))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 (id-HM-source ?root_id ?hmng ?)
 ?f0<-(agmt_control_fact ?root_id)
 =>
        (bind ?gen (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (if (neq ?gen "FALSE") then
                (retract ?f0)
                (printout  ?*agrmt_file* "(verb_agrmt-head_id  kriyA_mula " ?root_id " " ?gen ")" crlf )
		(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-head_id   kriyA_mUla_agrmt kriyA_mula " ?root_id " " ?gen ")" crlf )
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Default verb form (m,s,anya)
 (defrule def_agrmt
 (declare (salience 700))
 (pada_info (group_head_id ?root_id)(group_cat VP))
 ?f0<-(agmt_control_fact ?root_id)
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-head_id  default "   ?root_id")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-head_id  def_agrmt  default "   ?root_id")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
