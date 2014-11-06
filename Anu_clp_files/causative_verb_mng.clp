 (defglobal ?*h_mng_file* = h_grp_fp)
 
 (deffunction never-called ()
 (assert (id-original_word) )
 (assert (id-number-src))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (verb_type-verb-causative_verb-tam causative))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (root-verbchunk-tam-chunkids))
 (assert (id-HM-source))
 (assert (meaning_has_been_decided))
 (assert (meaning_to_be_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-H_vib_mng))
 (assert (id-wsd_root))
 (assert (make_verbal_noun))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (id-tam_type))
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (root_id-TAM-vachan))
 (assert (id-cat_coarse))
 (assert (id-cat))
 (assert (id-attach_emphatic))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (dir_name-file_name-rule_name-id-wsd_root_mng))
 (assert (dir_name-file_name-rule_name-id-wsd_word_mng))
 (assert (dir_name-file_name-rule_name-id-H_tam_mng))
 (assert (default-iit-bombay-shabdanjali-dic.gdbm))
 (assert (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng))
 (assert (dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng))
 (assert (dir_name-file_name-rule_name-root_id-TAM-vachan))
 (assert (dir_name-file_name-rule_name-make_verbal_noun))
 (assert (dir_name-file_name-rule_name-id-H_vib_mng))
 (assert (dir_name-file_name-rule_name-kriyA_id-object_viBakwi))
 (assert (dir_name-file_name-rule_name-kriyA_id-subject_viBakwi))
 (assert (dir_name-file_name-rule_name-id-wsd_root))
 (assert (dir_name-file_name-rule_name-kriyA_id-object1_viBakwi))
 (assert (dir_name-file_name-rule_name-kriyA_id-subject1_viBakwi))
 (assert (dir_name-file_name-rule_name-id-preceeding_part_of_verb))
 (assert (dir_name-file_name-rule_name-id-wsd_number))
 (assert (dir_name-file_name-rule_name-kriyA_id-object2_viBakwi))
 (assert (dir_name-file_name-rule_name-id-attach_emphatic))
 (assert (dir_name-file_name-rule_name-id-wsd_viBakwi))
 (assert (dir_name-file_name-rule_name-id-domain_type))
 (assert (id-HM-source-grp_ids))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 )
 ;----------------------------------------------------------------------------------------------------------------

 ; I am going to remarry when you die
 ; 1. if category is "verbal_noun" or "make_verbal_noun" fact present then check hindi mng in hindi_cat.gdbm if found then 
 ;    add nA to the h_mng
 (defrule verbal_noun_mng1
 (declare (salience 1000))
 (or (make_verbal_noun ?id)(id-cat_coarse ?id verbal_noun))
 ?f0<-(id-HM-source ?id ?h_word ?src&~Template_word_mng);Ex: Your cat keeps on [rubbing] itself against my leg.
 (test (neq ?h_word -))
 (not (made_verbal_noun ?id))
 =>
        (bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        (if (eq ?a "FALSE") then
		(if (neq (str-index "_" ?h_word) FALSE) then
			(bind ?len 0)
        	        (bind ?str1 ?h_word)
                	(bind ?str_len (length ?h_word))
	                (while (neq (str-index "_" ?h_word) FALSE)
        	                (bind ?index (str-index "_" ?h_word))
                	        (bind ?h_word (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        	(bind ?len (+ ?index ?len))
                	)
 			(bind ?b (gdbm_lookup "hindi_cat.gdbm" ?h_word))
			(if (neq ?b "FALSE") then
                                (retract ?f0)
	                	(bind ?str2 (sub-string 1 ?len ?str1))
				(bind ?h_word (explode$ (str-cat ?str2 ?h_word "nA")))
				(assert (id-HM-source ?id ?h_word ?src))
                                (assert (made_verbal_noun ?id))
                       )          	
 	       )	
          else
          (retract ?f0 )
          (bind ?h_word (explode$ (str-cat ?h_word "nA")))
          (assert (id-HM-source ?id ?h_word ?src))
          (assert (made_verbal_noun ?id))
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;She is making the girl feed the child .
 ;She made the girl feed the child .
 (defrule causative_verb_mng
 (declare (salience 1800))
 (verb_type-verb-causative_verb-tam causative ?vrb_id ?causative_vrb_id ?tam)
 ?f0<-(id-HM-source ?causative_vrb_id ?h_mng ?src)
 (id-HM-source ?vrb_id ?hmng ?src1)
 (not (modified_mng ?vrb_id))
 =>
        (bind ?a (gdbm_lookup "causative_verb_mng.gdbm" ?h_mng))
	(if (neq ?a "FALSE") then
		(retract ?f0)
		(assert (id-HM-source ?causative_vrb_id  (explode$ ?a) ?src))
		(assert (id-HM-source ?vrb_id  ?hmng ?src1))
		(assert (modified_mng ?vrb_id))
	)
  )
 ;----------------------------------------------------------------------------------------------------------------
 ;Ex. She was asked about the pay increase but made no comment.
 ;The cat sat on a mat and scratched itself loudly .(2nd-parse)
 ; Note : Need to be handled properly in Link
; (defrule subject_insertion
; (declare (salience 800))
; ?f0<-(id-original_word 10001 ?word)
; (id-HM-source-sub_id 10001 ?h_mng ?src ?sub_id)
;  =>
;	(retract ?f0)
;	(assert (id-HM-source  10001 ?h_mng ?src))
; )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (14-09-11)
 ;We had wasted our journey.I showed them how they should do it.
 (defrule modify_mng
 (declare (salience 700))
 (id-original_word ?id  ?w&our|Our|ours|me|them|we|We|us|My|my)
 ?f0<-(id-HM-source ?id ?h_mng ?src&WSD_root_mng|Default_meaning)
 =>
	(if (eq ?w them) then
		(assert (id-HM-source ?id vaha Word))
	else
		(assert (id-HM-source ?id mEM   Word))
	)
        (retract ?f0)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 ;Added 'Physics_Glossary' in not condition by Roja(31-07-14).Ex: The line connecting the two [charges] defines a [direction] in [space].
 (defrule get_rule_info
 (declare (salience 600))
 (id-HM-source ?id ?hmng ?src&~Physics_Glossary&~Agriculture_Glossary)
 (or (dir_name-file_name-rule_name-id-wsd_root_mng ? ?file_name ?rule_name $?ids ?) (dir_name-file_name-rule_name-id-wsd_word_mng ? ?file_name ?rule_name $?ids ?)(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng ? ?file_name ?rule_name $?ids ?)(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng ? ?file_name ?rule_name $?ids ?))
 ?f0<-(id-HM-source-grp_ids  ?id  ? ?src $?ids)
 =>
	(retract ?f0)
	(bind ?str (str-cat ?src ",rule_name::"  ?rule_name))
 	(printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    "?str" "(implode$ $?ids)")" crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 (defrule get_rule_info1
 (declare (salience 500))
 (id-HM-source ?id ?hmng ?src&WSD_root_mng)
 (default-iit-bombay-shabdanjali-dic.gdbm ?id ? ?hmng)
 ?f0<-(id-HM-source-grp_ids  ?id  ? ?src $?ids)
 =>
        (retract ?f0)
        (bind ?str (str-cat ?src ",rule_name::Default_meaning_for_adjective"))
        (printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    "?str" "(implode$ $?ids)")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 (defrule get_rule_info2
 (declare (salience 400))
 (id-HM-source ?id ?hmng ?src)
 ?f0<-(id-HM-source-grp_ids  ?id  ? ?src $?ids)
 =>
        (retract ?f0)
        (printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    "?src" "(implode$ $?ids)")" crlf)
 )
