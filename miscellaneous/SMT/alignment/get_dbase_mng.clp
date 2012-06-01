; This file is added by Shirisha Manju (23-05-12)
; Gets the default hindi meaning for each word from the foll dic's :
; 	1. provisional_PropN_dic.gdbm       2. provisional_word_dic.gdbm
;	3. provisional_root_dic.gdbm	    4. Physics-dictionary.gdbm 
;	5. default_meaning_frm_oldwsd.gdbm  and
;	6. default-iit-bombay-shabdanjali-dic_smt.gdbm 

(defrule get_mng_from_prov_PropN_dic
(declare (salience 150))
(id-original_word ?id ?word)
(id-root ?id ?root)
(id-cat_coarse ?id PropN)
=>
	(if (not (numberp ?word)) then
		(bind ?mng (gdbm_lookup "provisional_PropN_dic.gdbm" ?word))
		(if (neq ?mng "FALSE") then
                	(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root provisional_PropN_dic.gdbm (explode$ ?mng)))
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
        (if (not (numberp ?word)) then
        (bind ?mng (gdbm_lookup "provisional_word_dic.gdbm" ?word)))
	(if (neq ?mng "FALSE") then 
		(bind ?new_mng (str-cat ?new_mng " " ?mng))
	)
	(bind ?new_mng1 "")
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (str-cat ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng) " "))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
                (bind ?new_mng1 (str-cat ?new_mng1 (sub-string 1 (length ?new_mng) ?new_mng)))
                (assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root provisional_word_dic_gdbm (explode$ ?new_mng1)))
       )
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_phy_dic
(declare (salience 100))
(id-original_word ?id ?word)
(id-root ?id ?root)
=>
	(if (not (numberp ?root)) then
	(bind ?mng (string-to-field (gdbm_lookup "Physics-dictionary.gdbm" ?root)))
        (if (eq ?mng FALSE) then
                (bind ?str  (sub-string 1 1 ?root))
                (bind ?str (upcase ?str))
                (bind ?n_word (str-cat ?str (sub-string 2 (length ?root) ?root)))
                (bind ?mng (string-to-field (gdbm_lookup "Physics-dictionary.gdbm" ?n_word)))
        )
	(if (neq ?mng FALSE) then
		(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root Physics_dictionary_gdbm ?mng))
	)
	)
)
;--------------------------------------------------------------------------------------------------------
;Modified by Mahalaxmi  -- Added provisional_root_dic.gdbm 
(defrule get_mng_from_iit-bombay_shab
(declare (salience 90))
(id-original_word ?id ?word)
(id-root ?id ?root)
;?f0<-(meaning_to_be_decided ?id)
=>
	(bind ?new_mng "")
        
	(if (not (numberp ?root)) then
        	(bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
                (if (neq ?mng "FALSE") then (bind ?new_mng (str-cat ?new_mng " " ?mng)))
                (bind ?mng1 (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?root)) 
                (if (neq ?mng1 "FALSE") then (bind ?new_mng (str-cat ?new_mng " " ?mng1)))
                (bind ?mng2 (gdbm_lookup "provisional_root_dic.gdbm" ?root))
                (if (neq ?mng2 "FALSE") then (bind ?new_mng (str-cat ?new_mng " " ?mng2)))
        )
        (bind ?new_mng1 "")
       	(bind ?slh_index (str-index "/" ?new_mng))
       	(if (and (neq (length  ?new_mng) 0)(neq ?slh_index FALSE)) then
               	(while (neq ?slh_index FALSE)
                       	(bind ?new_mng1 (str-cat ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng) " "))
                       	(bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                       	(bind ?slh_index (str-index "/" ?new_mng))
               	)
               	(bind ?new_mng1 (str-cat ?new_mng1 (sub-string 1 (length ?new_mng) ?new_mng)))
                (assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root root_gdbms (explode$ ?new_mng1)))
       )
)
;--------------------------------------------------------------------------------------------------------
(defrule rm_repeated_mng
(declare (salience 85))
?f0<-(id-org_wrd-root-dbase_name-mng ?id ?word ?root root_gdbms  $?w ?mng $?w1 ?mng $?w2)
=>
	(retract ?f0)
	(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root root_gdbms  $?w ?mng $?w1 $?w2))
)
;--------------------------------------------------------------------------------------------------------
;Added by Mahalaxmi
(defrule get_poss_anu_ids_for_man_rt_thr_dic_match
(declare (salience 70))
(id-node-word-root ?man_id ? ?word ?man_root)
(id-org_wrd-root-dbase_name-mng ?id ? ? ? $?w ?man_root $?w1)
=>
	(assert (man_id-word-root-anu_ids ?man_id ?word ?man_root ?id))
)

;--------------------------------------------------------------------------------------------------------
;Added by Mahalaxmi
(defrule get_grp
(declare (salience 60))
?f0<-(man_id-word-root-anu_ids ?man_id ?man_word ?man_root $?ids)
?f<-(man_id-word-root-anu_ids ? ? ?man_root ?id)
(test (eq (member$ ?id $?ids) FALSE))
=>
	(retract ?f ?f0)
	(assert (man_id-word-root-anu_ids ?man_id ?man_word ?man_root $?ids ?id))
)

;--------------------------------------------------------------------------------------------------------
