;(load-facts "minion_output.dat")
;(load-facts "multiple_mngs.dat")
(defglobal ?*mul_sen_fp* = mul_sen_fp)

(defrule get_sentence
(declare (salience 10))
?f0<-(hindi_multi_order $?pre ?id $?post)
(id-hnd_mng ?id $?mng)
=>
	(retract ?f0)
	(assert (hindi_multi_order $?pre $?mng $?post))
)

(defrule print_sen
(hindi_multi_order $?sen)
=>
	(printout ?*mul_sen_fp* (implode$ $?sen) crlf)
)

