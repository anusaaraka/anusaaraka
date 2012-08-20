; This file is added by Shirisha Manju (23-05-12)
; Gets the default hindi meaning for each word from the foll dic's :
; 	1. provisional_PropN_dic.gdbm       2. provisional_word_dic.gdbm
;	3. provisional_root_dic.gdbm	    4. Physics-dictionary.gdbm 
;	5. default_meaning_frm_oldwsd.gdbm  and
;	6. default-iit-bombay-shabdanjali-dic_smt.gdbm 

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
 (deffunction mwe_lookup(?gdbm ?rank $?Eng_sen)
 (if (eq 2 ?rank) then (bind $?Eng_sen (explode$ (lowcase (implode$ (create$ $?Eng_sen))))))
 ;(printout t $?Eng_sen ?gdbm "  " ?rank crlf)
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
                                        (assert (multi_word_expression-dbase_name-mng (explode$ (lowcase (implode$ ?str1))) Physics_dictionary_gdbm ?mng))
                                        (assert (multi_word_expression-grp_ids (explode$ (lowcase (implode$ ?str1))) $?grp_ids))
                                    )
                    )
 )
 )
;--------------------------------------------------------------------------------------------------------
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

; ;These laws can be derived from [Newton's] laws of motion in mechanics. 
; ;ina niyamoM ko yAMwrikI meM nyUtana ke gawi ke niyamoM se vyuwpanna kiyA jA sakawA hE.
; ;here morph doesn't has entry for word Newton's as PropN, so for 
; (defrule modify_PropN
; (declare (salience 900))
; (id-cat_coarse ?id PropN)
; ?f<-(id-root ?id ?root)
; ?f1<-(id-original_word ?id ?root)
; (test (eq (sub-string (- (length ?root) 1) (length ?root) ?root) "'s"))
; =>
;	(retract ?f ?f1)
;	(bind ?root (string-to-field (sub-string 1 (- (length ?root) 2) ?root)))
;	(assert (id-root ?id ?root))	
;	(assert (id-original_word ?id ?root))	
; )
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
 (defrule chk_for_mwe
 (declare (salience 60))
 ?f<-(English-list $?Eng_list)
  =>
 	(mwe_lookup "Physics-dictionary.gdbm" 1 $?Eng_list)
 	(mwe_lookup "Physics-dictionary.gdbm" 2 $?Eng_list)
        (mwe_lookup "acronyms-common_noun_compounds.gdbm" 1 $?Eng_list)
        (mwe_lookup "named_entities.gdbm" 1 $?Eng_list)
        (mwe_lookup "proper_noun-common_noun_compounds.gdbm" 1 $?Eng_list)
        (mwe_lookup "multi_word_expressions.gdbm" 1 $?Eng_list)
        (mwe_lookup "multi_word_expressions.gdbm" 2 $?Eng_list)
 )
;--------------------------------------------------------------------------------------------------------

(defrule get_mng_from_prov_PropN_dic
(declare (salience 150))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id PropN)
=>
        (bind ?count 0)
	(if (not (numberp ?word)) then
		(bind ?mng (gdbm_lookup "provisional_PropN_dic.gdbm" ?word))
		(if (and (neq ?mng "FALSE") (neq (length ?mng) 0))then
                        (bind ?count (+ ?count 1))
			(assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_PropN_gdbm (explode$ ?mng)))
		else (if (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s") then ;These laws can be derived from [Newton's] laws of motion in mechanics. ;ina niyamoM ko yAMwrikI meM nyUtana ke gawi ke niyamoM se vyuwpanna kiyA jA sakawA hE. mplode$ (create$ ;here morph doesn't has entry for word Newton's as PropN, so for 
			(bind ?word (string-to-field (sub-string 1 (- (length ?word) 2) ?word)))
      			(bind ?mng (gdbm_lookup "provisional_PropN_dic.gdbm" ?word))
			(if (and (neq ?mng "FALSE") (neq (length ?mng) 0))then
                        (bind ?count (+ ?count 1))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_PropN_gdbm (explode$ ?mng)))))
			
        	)
	)
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_prov_word_dic
(declare (salience 150))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id ?cat)
=>
	(bind ?new_mng "")
        (bind ?count 0)
        (if (not (numberp ?word)) then
		(if (neq (gdbm_lookup "provisional_word_dic.gdbm" ?word) "FALSE") then
                	 (bind ?mng (gdbm_lookup "provisional_word_dic.gdbm" ?word))
                	 (if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) then (bind ?new_mng ?mng))
		else (if (neq (gdbm_lookup "provisional_word_dic.gdbm" ?root) "FALSE") then
	                 (bind ?mng (gdbm_lookup "provisional_word_dic.gdbm" ?root))
        	         (if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) then (bind ?new_mng ?mng))
                else (if (and (eq (sub-string (- (length (implode$ (create$ ?word))) 1) (length (implode$ (create$ ?word))) (implode$ (create$ ?word))) "'s") (eq ?cat PropN)) then
                         (bind ?word (string-to-field (sub-string 1 (- (length (implode$ (create$ ?word))) 2) (implode$ (create$  ?word))))) 
		         (bind ?mng (gdbm_lookup "provisional_word_dic.gdbm" ?word))
                         (if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) then (bind ?new_mng ?mng)))))
        )
        (bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1))
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_word_gdbm ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
	        	(bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
	        	(bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                      (bind ?count (+ ?count 1))
                      (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_word_gdbm ?new_mng1))

         )
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_phy_dic
(declare (salience 100))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id ?cat)
=>
        (bind ?count 0)
	(if (not (numberp ?root)) then
	(bind ?new_mng (gdbm_lookup "Physics-dictionary.gdbm" ?root))
        (if (eq ?new_mng "FALSE") then
                (bind ?str  (sub-string 1 1 ?root))
                (bind ?str (upcase ?str))
                (bind ?n_word (str-cat ?str (sub-string 2 (length (implode$ (create$ ?root))) (implode$ (create$ ?root)))))
                (bind ?new_mng (gdbm_lookup "Physics-dictionary.gdbm" ?n_word))
	)
	(if (eq ?new_mng "FALSE") then
	(if (and (eq (sub-string (- (length ?root) 1) (length ?root) ?root) "'s")(eq ?cat PropN)) then
                     (bind ?n_word (string-to-field (sub-string 1 (- (length (implode$ (create$ ?root))) 2) (implode$ (create$ ?root)))))
		     (bind ?new_mng (gdbm_lookup "Physics-dictionary.gdbm" ?n_word)))
        )
        (bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1))
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root Physics_dictionary_gdbm ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "FALSE") then
                        (bind ?count (+ ?count 1))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root Physics_dictionary_gdbm ?new_mng1))
        )
        )

)
;--------------------------------------------------------------------------------------------------------
;Modified by Mahalaxmi  -- Added provisional_root_dic.gdbm  and separated the meanings using ","
(defrule get_mng_from_iit-bombay_shab
(declare (salience 90))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id ?cat)
=>
	(bind ?new_mng "")
        (bind ?count 0)
	(if (not (numberp ?root)) then
                (bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
                (if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) 
			then (bind ?new_mng (str-cat ?new_mng ?mng))
		else (if (and (eq (sub-string (- (length (implode$ (create$ ?root))) 1) (length (implode$ (create$ ?root))) (implode$ (create$ ?root))) "'s")(eq ?cat PropN)) then
			(bind ?n_root (string-to-field (sub-string 1 (- (length (implode$ (create$ ?root))) 2) (implode$ (create$ ?root)))))
			(bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?n_root))
			(if (and (neq ?mng "FALSE") (neq (length ?mng) 0)) then (bind ?new_mng (str-cat ?new_mng ?mng))))
		)
                (bind ?mng1 (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?root))
                (if (and (neq ?mng1 "FALSE") (neq (length ?mng1) 0)) then 
			 (bind ?new_mng (str-cat ?new_mng "/" ?mng1))
		else (if (and (eq (sub-string (- (length (implode$ (create$ ?root))) 1) (length (implode$ (create$ ?root))) (implode$ (create$ ?root))) "'s")(eq ?cat PropN)) then
                        (bind ?n_root (string-to-field (sub-string 1 (- (length (implode$ (create$ ?root))) 2) (implode$ (create$ ?root)))))
                        (bind ?mng1 (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?n_root))
                        (if (and (neq ?mng1 "FALSE") (neq (length ?mng1) 0)) then (bind ?new_mng (str-cat ?new_mng ?mng1))))
                )
                (bind ?mng2 (gdbm_lookup "provisional_root_dic.gdbm" ?root))
		(if (and (neq ?mng2 "FALSE") (neq (length ?mng2) 0)) then 
			 (bind ?new_mng (str-cat ?new_mng "/" ?mng2))
		else (if (and (eq (sub-string (- (length (implode$ (create$ ?root))) 1) (length (implode$ (create$ ?root))) (implode$ (create$ ?root))) "'s")(eq ?cat PropN)) then
                        (bind ?n_root (string-to-field (sub-string 1 (- (length (implode$ (create$ ?root))) 2) (implode$ (create$ ?root)))))
                        (bind ?mng2 (gdbm_lookup "provisional_root_dic.gdbm" ?n_root))
                        (if (and (neq ?mng2 "FALSE") (neq (length ?mng2) 0)) then (bind ?new_mng (str-cat ?new_mng ?mng2))))
		)
        )
	(bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1)) 
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root root_gdbms ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
		        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (if (neq ?new_mng "") then
                        (bind ?count (+ ?count 1))
		        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root root_gdbms ?new_mng1))
        )
)
;--------------------------------------------------------------------------------------------------------
(defrule check_for_single_tam
(declare (salience 90))
(root-verbchunk-tam-chunkids ? ? tam_to_be_decided $?chunkids)
=>
	(assert (get_tam_mng_for s))
	(assert (get_tam_mng_for ed))
)

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
