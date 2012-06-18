 (defrule delete@in_hmng
 (declare (salience 20))
 ?f0<-(id-HM-source ?id ?mng transliterate_mng)
 (test (neq (str-index "@" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
	(bind ?mng (string-to-field (sub-string 8 (- (length ?mng) 6) ?mng)))
        (assert (id-HM-source ?id ?mng Original_word))
 )
 ;---------------------------------------------------------------------------------------------
 (defrule delete@in_hmng1
 (declare (salience 20))
 ?f0<-(id-HM-source ?id ?mng Original_word)
 (test (neq (str-index "@" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
        (bind ?mng (string-to-field (sub-string 2 (length ?mng) ?mng)))
        (assert (id-HM-source ?id ?mng Original_word))
 )
 ;---------------------------------------------------------------------------------------------
 (defrule get_wx
 (declare (salience 10))
 (id-HM-source ?id ?mng Original_word)
 (test (neq (numberp ?mng) TRUE))
 (id-word ?id ?word)
 ?f0<-(E_word-wx_word  ?word	?wx_word)
 =>
	(retract ?f0)
	(assert (word-wx_word  ?mng ?wx_word))
 )
 ;---------------------------------------------------------------------------------------------
 (defrule get_agrep
 ?f<-(word-wx_word ?mng ?wx_word)
 =>
	(system "tr ' ' '\\n' < manual_hindi_sen.dat > man_sen_one_word_per_line")
	(system "sed  '1d' man_sen_one_word_per_line | sed '$d' > man_sen_one_word_per_line_out")
	(system "agrep -B -y " ?wx_word " man_sen_one_word_per_line_out > agrep_match 2> agrep_error")
	(system "cut -d ' ' -f6 < agrep_error > agrep_count")
	(open "agrep_count" fp "r")
	(open "agrep_match" fp1 "r")
	(bind ?man_wx (read fp1))
        (bind ?err (read fp))
	(if (and (eq ?err EOF) (neq ?man_wx EOF)) then
		(assert (eng_word-man_wx_word ?mng ?man_wx))
	else
	(if (neq ?err EOF) then
		(if  (<= ?err 2) then  
   			(retract ?f)
                        (assert (eng_word-man_wx_word ?mng ?man_wx))
                )
        )
	)         
       (close fp)	
       (close fp1)	
 )
 ;---------------------------------------------------------------------------------------------

