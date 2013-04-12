 ;To get best match from multi word expressions
 ;--------------------------------------------------------------------------------------------------------------
 ;Domain physics
  (defrule load_phy_multi_word_file
  (declare (salience 9000))
  (Domain physics)
  =>
  (load-facts "phy_multi_word_expressions.dat")
  )
 ;--------------------------------------------------------------------------------------------------------------
 ;To check best match in multi word dictionary and proper noun dictionary
 (defrule chk_for_best_match_in_multi_word
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ ?rank1)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1 ?rank2)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
        (if (> (length $?grp_ids) (length $?grp_ids1)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------------
 ;To check best match in physics multi word dictionary
 (defrule chk_for_best_match_in_physics_domain
 ?f<-(ids-phy_cmp_mng-head-cat-mng_typ-priority  $?grp_ids ?mng ?h_id ?cat ?mng_typ ?rank1)
 ?f1<-(ids-phy_cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1 ?rank2)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
        (if (> (length $?grp_ids) (length $?grp_ids1)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------------
