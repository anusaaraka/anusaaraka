 ;This file is written by Shirisha Manju

 (defglobal ?*mul_word_file* = m_fp)


 (deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;------------------------------------------------------------------------------------------------------
 (deffunction mwe_lookup(?gdbm $?man_sen)
 	(bind ?len (length $?man_sen))
 	(loop-for-count (?i 1 ?len)
        	(bind ?flag 1)
                (loop-for-count (?j ?i ?len)
                	(bind ?k (nth$ ?j $?man_sen))
                        (if (numberp ?k) then (bind ?k (implode$ (create$ ?k))))
                        (if (eq ?flag 1) then
                        	(bind ?str ?k)
                                (bind $?grp_ids ?j)
                                (bind ?flag 0)
                       	else
                                (bind ?str (str-cat ?str "_" ?k))
                                (bind $?grp_ids (create$ $?grp_ids ?j))
			)
                        (bind ?lkup (gdbm_lookup ?gdbm  ?str))
                        (if (neq ?lkup "FALSE") then
                        	(assert (ids-cmp_mng-eng_mng $?grp_ids (explode$ ?str) (explode$ ?lkup)))
			)
                  )
	)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_mwe
 (declare (salience 60))
 ?f<-(manual_hin_sen $?Hin_list)
  =>
 	(mwe_lookup "hindi_multi_word.gdbm" $?Hin_list)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_largest_match 
 (declare (salience 50))
 ?f<-(ids-cmp_mng-eng_mng $?grp_ids ?mng ?)
 ?f1<-(ids-cmp_mng-eng_mng $?grp_ids1 ?mng1 ?)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
 	(if (> (length $?grp_ids) (length $?grp_ids1)) then
  		(retract ?f1)
  	else 
  		(retract ?f)
 	)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule get_match_with_anu
 (declare (salience 40))
 ?f0<-(ids-cmp_mng-eng_mng $?ids ?cmp_mng ?mng)
 (ids-cmp_mng-head-cat-mng_typ-priority $?aids ?cmp_mng $?)
 =>
	(retract ?f0)
	(bind ?new_mng (remove_character "_" ?cmp_mng " ")) 
	(printout ?*mul_word_file* "(ids-cmp_mng-eng_mng " (implode$ $?ids) " "?cmp_mng" "?mng ")" crlf)
	(assert (ids-sep-cmp_mng $?ids - ?new_mng))
 )
 ;------------------------------------------------------------------------------------------------------
 ;At the other end, all kinds of violent phenomena occur in the universe "all the time."
 (defrule get_mng
 (declare (salience 30))
 ?f<-(ids-sep-cmp_mng $?ids ?id - $?new_mng)
 ?f0<-(manual_id-cat-word-root-vib-grp_ids ?id ?cat $?word - $?root - $?vib - $?g_ids)
 =>
	(retract ?f ?f0)
	(assert (manual_id-cat-word-root-vib-grp_ids ?id ?cat $?new_mng - $?root - $?vib - $?ids ?id))
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule retract_man_fact
 (declare (salience 20))
 (manual_id-cat-word-root-vib-grp_ids ?id ?cat $?new_mng - $?root - $?vib - $?ids)
 ?f0<-(manual_id-cat-word-root-vib-grp_ids ?id1 $?)
 (test (and (member$ ?id1 $?ids) (neq ?id ?id1)))
 =>
	(retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------

