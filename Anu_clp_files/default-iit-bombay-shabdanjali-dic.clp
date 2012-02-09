(defrule default-iit-bombay-shabdanjali-dic
(declare (salience 100))
(id-root ?id ?root)
=>
        (if (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic_firefox.gdbm" ?root) "FALSE") then
                 (bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_firefox.gdbm" ?root))
                 (bind ?index (str-index "::" ?mng))
                 (bind ?rm_mng (sub-string (+ ?index 2)(length ?mng)  ?mng))
                 (if (and (str-index "/" ?rm_mng) (str-index "@@@" ?rm_mng)) then
                     (bind ?slh_len (str-index "/" ?rm_mng))
                     (bind ?at_len (str-index "@@@" ?rm_mng))
                     (if (> ?slh_len  ?at_len) then (bind ?index1 ?at_len) else (bind ?index1 ?slh_len))
                     (bind ?def_mng (sub-string 1 (- ?index1 1) ?rm_mng))
		     (bind ?n_mng1 (sub-string (+ ?index1 1) (length ?rm_mng) ?rm_mng))
        	     (if (or (neq (str-index "/" ?n_mng1) FALSE)(neq (str-index "@@@" ?n_mng1) FALSE)) then 
		     (bind ?def_mng (str-cat ?def_mng " ..."))) 
                  else (if (numberp (str-index "/" ?rm_mng)) then
                       (bind ?index1 (str-index "/" ?rm_mng))
                       (bind ?def_mng (sub-string 1 (- ?index1 1) ?rm_mng))
                       (bind ?n_mng1 (sub-string (+ ?index1 1) (length ?rm_mng) ?rm_mng))
                       (if (or (> (length ?n_mng1) 1) (neq (str-index "/" ?n_mng1) FALSE)(neq (str-index "@@@" ?n_mng1) FALSE)) then
                       (bind ?def_mng (str-cat ?def_mng " ...")))
                  else
                  (bind ?def_mng ?rm_mng)
                  ))

                 	(assert (id-default_mng-iit_bombay_shabdanjali_dic_mng  ?id  ?def_mng  ?mng))
	
         else
                 (assert (id-default_mng-iit_bombay_shabdanjali_dic_mng  ?id  -  -))
		 (printout t "Word not found" crlf)
         )
)
