; This file is added by Shirisha Manju (23-05-12)
; Gets the default hindi meaning for each word from the foll dic's :
; 	Physics-dictionary.gdbm , default-iit-bombay-shabdanjali-dic_smt.gdbm  and   default_meaning_frm_oldwsd.gdbm

(defrule get_mng_from_phy_dic
(declare (salience 100))
(id-original_word ?id ?word)
(id-root ?id ?root)
=>
	(if (not (numberp ?root)) then
	(bind ?mng (string-to-field (gdbm_lookup "Physics-dictionary.gdbm" ?word)))
;	(printout t ?mng "111" crlf)
        (if (eq ?mng FALSE) then
                (bind ?str  (sub-string 1 1 ?word))
                (bind ?str (upcase ?str))
                (bind ?n_word (str-cat ?str (sub-string 2 (length ?word) ?word)))
                (bind ?mng (string-to-field (gdbm_lookup "Physics-dictionary.gdbm" ?n_word)))
;		 (printout t ?mng "if" crlf)
        )
	(if (neq ?mng FALSE) then
		(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root Physics_dictionary_gdbm ?mng))
	)
	)
)
;--------------------------------------------------------------------------------------------------------
(defrule get_mng_from_iit-bombay_shab
(declare (salience 90))
(id-original_word ?id ?word)
(id-root ?id ?root)
?f0<-(meaning_to_be_decided ?id)
=>
	(bind ?new_mng "")
	(if (not (numberp ?root)) then
        	(bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
        	(bind ?slh_index (str-index "/" ?mng))
        	(if (neq ?slh_index FALSE) then
                	(while (neq ?slh_index FALSE)
                        	(bind ?new_mng (str-cat ?new_mng (sub-string 1 (- ?slh_index 1) ?mng) " "))
                        	(bind ?mng (sub-string (+ ?slh_index 1) (length ?mng) ?mng))
                        	(bind ?slh_index (str-index "/" ?mng))
                	)
                	(bind ?new_mng (str-cat " " ?new_mng ?mng))
        	else
                	(bind ?new_mng ?mng)
        	)
		(if (neq ?new_mng "FALSE") then
			(bind $?default_mngs (explode$ ?new_mng))
		else	(bind $?default_mngs (create$ ))
		)
        	(bind ?a (string-to-field (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?root)))
        	(if (neq ?a FALSE) then
                	(bind $?default_mngs (create$ $?default_mngs ?a))
        	)
       		(if (and (neq $?default_mngs "FALSE") (neq (length  $?default_mngs) 0))then
                	(retract ?f0)
                	(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root iit-bombay_and_old_wsd_gdbms $?default_mngs))
        	)
	)
)
;--------------------------------------------------------------------------------------------------------
(defrule rm_repeated_mng
(declare (salience 85))
?f0<-(id-org_wrd-root-dbase_name-mng ?id ?word ?root iit-bombay_and_old_wsd_gdbms  $?w ?mng $?w1 ?mng $?w2)
=>
	(retract ?f0)
	(assert (id-org_wrd-root-dbase_name-mng ?id ?word ?root iit-bombay_and_old_wsd_gdbms  $?w ?mng $?w1 $?w2))
)
;--------------------------------------------------------------------------------------------------------
;(defrule merge_mng
;(declare (salience 80))
;(id-org_wrd-root-dbase_name-mng ?id ?word ?root Physics_dictionary_gdbm  ?mng)
;(id-org_wrd-root-dbase_name-mng ?id ?word ?root iit-bombay_and_old_wsd_gdbms $?default_mngs)
;(not (id_modified ?id))
;=>
;	(bind $?default_mngs (create$ ?mng $?default_mngs))
;	(assert (id-org_wrd-root-mng ?id ?word ?root $?default_mngs))
;	(assert (id_modified ?id))
;)
;;--------------------------------------------------------------------------------------------------------
;(defrule get_mng
;(declare (salience 70))
;?f0<-(id-org_wrd-root-dbase_name-mng ?id ?word ?root ? $?default_mngs)
;=>
;	(retract ?f0)
;	(assert (id-org_wrd-root-mng ?id ?word ?root $?default_mngs))
;)
;;--------------------------------------------------------------------------------------------------------
;
;(run)
