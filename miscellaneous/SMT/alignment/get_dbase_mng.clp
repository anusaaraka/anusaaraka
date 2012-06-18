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
;                        (bind ?new_index (+ ?index (length ?replace_char)))
;                        (printout t ?new_index"----"?index"---"?str crlf)
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
 ;                       (printout t ?new_index"----"?index"---"?str crlf)
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)

(defrule get_mng_from_prov_PropN_dic
(declare (salience 150))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id PropN)
=>
        (bind ?count 0)
	(if (not (numberp ?word)) then
		(bind ?mng (gdbm_lookup "provisional_PropN_dic.gdbm" ?word))
		(if (neq ?mng "FALSE") then
                        (bind ?count (+ ?count 1))
			(assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_PropN_gdbm (explode$ ?mng)))
        	)
	)
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_prov_word_dic
(declare (salience 150))
(id-original_word ?id ?word)
(id-root ?id ?root)
=>
	(bind ?new_mng "")
        (bind ?count 0)
        (if (not (numberp ?word)) then
                (bind ?mng (gdbm_lookup "provisional_word_dic.gdbm" ?word))
                (if (neq ?mng "FALSE") then (bind ?new_mng (str-cat ?new_mng "/" ?mng)))
        )
        (bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1))
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_word_gdbm ?new_mng1))
                        (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
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
                      (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
                      (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root provisional_word_gdbm ?new_mng1))

         )
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_phy_dic
(declare (salience 100))
(id-original_word ?id ?word)
(id-root ?id ?root)
=>
        (bind ?count 0)
	(if (not (numberp ?root)) then
	(bind ?mng (string-to-field (gdbm_lookup "Physics-dictionary.gdbm" ?root)))
        (if (eq ?mng FALSE) then
                (bind ?str  (sub-string 1 1 ?root))
                (bind ?str (upcase ?str))
                (bind ?n_word (str-cat ?str (sub-string 2 (length ?root) ?root)))
                (bind ?mng (gdbm_lookup "Physics-dictionary.gdbm" ?n_word))
        )
	(if (neq ?mng "FALSE") then
                (bind ?count (+ ?count 1))
		(assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root Physics_dictionary_gdbm (string-to-field ?mng)))
	)
	)
)
;--------------------------------------------------------------------------------------------------------
;Modified by Mahalaxmi  -- Added provisional_root_dic.gdbm  and separated the meanings using ","
(defrule get_mng_from_iit-bombay_shab
(declare (salience 90))
(id-original_word ?id ?word)
(id-root ?id ?root)
=>
	(bind ?new_mng "")
        (bind ?count 0)
	 (if (not (numberp ?root)) then
                (bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
                (if (neq ?mng "FALSE") then (bind ?new_mng (str-cat ?new_mng ?mng)))
                (bind ?mng1 (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?root))
                (if (neq ?mng1 "FALSE") then (bind ?new_mng (str-cat ?new_mng "/" ?mng1)))
                (bind ?mng2 (gdbm_lookup "provisional_root_dic.gdbm" ?root))
                (if (neq ?mng2 "FALSE") then (bind ?new_mng (str-cat ?new_mng "/" ?mng2)) )
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
                        (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
                        (assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root root_gdbms ?new_mng1))
                        ;(bind ?new_mng1 (remove_character "Mb" (implode$ (create$ ?new_mng1)) "mb"))
                        ;(assert (id-org_wrd-root-dbase_name-mng ?count ?word ?root root_gdbms ?new_mng1))
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
                        (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
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
                (if (neq ?mng "FALSE") then (bind ?new_mng (str-cat ?new_mng ?mng)))
		(bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?count (+ ?count 1)) 
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
                        (assert (e_tam-id-dbase_name-mng (explode$ ?tam) ?count hindi_tam_dictionary ?new_mng1))
                        (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
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
                        (bind ?new_mng1 (remove_character "Z" (implode$ (create$ ?new_mng1)) ""))
                        (assert (e_tam-id-dbase_name-mng (explode$ ?tam) ?count hindi_tam_dictionary ?new_mng1))
        )
)
;--------------------------------------------------------------------------------------------------------
;Modified by Mahalaxmi
;(defrule rm_repeated_mng
;(declare (salience 86))
;?f0<-(id-org_wrd-root-dbase_name-mng ?id ?word ?root ?gdbm  $?w , ?mng  $?w1  ?mng , $?w2)
;(test (and (eq (nth$ 1  $?w1) ,) (eq (nth$ (length  $?w1) $?w1) ,)))
;(test (neq ?mng ,))
;=>
;        (retract ?f0)
;        (assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root ?gdbm $?w , ?mng  $?w1 $?w2))
;)
;--------------------------------------------------------------------------------------------------------



