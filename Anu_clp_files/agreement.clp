 ;This file is written by Shirisha Manju

 (defglobal ?*agrmt_file* = agrmt_fp)
 (defglobal ?*agrmt_debug* = agrmt_db)

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction never-called () 
 (assert (id-inserted_sub_id))
 (assert (missing-level-id))
 (assert (id-original_word))
 (assert (id-number-src))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (addition-level-word-sid))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-last_word))
 (assert (id-wsd_root))
 (assert (No complete linkages found))
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (link_name-link_expansion))
 (assert (link_name-lnode-rnode))
 (assert (to_be_included_in_paxa))
 (assert (id-word))
 (assert (root-verbchunk-tam-chunkids))
 (assert (conjunction-components))
 (assert (prep_id-relation-anu_ids))
 (assert (conj_head-left_head-right_head))
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
 ;The white marbled moti masjid or the pearl mosque was the private mosque for aurangzeb. 
 (defrule sub_or_agr
 (declare (salience 1100))
 (prep_id-relation-anu_ids  ? kriyA-subject|kriyA-aBihiwa ?kriyA_id ?sub_id)
 (id-original_word ?sub_id or)
 (conj_head-left_head-right_head ?sub_id ? ?last_id)
 (pada_info (group_cat PP)(group_head_id ?last_id)(vibakthi 0))
 ?f0<-(agmt_control_fact ?kriyA_id)
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  or_subject  "?last_id" "?kriyA_id ")" crlf )
        (printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_or_agr   or_subject  "?last_id" "?kriyA_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Verb agrees with: With Subject(karwA), If it has 0 prasarg.
 ; if subject has vibhakti
 (defrule sub_agrmt
 (declare (salience 1000))
 (prep_id-relation-anu_ids ? kriyA-subject|kriyA-aBihiwa ?kriyA_id ?sub_id)
 (pada_info (group_head_id ?kriyA_id)(group_cat VP))
 (pada_info (group_cat PP)(group_head_id ?sub_id)(vibakthi 0))
 ?f0<-(agmt_control_fact ?kriyA_id)
 =>
        (retract ?f0)
        (printout  ?*agrmt_file* "(verb_agrmt-subject_id-head_id  subject  "?sub_id" "?kriyA_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-subject_id-head_id  sub_agrmt   subject "?sub_id" "?kriyA_id ")" crlf )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Verb agrees with:With Object(Karma), If it has 0 prasarg.
 (defrule obj_agrmt
 (declare (salience 900))
 (prep_id-relation-anu_ids ?  kriyA-object|kriyA-object_2 ?kriyA_id ?obj_id)
 (pada_info (group_head_id ?kriyA_id)(group_cat VP))
 (pada_info (group_cat PP)(group_head_id ?obj_id)(vibakthi 0))
 ?f0<-(agmt_control_fact ?kriyA_id)
 =>
        (retract ?f0)
        (printout ?*agrmt_file* "(verb_agrmt-object_id-head_id  object " ?obj_id" " ?kriyA_id ")" crlf )
	(printout ?*agrmt_debug* "(Rule_name-verb_agrmt-object_id-head_id  obj_agrmt   object " ?obj_id" " ?kriyA_id ")" crlf )
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
