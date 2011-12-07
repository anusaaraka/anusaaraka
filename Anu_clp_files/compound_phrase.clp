
 (defrule get_eng_word_list
 (declare (salience 100))
 (id-original_word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )


 (defrule chk_for_cmp_phrase
 (declare (salience 50))
 ?f<-(English-list $?Eng_list)
 (index ?id)
  =>
  (bind ?len (length $?Eng_list))
  (loop-for-count (?i 1 ?len) 
  	           (bind ?flag 1)
		   (loop-for-count (?j ?i ?len)
		                    (bind ?k (nth$ ?j $?Eng_list))
                                    (if (numberp ?k) then (bind ?k (implode$ (create$ ?k))))
                                    (if (eq ?flag 1) then
                                    (bind ?str ?k)
                                    (bind $?grp_ids ?j)
                                    (bind ?flag 0)
                                    else
                                    (bind ?str (str-cat ?str "_" ?k))
                                    (bind $?grp_ids (create$ $?grp_ids ?j)))
                                    (bind ?lkup (gdbm_lookup "compound_phrase.gdbm"  ?str))
                                    (if (neq ?lkup "FALSE") then
                                        (bind ?count 1)
                                        (while (neq (str-index "#" ?lkup) FALSE)
                                               (if (eq ?count 1) then 
                                                   (bind ?mng (explode$ (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup))))
;                                                   (printout t ?mng crlf))
                                               (if (eq ?count 3) then
                                                    (bind ?cat (explode$ (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup))))
 ;                                                   (printout t ?cat crlf))
                                               (if (eq ?count 4) then
                                                    (bind ?h_id (explode$ (sub-string 1 (- (str-index "#" ?lkup) 1) ?lkup))))
                                               (bind ?count (+ ?count 1))
                                               (bind ?lkup (sub-string (+ (str-index "#" ?lkup) 1) (length ?lkup) ?lkup)) 
                                               )
                                        (bind ?mng_typ (explode$ ?lkup))
                                        (assert (ids-cmp_mng-head-cat-mng_typ $?grp_ids ?mng ?h_id ?cat ?mng_typ)))
                                     )
                    )
  )


 (defrule chk_for_largest_match 
 ?f<-(ids-cmp_mng-head-cat-mng_typ $?grp_ids ?mng ?h_id ?cat ?mng_typ)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
  (if (> (length $?grp_ids) (length $?grp_ids1)) then
  (retract ?f1)
  else 
  (retract ?f)
 )
 )

