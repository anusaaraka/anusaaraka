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

 (deffunction sort_grp($?ids)
        (bind ?len (length $?ids))
        (bind $?new_ids (create$ ))
        (while (> (length $?ids) 0)
        	(bind ?id (nth$ 1 $?ids))
                (bind $?ids (delete-member$ $?ids ?id))
                (bind $?new_ids (create$ $?new_ids ?id))
        )
       (bind $?ids (sort > $?new_ids))
       (bind $?ids $?new_ids)
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
                        (bind ?mng (gdbm_lookup ?gdbm  ?str))
                        (if (neq ?mng "FALSE") then
				(if (eq ?gdbm "phy_hnd_multi_word_dic.gdbm") then
					(assert (ids-phy_cmp_mng-eng_mng $?grp_ids (string-to-field ?str) (explode$ ?mng)))
				else
                        		(assert (ids-cmp_mng-eng_mng $?grp_ids (string-to-field ?str)  (explode$ ?mng)))
;                        		(assert (ids-cmp_mng-eng_mng $?grp_ids (explode$ ?str) (explode$ ?mng)))
				)
			)
                  )
	)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_mwe
 (declare (salience 100))
 ?f<-(manual_hin_sen $?Hin_list)
  =>
 	(mwe_lookup "hindi_multi_word.gdbm" $?Hin_list)
 	(mwe_lookup "phy_hnd_multi_word_dic.gdbm" $?Hin_list)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_largest_match_with_phy
 (declare (salience 90))
 ?f<-(ids-phy_cmp_mng-eng_mng $?grp_ids ?mng ?)
 ?f1<-(ids-phy_cmp_mng-eng_mng $?grp_ids1 ?mng1 ?)
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
 (defrule chk_for_largest_match
 (declare (salience 80))
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
 (defrule get_match_with_anu_for_phy
 (declare (salience 60))
 ?f0<-(ids-phy_cmp_mng-eng_mng $?ids ?cmp_mng ?mng)
 (ids-phy_cmp_mng-head-cat-mng_typ-priority $?aids ?cmp_mng $?)
 =>
        (retract ?f0)
        (bind ?new_mng (remove_character "_" ?cmp_mng " "))
        (printout ?*mul_word_file* "(ids-phy_cmp_mng-eng_mng " (implode$ $?ids) " "?cmp_mng" "?mng ")" crlf)
        (assert (ids-sep-cmp_mng $?ids - ?new_mng))
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
 ; At the other end, all kinds of violent phenomena occur in the universe "all the time."
 ; The choice of a set of axes in a frame of reference depends upon the situation.
 (defrule get_mng
 (declare (salience 30))
 ?f<-(ids-sep-cmp_mng $?ids ?id - $?new_mng)
 ?f0<-(manual_id-cat-word-root-vib-grp_ids ?h ?cat $?word - $?root - $?vib - $?pre ?id $?post)
; ?f0<-(manual_id-cat-word-root-vib-grp_ids ?id ?cat $?word - $?root - $?vib - $?g_ids)
 =>
	(retract ?f ?f0)
	(bind $?m_ids (sort > (create$ $?ids ?id $?pre $?post)))
	(bind $?m_ids (sort_grp $?m_ids))
;	(assert (manual_id-cat-word-root-vib-grp_ids ?id ?cat $?new_mng - $?root - $?vib - $?ids ?id))
	(assert (manual_id-cat-word-root-vib-grp_ids ?id ?cat $?new_mng - $?root - $?vib - $?m_ids))
 )
 ;------------------------------------------------------------------------------------------------------
 ; (piNda - piMda - ke - 18 19)  and  (ke samparka meM - saMparka - meM - 19 20 21) ==> 
 ; piNda - piMda - ke samparka meM - 18 19 20 21
 ; In these examples, the external agency of force (hands, wind, stream, etc) is in contact with the object.-> ina uxAharaNoM meM, bala kA bAhya sAXana  (hAWa, vAyu, jalaXArA, Axi ) piNda ke samparka meM hE.     
 (defrule modify_mng
 (declare (salience 25))
 ?f1<-(manual_id-cat-word-root-vib-grp_ids ?h1 ? ke $?mng - $? - $? - ?id $?post)
 ?f0<-(manual_id-cat-word-root-vib-grp_ids ?h ?cat $?word - $?root - $?vib - $?pre ?id)
 (test (neq ?h ?h1))
 =>
	(retract ?f0 ?f1)
	(bind $?g_ids (create$ $?pre ?id $?post))
	(assert (manual_id-cat-word-root-vib-grp_ids ?h ?cat $?word - $?root - ke $?mng - $?g_ids))
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

