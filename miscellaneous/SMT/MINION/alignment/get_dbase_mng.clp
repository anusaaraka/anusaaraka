; This file is added by Shirisha Manju (23-05-12)
; Gets the default hindi meaning for each word from the foll dic's :
; 	1. provisional_PropN_dic.gdbm       2. provisional_word_dic.gdbm
;	3. provisional_root_dic.gdbm	    4. Physics-dictionary.gdbm 
;	5. default_meaning_frm_oldwsd.gdbm  and
;	6. default-iit-bombay-shabdanjali-dic_smt.gdbm 

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
                                    (bind $?grp_ids ?j)
                                    (bind ?flag 0)
                                    else
                                    (bind ?str (str-cat ?str "_" ?k))
                                    (bind $?grp_ids (create$ $?grp_ids ?j)))
                                    (bind ?lkup (gdbm_lookup ?gdbm  ?str))
                                    (if (and (neq (length ?lkup) 0)(neq ?lkup "FALSE") (> (length (create$ $?grp_ids)) 1)) then
					(bind ?str1 ?str)
					(if (neq ?gdbm "Physics-dictionary.gdbm") then
 	                                    (bind ?count 1)
					    (if (neq ?lkup "FALSE") then
					    (while (neq (str-index "#" ?lkup) FALSE)
                                               (if (eq ?count 1) then
                                                   (bind ?mng (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup)))
                                               (if (eq ?count 3) then
                                                    (bind ?cat (explode$ (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup))))
                                               (if (eq ?count 4) then
                                                    (bind ?h_id (explode$ (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup))))
                                               (bind ?count (+ ?count 1))
                                               (bind ?lkup (sub-string (+ (str-index "#" ?lkup) 1) (length ?lkup) ?lkup))
                                               )
                                             )
					else
                                        (bind ?mng ?lkup))
                                        (bind ?mng (remove_character "_" ?mng " "))
                                        (bind ?str1 (remove_character "_" ?str1 " "))
                                        (assert (multi_word_expression-dbase_name-mng (explode$ (lowcase (implode$ ?str1))) ?gdbm ?mng))
                                        (assert (multi_word_expression-grp_ids (explode$ (lowcase (implode$ ?str1))) $?grp_ids))
                                    )
                    )
 )
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (defrule get_eng_word_list
 (declare (salience 1000))
 (id-original_word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 ;As aux ids are grouped in LWG individual word meaning is not necessary [Suggested by Chaitanya Sir (11-08-12)]
 (defrule remove_aux_ids
 (declare (salience 200))
 ?f<-(root-verbchunk-tam-chunkids ? ? ? $?chunk_ids ?head_id)
 (test (neq (length $?chunk_ids) 0))
 ?f1<-(id-original_word ?id ?word)
 ?f2<-(id-root ?id ?root)
 (test (member$ ?id $?chunk_ids))
 =>
	(retract ?f1 ?f2)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (defrule chk_for_mwe
 (declare (salience 60))
 ?f<-(English-list $?Eng_list)
  =>
; 	(mwe_lookup "Physics-dictionary.gdbm" 1 $?Eng_list)
 ;	(mwe_lookup "Physics-dictionary.gdbm" 2 $?Eng_list)
        (mwe_lookup "phy_eng_multi_word_dic.gdbm" 1 $?Eng_list)
        (mwe_lookup "acronyms-common_noun_compounds.gdbm" 1 $?Eng_list)
        (mwe_lookup "named_entities.gdbm" 1 $?Eng_list)
        (mwe_lookup "proper_noun-common_noun_compounds.gdbm" 1 $?Eng_list)
        (mwe_lookup "multi_word_expressions.gdbm" 1 $?Eng_list)
        (mwe_lookup "multi_word_expressions.gdbm" 2 $?Eng_list)
 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 (deffunction print_dic_mng(?gdbm ?word ?root ?new_mng)
	(bind ?count 0)
	(bind ?word (string-to-field ?word))
        (bind ?root (string-to-field ?root))
        (bind ?gdbm (string-to-field ?gdbm))
        (bind ?new_mng1 (create$))
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1))
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root ?gdbm ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                      (bind ?count (+ ?count 1))
                      (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root ?gdbm ?new_mng1))
         )

 )
 ;--------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi
 ;These laws can be derived from [Newton's] laws of motion in mechanics. ;ina niyamoM ko yAMwrikI meM nyUtana ke gawi ke niyamoM se vyuwpanna kiyA jA sakawA hE. ;here morph doesn't has entry for word Newton's as PropN, 
 (deffunction dic_lookup(?gdbm ?id ?word ?root ?cat)
	     (bind ?word (implode$ (create$ ?word)))
	     (bind ?root (implode$ (create$ ?root)))
	    ; (bind ?new_mng (create$))
	     (bind ?new_mng "")

	     (if (neq (gdbm_lookup ?gdbm ?root) "FALSE") then 
	;	      (printout t "1st If con" crlf)
		      (bind ?rt_mng (gdbm_lookup ?gdbm ?root))
 	     	      (if (and (neq ?rt_mng "FALSE") (neq (length ?rt_mng) 0)) then (bind ?new_mng ?rt_mng))
		      (print_dic_mng ?gdbm ?word ?root ?new_mng)
	     else (if (neq (gdbm_lookup ?gdbm ?word) "FALSE") then 
	;	      (printout t "2nd If con" crlf)
		      (bind ?wrd_mng (gdbm_lookup ?gdbm ?word))
                      (if (and (neq ?wrd_mng "FALSE") (neq (length ?wrd_mng) 0)) then (bind ?new_mng ?wrd_mng))
		       (print_dic_mng ?gdbm ?word ?root ?new_mng)
	     else (if (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s") then
	;		(printout t "3rd If con" crlf)
                        (bind ?word (string-to-field (sub-string 1 (- (length ?word) 2) ?word)))
                        (bind ?apos_mng (gdbm_lookup ?gdbm ?word))
             		(if (and (neq ?apos_mng "FALSE") (neq (length ?apos_mng) 0)) then (bind ?new_mng ?apos_mng))
		        (print_dic_mng ?gdbm ?word ?root ?new_mng)
             else (if  (and (eq ?id 1)(eq (upcase (sub-string 1 1 ?root)) (sub-string 1 1 ?root))(eq ?cat PropN)) then
	;		(printout t "4th If con" crlf)
                        (bind ?str (lowcase (sub-string 1 1 ?root)))
             		(bind ?n_root (str-cat ?str (sub-string 2 (length ?root)  ?root)))
		        (bind ?n_rt_mng (gdbm_lookup ?gdbm  ?n_root))
             		(if (and (neq ?n_rt_mng "FALSE") (neq (length ?n_rt_mng) 0)) then (bind ?new_mng ?n_rt_mng))
                        (print_dic_mng ?gdbm ?word ?root ?new_mng)
	     ))))
 )
 ;--------------------------------------------------------------------------------------------------------
 (defrule get_mng_from_all_dic
 (declare (salience 150))
 (id-original_word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 =>

		(dic_lookup "provisional_word_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "provisional_root_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "provisional_PropN_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "default_meaning_frm_oldwsd.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "numbers_dic.gdbm" ?id ?word ?root ?cat)
		(dic_lookup "inferred_dic.gdbm" ?id ?word ?root ?cat)
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
 ; get mng from physics dic with same category
 (defrule get_mng_from_phy_dic
 (declare (salience 140))
 ?f0<-(id-original_word ?id ?word)
 (id-root ?id ?rt)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?rt "_" ?cat)) "FALSE"))
 =>
        (bind ?mng (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?rt "_" ?cat)))
        (if (neq ?mng "FALSE") then
		(print_dic_mng phy_dictionary.gdbm ?word ?rt ?mng)
		(retract ?f0)
        )
 )
 ;--------------------------------------------------------------------------------------------------------
 ; get mng from physics dic with different category
 (defrule get_mng_from_phy_dic1
 (declare (salience 130))
 ?f0<-(id-original_word ?id ?word)
 (id-root ?id ?rt)
 (id-cat_coarse ?id ?cat)
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?rt "_" ?cat1)) "FALSE"))
 =>
        (bind ?mng (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?rt "_" ?cat1)))
        (if (neq ?mng "FALSE") then
                (print_dic_mng phy_dictionary.gdbm ?word ?rt ?mng)
		(retract ?f0)
        )
 )
 ;--------------------------------------------------------------------------------------------------------
 ; get mng from physics dic with different category and with lowcase root
 (defrule get_mng_from_phy_dic2
 (declare (salience 120))
?f0<-(id-original_word ?id ?word)
 (id-root ?id ?rt)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat (lowcase ?rt) "_" ?cat1)) "FALSE"))
 =>
        (bind ?mng (gdbm_lookup "phy_dictionary.gdbm" (str-cat (lowcase ?rt) "_" ?cat1)))
	(if (neq ?mng "FALSE") then
                (print_dic_mng phy_dictionary.gdbm ?word ?rt ?mng)
		(retract ?f0)
        )
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
                (bind ?tam (implode$ (create$ ?tam)))
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
                        (assert (e_tam-id-dbase_name-mng (explode$ ?tam) ?count hindi_tam_dictionary ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                        (bind ?count (+ ?count 1))
                        (assert (e_tam-id-dbase_name-mng (explode$ ?tam) ?count hindi_tam_dictionary ?new_mng1))
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
