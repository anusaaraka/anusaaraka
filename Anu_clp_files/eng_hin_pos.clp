(defglobal ?*pos-file* = pos_fp)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;sort_grp function sorts  the given ids and make each id unique i.e; if i/p [9 3 4 3 5] ==> o/p [3 4 5 9]
(deffunction sort_grp($?ids)
        (bind ?len (length $?ids))
        (bind $?new_ids (create$ ))
 	(while (> (length $?ids) 0)
                        (bind ?id (nth$ 1 $?ids))
			(if (numberp ?id)  then
 	                       (bind $?ids (delete-member$ $?ids ?id))
				(bind $?new_ids (create$ $?new_ids ?id))
			else
				(bind $?ids (delete-member$ $?ids ?id))
			)
        )
       (bind $?ids (sort > $?new_ids))
       (bind $?ids $?new_ids)
)
;----------------------------------------------------------------------------------------------------------------------------
 ;As group head has a meaning and all others are given as "-" removing that ids from hindi_id_order.
 (defrule delete_affected_ids
 (declare (salience 2000))
 ;(declare (salience 45))
 (id-HM-source-grp_ids   ?id  ?  ? $?ids)
 ?f<-(hindi_id_order  $?hin_order)
 (test (> (length $?ids) 1))
 (not (id-checked ?id))
 (not (pada_info (group_cat infinitive)(group_ids $? ?id $?)))
 ;(test (eq (member$ ?id $?grp_ids) FALSE))
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
;----------------------------------------------------------------------------------------------------------------------------
 ;Creating english word list fact .
 (defrule get_eng_word_list
 (declare (salience 1950))
 (id-original_word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English_Sen $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English_Sen $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
;---------------------------------------------------------------------------------------------------------------------------
 ;Asserting (hindi_order_length) and (Hindi_sen) facts for further use in other rules
 (defrule find_length
 (declare (salience 1940))
 (hindi_id_order  $?order)
 ?f<-(index ?id)
  =>
 (retract ?f)
 (bind ?len (length $?order))
 (assert (hindi_order_length ?len))
 (printout ?*pos-file*  "(hindi_order_length "?len")" crlf)
 (assert (Hindi_sen $?order)))

;---------------------------------------------------------------------------------------------------------------------------
 ;Creating hindi sentence fact.
 ;replacing id with apertium_output .
 (defrule get_hin_word_list1
 (declare (salience 1900))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(Hindi_sen $?pre1 ?id $?pos1)
 (id-Apertium_output ?id $?aper_op)
 (test (neq  (length $?aper_op) 0))
 =>
 	(retract ?f)
        (loop-for-count (?i 1 (length $?aper_op))
                        (bind ?val (nth$ ?i $?aper_op))
                        (if (eq ?i 1) then
                             (bind ?aper (str-cat ?val ""))
                        else 
                            (bind ?aper (str-cat ?aper "_" ?val))) )
        (if (eq (length $?aper_op) 0) then (bind ?aper "-D-")
        (bind ?pos (member$ ?id (create$ $?pre ?id $?pos)))
        (assert (hin_pos-src-eng_ids ?pos D ?id))
        (assert (id-pos ?id))
        )
  	(assert (Hindi_sen $?pre1 ?aper $?pos1))
 )
 ;---------------------------------------------------------------------------------------------------------------------------
 ;replacing id with hindi_meaning .
 (defrule get_hin_word_list2
 (declare (salience 1800))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(Hindi_sen $?pre1 ?id $?pos1)
 (id-HM-source-grp_ids ?id ?hmng ? $?grp_ids)
 =>
        (retract ?f)
;        (loop-for-count (?i 1 (length $?hin_mng))
;                        (bind ?val (nth$ ?i $?hin_mng))
;                        (if (eq ?i 1) then
;                             (bind ?hmng (str-cat ?val ""))
;                        else
;                            (bind ?hmng (str-cat ?hmng "_" ?val))) )
        (bind ?hmng (str-cat ?hmng ""))
        (assert (Hindi_sen $?pre1 ?hmng $?pos1))
)

;replacing id with english word if apertium_output or hindi_meaning is not found for any id
 (defrule get_hin_word_list3
 (declare (salience 1799))
 (hindi_id_order  $?pre ?id $?pos)
 ?f<-(Hindi_sen $?pre1 ?id $?pos1)
 (id-original_word ?id ?word)
 =>
        (retract ?f)
        (assert (Hindi_sen $?pre1 ?word $?pos1))
        (assert (id-HM-source-grp_ids   ?id  ?word - ?id))
)

;---------------------------------------------------------------------------------------------------------------------------
 ;Finding the position and adding source information for newly inserted words in the hindi order { source ==> "-A-"[Added]}
 ;(hindi_id_order kyA 2 3 ki 4 8 9 6)
 ;Ex Do you think we should go to the party? ==>o/p [kyA] Apa socawe hEM [ki] hameM/hamako pArtI ko jAnA cAhiye?
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

;---------------------------------------------------------------------------------------------------------------------------
 ;Finding the position of the lwg_group
 (defrule lwg_group_pos
 (declare (salience 100))
 (root-verbchunk-tam-chunkids ? ? ? $?aux_chunk ?head_id)
 (hindi_id_order  $?hin_ord)
 ?f<-(expr  $?eng_ord)
 (test (and (member$ ?head_id $?eng_ord)(member$ ?head_id $?hin_ord)))
 (not (id-pos ?head_id))
 =>
        (retract ?f)
 	(bind ?j (member$ ?head_id $?hin_ord))
        (bind $?aux_chunk (create$ $?aux_chunk ?head_id))
        (bind $?aux_chunk (sort_grp $?aux_chunk))
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

 
;---------------------------------------------------------------------------------------------------------------------------
 ;Find the position of prepositional phrase
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
                 ;(bind $?grp_ids (sort_grp (create$ $?grp_ids $?prep_id)))
                 (bind $?grp_ids (create$ $?grp_ids $?prep_id))
                 (assert (hin_pos-src-eng_ids ?pos - $?grp_ids))
                 (loop-for-count (?i 1 (length $?grp_ids))
                                (bind ?g_id (nth$ ?i $?grp_ids))
                                (bind ?pos1 (member$ ?g_id $?eng_ord))
                                (if (neq ?pos1 FALSE) then
    		                (bind $?eng_ord (delete-member$ $?eng_ord ?g_id))
                   		(bind $?eng_ord (insert$ $?eng_ord ?pos1 "-"))
                                (assert (id-pos ?g_id))))
		(assert (expr  $?eng_ord)) 
 )

                
;---------------------------------------------------------------------------------------------------------------------------
 ;Find the position of infinitive phrase
 (defrule infinitive_pos
 (declare (salience 50))
 (pada_info (group_head_id ?id) (group_cat infinitive)(group_ids $?grp_ids))
 ?f<-(expr  $?prev ?id $?post)
 (hindi_id_order $?hin_ord)
 (test (member$ ?id  $?grp_ids))
 (test (member$ ?id $?hin_ord))
 (not (id-pos ?id))
 =>
                 (retract ?f)
                 (bind $?eng_ord (create$ $?prev ?id $?post))
                 (bind ?pos (member$ ?id $?hin_ord))
                 ;(bind $?grp_ids (sort_grp $?grp_ids))
                 (assert (hin_pos-src-eng_ids ?pos - $?grp_ids))
                 (loop-for-count (?i 1 (length $?grp_ids))
                                 (bind ?g_id (nth$ ?i $?grp_ids))
                                 (bind ?pos1 (member$ ?g_id $?eng_ord))
				 (if (neq ?pos1 FALSE) then
                                 (bind $?eng_ord (delete-member$ $?eng_ord ?g_id))
                                 (bind $?eng_ord (insert$ $?eng_ord ?pos1 "-"))
                                 (assert (id-pos ?g_id))))
                 (assert (expr  $?eng_ord))
 )
 
;---------------------------------------------------------------------------------------------------------------------------
 ;Find the position of the dropped words and giving src as { [-D-] ==> dropped } 
 (defrule dropped_words
 (declare (salience 40))
 ?f<-(expr  $?prev ?id $?post)
 (hindi_id_order $?hin_prev ?id $?hin_post)
 ;(id-HM-source ?id - WSD_root_mng)
 (id-HM-source-grp_ids ?id - WSD_root_mng|WSD_word_mng)
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

;---------------------------------------------------------------------------------------------------------------------------
 ;I will give up smoking. [will_give + up]
 (defrule find_pos
 (declare (salience 30))
 (expr  $?pr ?id $?po)
 (id-HM-source-grp_ids   ?id1  ?  ? $?grp_ids)
 ?f<-(hin_pos-src-eng_ids ?h_pos ?src $?ids)
 (test (member$ ?id $?grp_ids))
 (test (member$ ?id1 $?ids))
 (not (id-pos ?id))
 =>
                 (retract ?f)
                 (assert (id-pos ?id))
                 (bind $?ids (sort_grp $?ids ?id))
                 (bind $?ids (sort_grp $?ids ?id))
                 (assert(hin_pos-src-eng_ids ?h_pos ?src $?ids))
 )

 ;find the position of remaing words
 (defrule find_pos1
 (declare (salience 25))
 (expr  $?pr ?id $?po)
 (hindi_id_order $?prev ?id $?post)
 (id-HM-source-grp_ids   ?id  ?  ? $?grp_ids)
 (not (id-pos ?id))
 =>
                 (bind $?hin_ord (create$ $?prev ?id $?post))
                 (bind ?pos (member$ ?id $?hin_ord))
                 (assert (id-pos ?id))
                 (bind $?grp_ids (sort_grp $?grp_ids))
                 (assert(hin_pos-src-eng_ids ?pos - $?grp_ids))
 )
 
;---------------------------------------------------------------------------------------------------------------------------
 ;Print to a file 
 (defrule print_for_user1
 (declare (salience 20))
 (pada_info (group_head_id ?id) (group_cat PP)(preposition $?prep_id))
 (hin_pos-src-eng_ids ?pos ?src $?ids)
 (test (member$ $?prep_id $?ids))
 (English_Sen $?eng_list)
 (Hindi_sen $?hin_list)
 (test (neq ?pos FALSE))
 (not (meaning_has_been_printed ?pos))
 =>
     (assert (meaning_has_been_printed ?pos))
     (if (eq ?src D) then (bind ?hin_pos_val -D-)
     else
     (bind ?hin_pos_val (nth$ ?pos $?hin_list)))
     (if (eq ?hin_pos_val "") then (bind ?hin_pos_val "-U-"))
     (bind ?eng_val (implode$ $?ids))
     (bind $?ids (delete-member$ $?ids $?prep_id))
     
     (bind ?eng_pos_val (str-cat ""))
     (loop-for-count (?i 1 (length $?ids))
                      (bind ?id (nth$ ?i $?ids))
                      (if (eq ?i 1) then
                             (bind ?eng_pos_val (nth$ ?id $?eng_list))
                        else
                            (bind ?eng_pos_val (str-cat ?eng_pos_val "_" (nth$ ?id $?eng_list)))))
;                      (bind ?eng_pos_val (str-cat ?eng_pos_val " " (nth$ ?id $?eng_list)))))
      (loop-for-count (?i 1 (length $?prep_id))
                      (bind ?id (nth$ ?i $?prep_id))
                            (if (eq ?i 1) then
                            (bind ?eng_pos_val (str-cat ?eng_pos_val "_{" (nth$ ?id $?eng_list)))
                            else
                            (bind ?eng_pos_val (str-cat ?eng_pos_val "_" (nth$ ?id $?eng_list)))))
      (bind ?eng_pos_val (str-cat ?eng_pos_val "}"))

      (printout ?*pos-file* "(hin_pos-hin_mng-eng_ids-eng_words " ?pos" "?hin_pos_val" "(implode$ (create$ $?ids $?prep_id))" "?eng_pos_val")" crlf)
 )


 ;Print to a file 
 (defrule print_for_user
 (hin_pos-src-eng_ids ?pos ?src $?ids)
 (English_Sen $?eng_list)
 (Hindi_sen $?hin_list)
 (test (neq ?pos FALSE))
 (not (meaning_has_been_printed ?pos))
 =>
     (assert (meaning_has_been_printed ?pos))
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
