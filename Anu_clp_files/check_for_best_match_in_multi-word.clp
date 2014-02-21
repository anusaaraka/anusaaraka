 ;This file Added by Roja(12-04-13)
 ;To get best match from multi word expressions
 ;Based on priority deciding which fact to be used. 
 ;If priority=1 then meaning is from 'provisional_multi_word_dictionary.txt'
 ;If priority=2 then meaning is from other multiword dictionaries(Ex: multi_word_expressions.txt)
 ;--------------------------------------------------------------------------------------------------------------
 ;Domain physics
 (defrule load_phy_multi_word_file
 (declare (salience 9000))
 (Domain physics)
 =>
 (load-facts "phy_multi_word_expressions.dat")
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja(21-02-14)
 ;To load provisional_multi_dictionary facts
 (defrule load_provisional_multi_dic
 (declare (salience 9000))
 (not (not_SandBox))
 =>
 (load-facts "provisional_multi_dic.dat")
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja(21-02-14)
 ;To check provisional multiword fact available or not. If present then pick provisional fact and retract database fact.
 ;When same group ids
 (defrule chk_for_prov_multi_same_group_ids
 (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1)
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng1 ? ? ? 2)
 =>
 (retract ?f)
 (assert (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1))
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja(21-02-14)
 ;To check provisional multiword fact available or not. If present then pick provisional fact and retract database fact.
 ;When different group ids printing warning message as per Chaitanya Sir suggestion.
 (defrule chk_for_prov_multi_diff_group_ids
 (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1)
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ? ? ? 2)
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
 (retract ?f)
 (assert (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1))
 (printout t "Warning: Check Multi word in provisional and database"	$?grp_ids	"-----"	$?grp_ids1 crlf) 
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;To check best match in multi word dictionary and proper noun dictionary
 (defrule chk_for_best_match_in_multi_word
 (declare (salience 100))
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ ?rank)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1 ?rank)
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
 (declare (salience 100))
 ?f<-(ids-phy_cmp_mng-head-cat-mng_typ-priority  $?grp_ids ?mng ?h_id ?cat ?mng_typ ?rank)
 ?f1<-(ids-phy_cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1 ?rank)
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
