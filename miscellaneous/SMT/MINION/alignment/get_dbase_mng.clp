; This file is added by Shirisha Manju (23-05-12)
; Gets the default hindi meaning for each word from the foll dic's :
; 	1. provisional_PropN_dic.gdbm       2. provisional_word_dic.gdbm
;	3. provisional_root_dic.gdbm	    4. Physics-dictionary.gdbm 
;	5. default_meaning_frm_oldwsd.gdbm  and
;	6. default-iit-bombay-shabdanjali-dic_smt.gdbm 

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))



 ;Added by Mahalaxmi
 (deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str)) 
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;--------------------------------------------------------------------------------------------------------
 ; Modified by Shirisha Manju to add the argument dictionary type
 ;Added by Mahalaxmi
 (deffunction print_dic_mng(?gdbm ?word ?root ?new_mng ?dic_type $?grp_ids)
        (bind ?count 0)
        (bind ?word (string-to-field ?word))
	(if (eq (numberp ?word) FALSE) then
		(bind ?word (remove_character "_" ?word " "))
	)
        (bind ?root (string-to-field ?root))
        (bind ?gdbm (string-to-field ?gdbm))
        (bind ?new_mng1 (create$))
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1))
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?org_mng (string-to-field (sub-string 1 (- ?slh_index 1) ?new_mng)))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (if (eq ?dic_type multi) then
                                (assert (id-multi_word_expression-dbase_name-mng ?count ?word ?gdbm ?new_mng1))
                                (assert (database_info (meaning ?org_mng)(components ?new_mng1) (database_name ?gdbm)(database_type multi)(group_ids $?grp_ids)))
                        else
                                (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root ?gdbm ?new_mng1))
                                (assert (database_info (meaning ?org_mng)(components ?new_mng1)(root ?root)(database_name ?gdbm)(database_type single)(group_ids $?grp_ids)))
                        )
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?org_mng (string-to-field (str-cat (sub-string 1 (length ?new_mng) ?new_mng))))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                (bind ?count (+ ?count 1))
                (if (eq ?dic_type multi) then
                        (assert (id-multi_word_expression-dbase_name-mng ?count ?word ?gdbm ?new_mng1))
                        (assert (database_info (meaning ?org_mng)(components ?new_mng1) (database_name ?gdbm)(database_type multi)(group_ids $?grp_ids)))
                else
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root ?gdbm ?new_mng1))
           	       (assert (database_info (meaning ?org_mng)(components ?new_mng1)(root ?root)(database_name ?gdbm)(database_type single)(group_ids $?grp_ids)))
 		)
        )
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Modified by Shirisha Manju to remove code related to sharp(#)
 ;Added by Mahalaxmi
 (deffunction mwe_lookup(?gdbm ?rank $?Eng_sen)
 	(if (eq 2 ?rank) then (bind $?Eng_sen (explode$ (lowcase (implode$ (create$ $?Eng_sen))))))
 	(bind ?len (length $?Eng_sen))
 	(loop-for-count (?i 1 ?len)
        	(bind ?flag 1)
                (loop-for-count (?j ?i ?len)
                	(bind ?k (nth$ ?j $?Eng_sen))
                        (if (numberp ?k) then (bind ?k (implode$ (create$ ?k))))
                        (if (eq ?flag 1) then
                        	(bind ?str ?k)
                                (bind $?grp_ids ?j)(bind ?flag 0)
                        else
                        	(bind ?str (str-cat ?str "_" ?k))
                                (bind $?grp_ids (create$ $?grp_ids ?j))
			)
                        (bind ?lkup (gdbm_lookup ?gdbm  ?str))
                        (if (and (neq (length ?lkup) 0)(neq ?lkup "FALSE") (> (length (create$ $?grp_ids)) 1)) then
				(bind ?str1 ?str)
        	                (bind ?mng ?lkup)
				(print_dic_mng ?gdbm ?str1 null ?mng multi $?grp_ids)
                               	(bind ?str1 (remove_character "_" ?str1 " "))
                               	(assert (multi_word_expression-grp_ids (explode$ (implode$ ?str1)) $?grp_ids))
                       )
           	)
 	)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-4-13)
 (deffunction get_possible_mngs(?id ?lw ?type)
        (bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?lw))
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
	(bind $?dic_list (create$ $?dic_list ?new_mng1))
        (if (eq ?type left) then
               	(assert (id-left_word-possible_mngs ?id ?lw $?dic_list))
       	else
               	(assert (id-right_word-possible_mngs ?id ?lw $?dic_list))
       	)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 ;As aux ids are grouped in LWG individual word meaning is not necessary [Suggested by Chaitanya Sir (11-08-12)]
; (defrule remove_aux_ids
; (declare (salience 200))
; ?f<-(root-verbchunk-tam-chunkids ? ? ? $?chunk_ids ?head_id)
; (test (neq (length $?chunk_ids) 0))
; ?f1<-(id-original_word ?id ?word)
; ?f2<-(id-root ?id ?root)
; (test (member$ ?id $?chunk_ids))
; =>
;	(retract ?f1 ?f2)
; )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (defrule chk_for_mwe
 (declare (salience 60))
 ?f<-(English_Sen $?Eng_list)
  =>
        (mwe_lookup "eng_phy_multi_word_dic.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_social_science_multi_word_dic.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_acronyms_multi.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_named_entity_multi.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_proper_noun_multi.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_multi_word_dic.gdbm" 1 $?Eng_list)
        (mwe_lookup "eng_multi_word_dic.gdbm" 2 $?Eng_list)
	(mwe_lookup "provisional_multi_word_dic.gdbm" 1 $?Eng_list)
	(mwe_lookup "eng_multi_word_from_iit_bombay_dic.gdbm" 1 $?Eng_list)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Modified by Shirisha Manju to get word mng from all the databases, to get mng from physics dic
 ;Added by Mahalaxmi
 ;These laws can be derived from [Newton's] laws of motion in mechanics. ;ina niyamoM ko yAMwrikI meM nyUtana ke gawi ke niyamoM se vyuwpanna kiyA jA sakawA hE. ;here morph doesn't has entry for word Newton's as PropN, 
 (deffunction dic_lookup(?gdbm ?id ?word ?root ?cat)
	(bind ?word (implode$ (create$ ?word)))
	(bind ?root (implode$ (create$ ?root)))
	(bind ?new_mng "")
	(bind ?wrd_mng (gdbm_lookup ?gdbm ?word))
	(if (and (neq ?wrd_mng "FALSE") (neq (length ?wrd_mng) 0)) then (bind ?new_mng ?wrd_mng)
		(print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
	else  ; to get mng from physics dic
		(bind ?w (str-cat ?word "_" ?cat))
		(bind ?wrd_mng (gdbm_lookup ?gdbm ?w))
		(if (and (neq ?wrd_mng "FALSE") (neq (length ?wrd_mng) 0)) then (bind ?new_mng ?wrd_mng)
                	(print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
		)
	)
	(if (or (eq ?gdbm "physics_dic.gdbm") (eq ?gdbm "social_science_dic.gdbm")) then
		(bind ?w (str-cat ?root "_" ?cat))
                (bind ?wrd_mng (gdbm_lookup ?gdbm ?w))
                (if (and (neq ?wrd_mng "FALSE") (neq (length ?wrd_mng) 0)) then (bind ?new_mng ?wrd_mng)
                        (print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
                )
	)
	(bind ?rt_mng (gdbm_lookup ?gdbm ?root))
	(if (and (neq ?rt_mng "FALSE") (neq (length ?rt_mng) 0)) then (bind ?new_mng ?rt_mng)
		(print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
	else (if (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s") then
		(bind ?word (string-to-field (sub-string 1 (- (length ?word) 2) ?word)))
                (bind ?apos_mng (gdbm_lookup ?gdbm ?word))
             	(if (and (neq ?apos_mng "FALSE") (neq (length ?apos_mng) 0)) then (bind ?new_mng ?apos_mng))
		        (print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
		else (if (and (eq ?id 1)(eq (upcase (sub-string 1 1 ?root)) (sub-string 1 1 ?root))(eq ?cat PropN)) then
                        (bind ?str (lowcase (sub-string 1 1 ?root)))
             		(bind ?n_root (str-cat ?str (sub-string 2 (length ?root)  ?root)))
		        (bind ?n_rt_mng (gdbm_lookup ?gdbm  ?n_root))
			(if (and (neq ?n_rt_mng "FALSE") (neq (length ?n_rt_mng) 0)) then 
				(bind ?new_mng ?n_rt_mng)                      
		  		(print_dic_mng ?gdbm ?word ?root ?new_mng single ?id)
	     		)
	    	     )
	    )
 	)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (08-4-13)
 (defrule get_mng_from_all_dic
 (declare (salience 160))
 ?f0<-(id-root ?id -)
 (id-original_word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (id-word ?id ?w)
 =>
		(retract ?f0)
		(dic_lookup "provisional_word_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "provisional_root_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "provisional_PropN_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "numbers_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "inferred_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "proper_noun_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "physics_dic.gdbm" ?id ?w ?w ?cat)
		(dic_lookup "agriculture_dic.gdbm" ?id ?w ?w ?cat)
		(dic_lookup "social_science_dic.gdbm" ?id ?w ?w ?cat)
		(dic_lookup "wsd_dic.gdbm" ?id ?w ?w ?cat)
 )
 ;--------------------------------------------------------------------------------------------------------
 (defrule get_mng_from_all_dic1
 (declare (salience 155))
 (id-original_word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 =>

		(dic_lookup "provisional_word_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "provisional_root_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "provisional_PropN_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "numbers_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "inferred_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "proper_noun_dic.gdbm" ?id ?word ?word ?cat)
		(dic_lookup "physics_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "agriculture_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "social_science_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "wsd_dic.gdbm" ?id ?word ?root ?cat)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Roja (01-08-12). 
 ;Generating dummy categories.
 (defrule generate_dummy_cat
 (declare (salience 9900))
 (default-cat)
 =>
 (assert (default-cat noun))
 (assert (default-cat verb))
 (assert (default-cat adverb))
 (assert (default-cat adjective))
 (assert (default-cat PropN))
 (assert (default-cat conjunction))
 (assert (default-cat pronoun))
 (assert (default-cat determiner))
 (assert (default-cat wh-adverb))
 (assert (default-cat verbal_noun))
 (assert (default-cat UNDEFINED))
 (assert (default-cat wh-determiner))
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule get_mng_from_all_dic_with_diff_cat
 (declare (salience 150))
 (id-original_word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 =>

                (dic_lookup "provisional_word_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "provisional_root_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "provisional_PropN_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "numbers_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "inferred_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "proper_noun_dic.gdbm" ?id ?word ?word ?cat1)
                (dic_lookup "physics_dic.gdbm" ?id ?word ?root ?cat1)
                (dic_lookup "agriculture_dic.gdbm" ?id ?word ?root ?cat1)
		(dic_lookup "social_science_dic.gdbm" ?id ?word ?root ?cat1)
		(dic_lookup "wsd_dic.gdbm" ?id ?word ?root ?cat1)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (defrule check_for_single_tam
 (declare (salience 90))
 (root-verbchunk-tam-chunkids ? ? tam_to_be_decided $?chunkids)
 =>
	(assert (get_tam_mng_for s))
	(assert (get_tam_mng_for ed))
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (defrule get_mng_for_verb_lwg
 (or (root-verbchunk-tam-chunkids ? ? ?tam $?chunkids)(get_tam_mng_for ?tam))
 (test (neq ?tam tam_to_be_decided))
 =>
	(bind ?new_mng "")
        (bind ?count 0)
                ;(bind ?tam (implode$ (create$ ?tam)))
                (bind ?mng (gdbm_lookup "hindi_tam_dictionary.gdbm" ?tam))
                (if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) then (bind ?new_mng (str-cat ?new_mng ?mng)))
		(bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1)) 
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
                 ;       (bind ?tam (explode$ ?tam))
                        (assert (e_tam-id-dbase_name-mng ?tam ?count hindi_tam_dictionary ?new_mng1))
                        (assert (tam_database_info (e_tam ?tam) (database_name hindi_tam_dictionary) (meaning   ?new_mng1) (components ?new_mng1)))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                        (bind ?count (+ ?count 1))
                  ;      (bind ?tam (explode$ ?tam))
                        (assert (e_tam-id-dbase_name-mng ?tam ?count hindi_tam_dictionary ?new_mng1))
                        (assert (tam_database_info (e_tam ?tam) (database_name hindi_tam_dictionary) (meaning   ?new_mng1)(components ?new_mng1)))
        )
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (3-10-12)
 ;So far so good.
 (defrule get_mng_from_complete_sen_gdbm
 (head_id-sen_mng-g_ids ?id ?mng&~- $?)
 (id-original_word ?id ?word)
 (id-root ?id ?root)
 =>
	(bind ?new_mng (remove_character "_" ?mng " "))
	(bind ?new_mng (remove_character "-" (implode$ (create$ ?new_mng)) " "))
	(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root Complete_sentence.gdbm ?new_mng))
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-4-13)
 (defrule split_hyphenated_word
 (id-original_word ?id  ?word)
 (test (eq (numberp ?word) FALSE))
 (test (neq (str-index "-" ?word) FALSE))
 =>
        (bind ?lw (string-to-field (sub-string 1 (- (str-index "-" ?word) 1) ?word)))
        (bind ?rw (string-to-field (sub-string (+ (str-index "-" ?word) 1) (length ?word) ?word)))
        (assert (left_word ?id ?lw))
        (assert (right_word ?id ?rw))
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-4-13)
 (defrule get_mngs_for_right_word
 ?f0<-(right_word ?id ?rw)
 =>
        (get_possible_mngs ?id ?rw right)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-4-13)
 (defrule get_mngs_for_left_word
 ?f0<-(left_word ?id ?lw)
 =>
        (get_possible_mngs ?id ?lw left)
 )
 ;--------------------------------------------------------------------------------------------------------
