
 (defglobal ?*rm_adverb-file* = rm_advp_fp)
 (defglobal ?*ID* = 1)

 
 (defrule rm_adverbs
 (id-original_word ?id ?word)
 ?f<-(Current_id ?id)
 =>
	(retract ?f)
  	(if (numberp ?word) then 
		(bind ?*ID* (+ ?*ID* 1))
	else
		(bind  ?advp (gdbm_lookup "adverbs_list.gdbm" ?word))
		(if (eq ?advp "FALSE") then
			(printout ?*rm_adverb-file* "(id_w_adv-word " ?*ID* " " ?word ")" crlf)
			(bind ?*ID* (+ ?*ID* 1))
    		)
	)
	(bind ?id (+ ?id 1))
	(assert (Current_id ?id))  
 )

