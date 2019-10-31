 ;This file Added by Roja(12-04-13)
 ;To get best match from multi word expressions
 ;Based on priority deciding which fact to be used. 
 ;If priority=1 then meaning is from 'provisional_multi_word_dictionary.txt'
 ;If priority=2 then meaning is from other multiword dictionaries(Ex: multi_word_expressions.txt)
 ;--------------------------------------------------------------------------------------------------------------
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
 ;--------------------------------------------------------------------------------------------------------------
 ;Move this rule to Anu_clp_files/parser_id_mapping.clp module
 ; ;Load Domain MWE file
 ; (defrule load_domain_multi_word_file
 ; (declare (salience 9000))
 ; (Domain ?domain&~general)
 ; =>
 ;; (bind ?mwe_dic (str-cat (sub-string 1 3 ?domain) "_multi_word_expressions.dat"))
 ; (bind ?mwe_dic "domain_multi_word_expressions.dat")
 ; (printout t ?mwe_dic crlf)
 ; (load-facts ?mwe_dic)
 ; )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja(21-02-14)
 ;The magnitude of electric field E due to a point charge is thus same on a sphere with the point charge at its center; [in other words], it has a spherical symmetry.
 ;Here, in provisional MWE dic we have mng other_words = xUsare_Sabxa, In MWE in_other_words = anya_Sabxa
 ;To check provisional multiword fact available or not. If present then pick provisional fact and retract database fact.
 ;When same group ids
 (defrule chk_for_prov_multi_same_group_ids
 (declare (salience 1))
 (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1)
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng1 ? ? ? 2)
 =>
	(retract ?f)
	(assert (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1))
	(if (neq ?mng ?mng1) then
		(printout t "Warning: Check Multi word in provisional and database "  ?mng       "-----" ?mng1 crlf) 
	)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja(21-02-14)
 ;To check provisional multiword fact available or not. If present then pick provisional fact and retract database fact.
 ;When different group ids printing warning message as per Chaitanya Sir suggestion.
 (defrule chk_for_prov_multi_diff_group_ids
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?h_id ?cat ?mng_typ 1)
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ? ? ? 2)
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
	(if (> (length $?grp_ids) (length $?grp_ids1)) then
		 (retract ?f)
	else	
		(retract ?f1)
        )
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
 ;To check best match in domain multi word dictionary
 (defrule chk_for_best_match_in_domain
 (declare (salience 100))
 ?f<-(ids-domain_cmp_mng-head-cat-mng_typ-priority  $?grp_ids ?mng ?h_id ?cat ?mng_typ ?rank)
 ?f1<-(ids-domain_cmp_mng-head-cat-mng_typ-priority $?grp_ids1 ?mng1 ?h_id1 ?cat1 ?mng_typ1 ?rank)
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
 ;Added by Shirisha Manju (12-5-17)
 ;Plenty of vitamin-B is found in these, which not only saves from cataract, many kind of blindness and [[other [eye] diseases]] but also protect eyes from the harms of ultraviolet rays. 
 (defrule combine_two_groups_with_same_id
 (declare (salience 100))
 ?f<-(ids-cmp_mng-head-cat-mng_typ-priority  $?grp_ids ?id ?mng ? ? ? ?)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority ?id $?grp_ids1 ?mng1 ?h_id ?cat ?mng_typ ?rank) 
 (test (or (neq (length $?grp_ids) 0)(neq (length $?grp_ids1) 0)))
 =>
	(retract ?f ?f1)
	(bind ?nmng (remove_character "_" (implode$ (create$  ?mng)) " "))
	(bind ?nmng1 (remove_character "_" (implode$ (create$  ?mng1)) " "))
	(bind ?m (nth$ (length ?nmng) ?nmng) )
	(bind ?m1 (nth$ 1 ?nmng1) )
	(if (eq ?m ?m1) then ;19 20 xUsarI_AzKa ; 20 21 AzKa_kI_bImAriyAz => 19 20 21 xUsarI_AzKa_kI_bImAriyAz 
		(bind ?n (delete-member$ $?nmng1 ?m) )
		(bind ?n (remove_character " " (implode$ (create$ ?nmng ?n)) "_"))
	else
		(printout t "in else" crlf)
		(bind ?n (remove_character " " (implode$ (create$ ?mng ?mng1)) "_"))
	)
	(assert (ids-cmp_mng-head-cat-mng_typ-priority $?grp_ids ?id $?grp_ids1 ?n ?h_id ?cat ?mng_typ ?rank))
	(printout t "Warning: Combined two mwe group ids " (implode$ $?grp_ids)" "?id" -- " ?id" " (implode$ $?grp_ids1) " => " (implode$ ?grp_ids)" "?id" "(implode$ $?grp_ids1) crlf)
 )

