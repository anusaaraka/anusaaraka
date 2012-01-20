(defglobal ?*pos-file* = pos_fp)
(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defrule delete_affected_ids
 (declare (salience 2000))
 (id-HM-source-grp_ids   ?id  ?  ? $?ids)
 ?f<-(hindi_id_order  $?hin_order)
 (test (> (length $?ids) 1))
 (not (id-checked ?id))
  =>
  (retract ?f)
  (loop-for-count (?i 1 (length $?ids))
                  (bind ?j (nth$ ?i $?ids))
                  (if (neq ?j ?id) then
                      (bind $?hin_order (delete-member$ $?hin_order ?j))
                  ))
 (assert (hindi_id_order  $?hin_order))
 (assert (id-checked ?id)) 
 )         

 (defrule get_eng_word_list
 (declare (salience 1950))
 (id-original_word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )

 (defrule dummy_rule
 (declare (salience 1940))
 (hindi_id_order  $?order)
 ?f<-(index ?id)
  =>
 (retract ?f)
 (bind ?len (length $?order))
 (assert (hindi_order_length ?len))
 (printout ?*pos-file*  "(hindi_order_length "?len")" crlf)
 (assert (Hindi $?order)))

 (defrule get_hin_word_list1
 (declare (salience 1900))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(Hindi $?pre1 ?id $?pos1)
 (id-Apertium_output ?id $?aper_op)
 =>
 	(retract ?f)
        (loop-for-count (?i 1 (length $?aper_op))
                        (bind ?val (nth$ ?i $?aper_op))
                        (if (eq ?i 1) then
                             (bind ?aper (str-cat ?val ""))
                        else 
                            (bind ?aper (str-cat ?aper "_" ?val))) )
        (if (eq (length $?aper_op) 0) then (bind ?aper ""))
  	(assert (Hindi $?pre1 ?aper $?pos1))
 )

 (defrule get_hin_word_list2
 (declare (salience 1800))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(Hindi $?pre1 ?id $?pos1)
 (id-HM-src ?id $?hin_mng ?)
 =>
        (retract ?f)
        (loop-for-count (?i 1 (length $?hin_mng))
                        (bind ?val (nth$ ?i $?hin_mng))
                        (if (eq ?i 1) then
                             (bind ?hmng (str-cat ?val ""))
                        else
                            (bind ?hmng (str-cat ?hmng "_" ?val))) )
        (assert (Hindi $?pre1 ?hmng $?pos1))
)

 (defrule position_of_newly_added_word
 (declare (salience 200))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(expr  $?eng_ord)
 (test (eq (member$ ?id $?eng_ord) FALSE))
 (not (id-pos ?id))
 =>
        (bind $?hin_ord (create$ $?pre ?id $?pos))
	(bind ?posi (member$ ?id $?hin_ord))
        (assert (hin_pos-src-eng_ids ?posi A -))
        (assert (id-pos ?id))
 )

 (defrule lwg_group_pos
 (declare (salience 100))
 (root-verbchunk-tam-chunkids ? ? ? $?aux_chunk ?head_id)
 (hindi_id_order  $?hin_ord)
 ?f<-(expr  $?eng_ord)
 (test (member$ ?head_id $?eng_ord))
 (not (id-pos ?head_id))
 =>
        (retract ?f)
 	(bind ?j (member$ ?head_id $?hin_ord))
        (bind $?aux_chunk (create$ $?aux_chunk ?head_id))
        (assert(hin_pos-src-eng_ids ?j - $?aux_chunk))        
        (bind ?len (length $?aux_chunk))
	(loop-for-count (?i 1 ?len)
                        (bind ?val (nth$ ?i $?aux_chunk))
                        (assert (id-pos ?val))
                        (bind ?pos (member$ ?val $?eng_ord))
                        (if (neq ?pos FALSE) then
                        (bind $?eng_ord (delete-member$ $?eng_ord ?val))
                        (bind $?eng_ord (insert$ $?eng_ord ?pos "-"))))
       (assert (expr  $?eng_ord))
 )

 (defrule prep_pos
 (declare (salience 50))
 (pada_info (group_head_id ?id) (group_cat PP)(preposition $?prep_id))
 ?f<-(expr  $?prev ?p_id $?post)
 (id-HM-source-grp_ids   ?id  ?  ? $?grp_ids)
 (hindi_id_order $?hin_ord)
 (test (member$ ?p_id  $?prep_id))
 (not (id-pos ?id))
 =>
                 (retract ?f)
                 (bind $?eng_ord (create$ $?prev ?p_id $?post))
                 (bind ?pos (member$ ?id $?hin_ord))
                 (bind $?grp_ids (sort > (create$ $?grp_ids $?prep_id)))
                 (assert (hin_pos-src-eng_ids ?pos - $?grp_ids))
                 (loop-for-count (?i 1 (length $?grp_ids))
                                (bind ?g_id (nth$ ?i $?grp_ids))
                                (bind ?pos1 (member$ ?g_id $?eng_ord))
                                (printout t ?pos1 "-------" crlf)
    		                (bind $?eng_ord (delete-member$ $?eng_ord ?g_id))
                   		(bind $?eng_ord (insert$ $?eng_ord ?pos1 "-"))
                                (assert (id-pos ?g_id)))
;                (bind ?prep_len (length $?prep_id))
;                (loop-for-count (?i 1 ?prep_len)
;                               (bind ?prep_id1 (nth$ ?i $?prep_id))
;                               (bind ?prep_pos (member$ ?prep_id1 $?eng_ord))
;                               (printout t ?prep_pos "-------" crlf)
;                               (bind $?eng_ord (delete-member$ $?eng_ord ?prep_id1))
;		               (bind $?eng_ord (insert$ $?eng_ord ?prep_pos "-"))
;		               (assert (id-pos ?prep_id1)))
		(assert (expr  $?eng_ord)) 
 )
                
 (defrule infinitive_pos
 (declare (salience 50))
 (pada_info (group_head_id ?id) (group_cat infinitive)(group_ids $?grp_ids))
 ?f<-(expr  $?prev ?id $?post)
 (hindi_id_order $?hin_ord)
 (test (member$ ?id  $?grp_ids))
 (not (id-pos ?id))
 =>
                 (retract ?f)
                 (bind $?eng_ord (create$ $?prev ?id $?post))
                 (bind ?pos (member$ ?id $?hin_ord))
                 (assert (hin_pos-src-eng_ids ?pos - $?grp_ids))
                 (loop-for-count (?i 1 (length $?grp_ids))
                                 (bind ?g_id (nth$ ?i $?grp_ids))
                                 (bind ?pos1 (member$ ?g_id $?eng_ord))
                                 (bind $?eng_ord (delete-member$ $?eng_ord ?g_id))
                                 (bind $?eng_ord (insert$ $?eng_ord ?pos1 "-"))
                                 (assert (id-pos ?g_id)))
                 (assert (expr  $?eng_ord))
 )
 


 (defrule dropped_words
 (declare (salience 40))
 ?f<-(expr  $?prev ?id $?post)
 (hindi_id_order $?hin_prev ?id $?hin_post)
 (id-HM-source ?id - WSD_root_mng)
 =>
   	(retract ?f)
        (bind $?eng_ord (create$ $?prev ?id $?post))
        (bind ?pos (member$ ?id $?eng_ord))
        (bind $?hin_ord (create$ $?hin_prev ?id $?hin_post))
        (bind ?h_pos (member$ ?id $?hin_ord))
	(assert(hin_pos-src-eng_ids ?h_pos D ?id))
        (bind $?eng_ord (create$ $?prev "-" $?post))
        (assert (expr  $?eng_ord))(assert (id-pos ?id))
 )


 (defrule find_pos
 (expr  $?pr ?id $?po)
 (hindi_id_order $?prev ?id $?post)
 (id-HM-source-grp_ids   ?id  ?  ? $?grp_ids)
 (not (id-pos ?id))
 =>
                 (bind $?hin_ord (create$ $?prev ?id $?post))
                 (bind ?pos (member$ ?id $?hin_ord))
                 (assert (id-pos ?id))
                 (assert(hin_pos-src-eng_ids ?pos - $?grp_ids))
 )
 
 (defrule print_for_user
 (hin_pos-src-eng_ids ?pos ?src $?ids)
 (English $?eng_list)
 (Hindi $?hin_list)
 =>
     (if (eq ?src D) then (bind ?hin_pos_val -D-)
     else
     (bind ?hin_pos_val (nth$ ?pos $?hin_list)))
     (if (eq ?hin_pos_val "") then (bind ?hin_pos_val "-U-"))
     (bind ?eng_val (implode$ $?ids))
     (if (eq ?src A) then (bind ?eng_pos_val -A-)
     else
     (bind ?eng_pos_val (str-cat ""))
     (loop-for-count (?i 1 (length $?ids))
                      (bind ?id (nth$ ?i $?ids))
                      (if (eq ?i 1) then
                             (bind ?eng_pos_val (nth$ ?id $?eng_list))
                        else
                            (bind ?eng_pos_val (str-cat ?eng_pos_val "_" (nth$ ?id $?eng_list))))))
;                      (bind ?eng_pos_val (str-cat ?eng_pos_val " " (nth$ ?id $?eng_list)))))
      (printout ?*pos-file* "(hin_pos-hin_mng-eng_ids-eng_words " ?pos" "?hin_pos_val" "(implode$ $?ids)" "?eng_pos_val")" crlf)
 )
