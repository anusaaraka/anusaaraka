 (defglobal ?*debug* = pada_point_debug)

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (24-03-11)
 (deffunction generate_initial_point (?viSeRya)
        (bind ?PH (string-to-field (str-cat ?viSeRya ".1")))
        (assert (id-current_id  ?viSeRya ?PH))
        (assert (current_id-group_members ?PH ?viSeRya))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (24-03-11)
 (deffunction  generate_incremented_point (?PH ?id)
        (bind ?PH (str-cat ?PH ""))
        (bind ?pos (str-index "." ?PH))
        (bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
        (bind ?sub-str (+ 1 (string-to-field ?sub-str)))
        (bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
        (assert (id-current_id  ?id ?PH))
        (assert (current_id-group_members ?PH ?id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (25-03-11)
 (deffunction generate_order (?id ?id1 ?kri $?grp_mems)
        (bind $?grp_mems (delete-member$ $?grp_mems ?id))
        (bind ?pos (member$ ?id1  $?grp_mems))
        (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
        (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 )
 ;============================================== Ordering rules ==================================================
 ; Added by Shirisha Manju (31-03-11)
 ; to generate id-current_id  and current_id-group_members facts
 (defrule get_current_id_grp_mems
 (declare (salience 1000))
 ?f0<-(pada_info (group_head_id ?id) (group_ids $?grp_ids) (pada_head ?PH)(group_cat ?gtype))
 (not (has_been_decided ?id))
 (test (neq ?gtype PP_intermediate))
 =>
        (assert (has_been_decided ?id))
        (assert (id-current_id ?id ?PH))
        (assert (current_id-group_members ?PH $?grp_ids))
        (printout ?*debug* "get_current_id_grp_mems " ?id" " ?PH "  " (implode$ $?grp_ids) crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;A fat ugly boy had to eat too many fruits to lose his weight. 
 ;Running is good for health.
 (defrule modifying_pada_for_increment1
 (declare (salience 981))
 ?f<-(to_be_grouped_ids ?id $?grp_ids ?viSeRaNa)
 ?f1<-(id-current_id ?id ?c_id)
 ?f2<-(current_id-group_members ?c_id $?ids)
 ?f3<-(pada_info (group_head_id ?id) (group_ids $?) (pada_head ?PH))
 =>
        (retract ?f ?f1 ?f2)
        (bind $?grp_ids (sort < (create$  $?grp_ids ?viSeRaNa)))
        (assert (id-current_id ?id ?c_id))
        (assert (current_id-group_members ?c_id $?grp_ids))
	(modify ?f3 (pada_head ?c_id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule non_finite_kriyA_pada
 (declare (salience 981))
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?kri ?id) 
 (test (and (neq ?rel kriyA-karwA)(neq ?rel kriyA-vAkyakarma)))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (eq (sub-string 1 (str-index "-" ?rel) ?rel) "kriyA-"))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 (not (id-word ?kri and|or))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?c_ids) FALSE))
 =>
 	(retract ?f3 ?f4 ?f5 ?f6) 
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
		(assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada " ?kri "  "$?c_ids" " (implode$  ?grp_ids1) crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada " ?kri" " $?c_ids"  " (implode$ ?grp_ids1) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_kriyA_pada1
 (declare (salience 980))
 ?f0<-(prep_id-relation-anu_ids  ? saMjFA-to_kqxanwa ?id ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?c_ids) FALSE))
  =>
 	(retract ?f3 ?f4 ?f5 ?f6)
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
		(assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada1 " ?kri "  " $?c_ids"  "(implode$  ?grp_ids1) crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada1 " ?kri"  " $?c_ids"  "(implode$ ?grp_ids1)crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_kriyA_pada2
 (declare (salience 979))
 ?f0<-(prep_id-relation-anu_ids  ?  viSeRya-RaRTI_viSeRaNa ?id ?id1)
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 (test (or (eq ?gtype infinitive) (eq ?gtype VP)))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f2<-(pada_info (group_head_id ?id1)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id1 ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (member$ ?id $?c_ids))
 =>
	(retract ?f3 ?f4 ?f5 ?f6)
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada2 " ?kri" " $?c_ids" "(implode$ ?grp_ids1)crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada2 " ?kri"  " $?c_ids"  "(implode$ ?grp_ids1)crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_conj
 (declare (salience 940))
 ?f0<-(id-current_id  ?id ?current_id)
 ?f1<-(current_id-group_members ?current_id $?grp_ids)
 ?f2<-(pada_info (group_head_id ?i)(group_ids  $?grp_ids)(group_cat PP)(pada_head ?PH)(preposition ?prep))
 ?f3<-(id-word ?id3 neither|either|nor)
 (test (eq ?id3 (- (nth$ 1 $?grp_ids) 1)))
 (test (neq ?prep ?id3))
 =>
 	(retract ?f0 ?f1 ?f2 ?f3)
 	(bind ?PH (str-cat ?PH ""))
 	(bind ?pos (str-index "." ?PH))
 	(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 	(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 	(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 	(bind $?grp_ids (create$  ?id3 $?grp_ids))
 	(assert (pada_info(group_head_id ?i) (group_ids  $?grp_ids)(group_cat PP)(pada_head ?PH)(preposition ?prep)))
 	(assert (id-current_id  ?i ?PH))
 	(assert (current_id-group_members ?PH $?grp_ids))
 	(printout ?*debug* "test_for_conj "?PH "  " (implode$  $?grp_ids) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;getting list of ids for non_finite_kriyA
 (defrule test_for_non_finite_kriyA
 (declare (salience 970))
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?kri ?id)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (eq (sub-string 1 (str-index "-" ?rel) ?rel) "kriyA-"))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)) 
 ?f1<-(id-current_id  ?kri ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (member$ ?kri $?grp_mems))
 (not (Search ?kri $?grp_mems))
  =>
 	(assert  (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(assert (Search ?kri $?grp_mems))
 	(printout ?*debug* "test_for_non_finite_kriyA  "?kri "  " (implode$  $?grp_mems)  crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 ;getting list of ids for non_finite_kriyA
 (defrule test_for_non_finite_kriyA1
 (declare (salience 969))
 ?f0<-(prep_id-relation-anu_ids  ?id to-infinitive ?to ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(id-current_id  ?kri ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (member$ ?kri $?grp_mems))
 (not (Search ?kri $?grp_mems))
  =>
 	(assert  (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(assert (Search ?kri $?grp_mems))
 	(printout ?*debug* "test_for_non_finite_kriyA1  "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-1
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-object ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0  ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-1 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-2
 (declare (salience 961))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? saMjFA-to_kqxanwa ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
 	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-2 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_order1-3
 (declare (salience 959))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ?pid viSeRya-RaRTI_viSeRaNa ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-3 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order2
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ?pid  ?rel ?kri ?id)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
(test (or (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI")(eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "prep_saMbanXI")(eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "viSeRaNa")))
 ?f3<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f4<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 (test (member$ ?id $?grp_mems))
 =>
 	(retract ?f0 ?f1)
 	(bind $?grp_ids_tmp $?grp_ids)
 	(bind ?pos (member$ (first$ $?grp_ids) $?grp_mems))
 	(bind ?len (length $?grp_ids1))
 	(loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?grp_ids1))
                  (bind $?grp_mems (delete-member$ $?grp_mems ?j))
                  (bind $?grp_ids_tmp (delete-member$ $?grp_ids_tmp ?j))
        )
 	(bind $?grp_mems (insert$ $?grp_mems ?pos $?grp_ids1))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order2  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order3
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-conjunction ?kri ?id)
 ?f3<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f4<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 (test (member$ ?id $?grp_mems))
 =>
 	(retract ?f0 ?f1)
 	(bind ?pos (member$ (first$ $?grp_ids) $?grp_mems))
 	(bind ?len (length $?grp_ids1))
 	(loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?grp_ids1))
                  (bind $?grp_mems (delete-member$ $?grp_mems ?j))
        )
 	(bind $?grp_mems (insert$ $?grp_mems ?pos $?grp_ids1))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order3  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order4
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? samAsa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order4 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order5
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order5 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order6
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-wulanAwmaka_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order6 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order7
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-det_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order7 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order8
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRaNa-viSeRaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order8 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule non_finite_order9
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? to-infinitive ?id ?id1)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order9 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order10
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? object-object_samAnAXikaraNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order10 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order11
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-kriyA_niReXaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
 	(bind $?grp_mems (delete-member$ $?grp_mems ?id))
 	(bind ?pos (member$ ?id1 $?grp_mems))
 	(bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order11  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order12
 (declare (salience 950))
 ?f<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 (id-current_id ?kri ?id)
 ?f1<-(current_id-group_members ?id $?grp)
 =>
 	(retract ?f1 ?f)
 	(assert (current_id-group_members ?id $?grp_mems))
 	(printout ?*debug* "non_finite_order12  "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_left_relations
 ?f0<-(prep_id-relation-anu_ids  ?p ?rel ?id ?id1)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
 =>
 	(retract ?f0)
 	(assert (prep_id-relation-anu_ids  ?p ?rel ?current_id ?id1))
 	(printout ?*debug* "map_left_relations  " ?rel"  " ?current_id"  " ?id1 crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_right_relations
 ?f0<-(prep_id-relation-anu_ids  $?p ?rel ?id1 ?id)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
  =>
 	(retract ?f0)
 	(assert (prep_id-relation-anu_ids  $?p ?rel ?id1 ?current_id))
 	(printout ?*debug* "map_right_relations  " ?rel"  " ?id1 "  "?current_id crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule delete_relations
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?id ?id)
 =>
 	(retract ?f0)
 	(printout ?*debug* "delete_relations " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
	(close ?*debug*)
 )
 ;-------------------------------------------------------------------------------------------------------------
