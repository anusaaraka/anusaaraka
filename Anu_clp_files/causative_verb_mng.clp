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
 (assert (dir_name-file_name-rule_name-id-tam_type))
 (assert (dir_name-file_name-rule_name-id-eng_src))
 (assert (id-HM-source-grp_ids))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 )

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
;		(assert (id-HM-source ?vrb_id  ?hmng ?src1))
		(assert (modified_mng ?vrb_id))
	else	;jAzca_kara == jAzca_karavA
		(if (neq (str-index "_" ?h_mng) FALSE) then
                        (bind ?len 0)
                        (bind ?str1 ?h_mng)
                        (bind ?str_len (length ?h_mng))
                        (while (neq (str-index "_" ?h_mng) FALSE)
                                (bind ?index (str-index "_" ?h_mng))
                                (bind ?h_mng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                                (bind ?len (+ ?index ?len))
                        )
                        (bind ?b (gdbm_lookup "causative_verb_mng.gdbm" ?h_mng))
			(if (neq ?b "FALSE") then
                                (retract ?f0)
				(bind ?str2 (sub-string 1 (- (length ?str1) (+ (length ?h_mng)1)) ?str1))
				(bind ?h_mng (explode$ (str-cat ?str2"_"?b)))
				(printout t ?h_mng) 
				(assert (id-HM-source ?causative_vrb_id  ?h_mng ?src))
				(assert (modified_mng ?vrb_id))
			)
		)
  	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-07-16)
 ;Prince Shreyanshkumar urged Adinatha Prabhu to accept [sugar cane juice] for ending the fast which he accepted .
 (defrule get_comp3_ids
 (declare (salience 711))
 (Head-Level-Mother-Daughters  ?  ?  ?  ?NN1 ?NN2 ?NN3)
 (and (Node-Category ?NN1 NN) (Node-Category ?NN2 NNS|NN)(Node-Category ?NN3 NNS|NN))
 (Head-Level-Mother-Daughters  ?  ?  ?NN1  ?id)
 (Head-Level-Mother-Daughters  ?  ?  ?NN2  ?id1)
 (Head-Level-Mother-Daughters  ?  ?  ?NN3  ?id2)
 ?f0<-(id-HM-source ?id ?mng ?)
 ?f1<-(id-HM-source ?id1 ?mng1 ?)
 ?f2<-(id-HM-source ?id2 ?mng2 ?s&WSD_root_mng|Default_meaning)
 (id-original_word ?id ?w)
 (id-original_word ?id1 ?w1)
 (id-original_word ?id2 ?w2)
 =>
	(retract ?f0 ?f1 ?f2)
	(assert (id-HM-source ?id -  NN_NN_compound_rule))
	(assert (id-HM-source ?id1 -  NN_NN_compound_rule))
	(if (eq ?mng -) then
	        (bind ?n_mng (string-to-field (str-cat ?mng1"_"?mng2)))
		(assert (id-comp_mng ?id2 ?id1 ?id2))
	else
	        (bind ?n_mng (string-to-field (str-cat ?mng"_"?mng1"_"?mng2)))
		(assert (id-comp_mng ?id2 ?id ?id1 ?id2))
	)
	(assert (id-HM-source ?id2 ?n_mng NN_NN_compound_rule))
;	(printout t "Warning: Compound Meaning is missing for:	" ?w " "?w1" "?w2 crlf)
        (bind ?n_w (string-to-field (str-cat ?w "_" ?w1"_"?w2)))
	(printout t "suggested_compound" ?n_w"	"?n_mng crlf)
	(assert (id-comp_ids ?id2 ?id ?id1 ?id2))
 )	
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (06-02-15) Suggested by Chaitanya Sir
 ;He is solving the problems in the [chapter sets].
 ;Trans Maldivian is one of them which has 20 [sea planes].
 (defrule get_comp2_ids
 (declare (salience 710))
 ?f<-(Head-Level-Mother-Daughters  ? ? ?mot $? ?NN ?NNS)
 (and (Node-Category ?NN NN) (Node-Category ?NNS NNS|NN))
 (Head-Level-Mother-Daughters  ? ?  ?NN  ?id)
 (Head-Level-Mother-Daughters  ? ?  ?NNS  ?id1)
 ?f0<-(id-HM-source ?id ?mng ?s&WSD_root_mng|Default_meaning)
 ?f1<-(id-HM-source ?id1 ?mng1 ?s1&WSD_root_mng|Default_meaning)
 (id-original_word ?id ?w)
 (id-original_word ?id1 ?w1)
 =>
        (retract ?f ?f0 ?f1)
	(assert (id-HM-source ?id -  NN_NN_compound_rule))
        (bind ?n_mng (string-to-field (str-cat ?mng "_" ?mng1)))
	(assert (id-HM-source ?id1 ?n_mng NN_NN_compound_rule))
;	(printout t "Warning: Compound Meaning is missing for:  " ?w " "?w1 crlf)
        (bind ?n_w (string-to-field (str-cat ?w"_"?w1)))
	(printout t "suggested_compound" ?n_w"	"?n_mng crlf)
	(assert (id-comp_mng ?id1 ?id ?id1 ))
	(assert (id-comp_ids ?id1 ?id ?id1 ))
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
 ;Added 'physics_Glossary' in not condition by Roja(31-07-14).Ex: The line connecting the two [charges] defines a [direction] in [space].
 (defrule get_rule_info
 (declare (salience 600))
 (id-HM-source ?id ?hmng ?src&~physics_Glossary&~agriculture_Glossary&~social_science_Glossary)
 (or (dir_name-file_name-rule_name-id-wsd_root_mng ?dir_name ?file_name ?rule_name $?ids ?) (dir_name-file_name-rule_name-id-wsd_word_mng ?dir_name ?file_name ?rule_name $?ids ?)(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng ?dir_name ?file_name ?rule_name $?ids ?)(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng ?dir_name ?file_name ?rule_name $?ids ?))
 ?f0<-(id-HM-source-grp_ids  ?id  ? ?src $?ids)
 (test (neq (integerp (member$ ?id $?ids)) FALSE))
 =>
	(retract ?f0)
	(if (eq (str-index "provisional_wsd_rules" ?dir_name) FALSE) then
		(bind ?str (str-cat ?src ",rule_name::"  ?rule_name))
	else
		(bind ?str (str-cat "Prov_"?src ",rule_name::"  ?rule_name))
	)
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
        (bind ?str (str-cat "Default_meaning_for_adjective"))
        (printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    "?str" "(implode$ $?ids)")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 (defrule get_r_name_for_generated_comp
 (declare (salience 450))
 ?f0<-(id-comp_mng ?h $?p ?id $?p1)
 (id-HM-source ?id ? NN_NN_compound_rule)
 ?f1<-(id-HM-source-grp_ids ? ? ?s $? ?id $?)
 (or (dir_name-file_name-rule_name-id-wsd_root_mng ? ? ?rule_name $?ids ?) (dir_name-file_name-rule_name-id-wsd_word_mng ? ? ?rule_name $?ids ?))
 (test (neq (integerp (member$ ?id $?ids)) FALSE))
 =>
	(retract ?f0 ?f1)
	(bind ?srcs (create$ Database_compound_phrase_root_mng Database_compound_phrase_word_mng provisional_Database_compound_phrase_root_mng provisional_Database_compound_phrase_word_mng))
	(if (eq (integerp (member$ ?s ?srcs)) FALSE) then
		(assert (id-comp_mng ?h $?p ?rule_name $?p1))
	else
		(assert (id-comp_mng ?h $?p ?s $?p1))
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 (defrule get_r_name_for_generated_comp1
 (declare (salience 440))
 ?f0<-(id-comp_mng ?h $?p ?id $?p1)
 ?f1<-(id-HM-source-grp_ids ? ? ?s $? ?id $?)
 =>
        (retract ?f0 ?f1)
	(assert (id-comp_mng ?h $?p ?s $?p1))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 ;Trans Maldivian is one of them which has 20 sea planes.
 ;(id-HM-source-grp_ids  11  samuxra_samawala   NN_NN_compound_rule::Default_meaning,plane3 10 11)
 (defrule get_info_for_generated_compound
 (declare (salience 430))
 ?f<-(id-comp_mng ?h $?r)
 ?f1<-(id-comp_ids ?h $?ids)
 (id-HM-source ?h ?mng NN_NN_compound_rule)
 =>
	(retract ?f ?f1)
  	(bind ?s (implode$ (remove_character " " (implode$ (create$ $?r)) ",")))	
	(bind ?len (length $?ids))
	(if (eq ?len 2) then
		(bind ?str (str-cat "NN_NN_compound_rule::" ?s))
	else
		(bind ?str (str-cat "NN_NN_NN_compound_rule::" ?s))
	)
		
	(printout ?*h_mng_file* "(id-HM-source-grp_ids  "?h"  "?mng"   "?str" " (implode$ $?ids) ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (31-05-14)
 (defrule get_rule_info2
 (declare (salience 400))
 (id-HM-source ?id ?hmng ?src)
 ?f0<-(id-HM-source-grp_ids  ?id  ? ? $?ids)
 =>
        (retract ?f0)
        (printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    "?src" "(implode$ $?ids)")" crlf)
 )

 ;Added by Shirisha Manju (12-08-16)
 (defrule get_template_rule_info
 (declare (salience 400))
 (id-HM-source ?id ?hmng Template_root_mng)
 =>
        (printout ?*h_mng_file* "(id-HM-source-grp_ids  " ?id "  "?hmng"    Template_root_mng " ?id ")" crlf)
 )

