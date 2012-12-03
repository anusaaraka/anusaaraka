(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defglobal ?*aper_grp_fp* = ap_grp_fp)
 (defglobal ?*aper_fp* = ap_fp)
 (defglobal ?*count_of_inserted_words* = 2000)


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

 ;-------------------------------------------------------------------------------------------------
 (defrule del_@PropN_in_aper_out
 (declare (salience 2001))
 ?f0<-(id-Apertium_output ?id ?mng $?w)
 (test (neq (str-index "@PropN" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
        (bind ?mng (string-to-field (sub-string 9 (- (length ?mng) 6) ?mng))) ;Ex: \@PropN-newton-PropN
        (bind ?mng (string-to-field (str-cat "@" (upcase (sub-string 1 1 ?mng)) (sub-string 2 (length ?mng) ?mng)))) ;Ex:Newton
;        (bind ?mng (string-to-field (sub-string 11 (- (length ?mng) 8) ?mng))) ;Ex: \@PropN-\@newton-\@PropN
        (assert (id-Apertium_output ?id ?mng $?w))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule align_extra_inserted_words_in_anusaarak
 (declare (salience 2001))
 ?f<-(hindi_id_order $?pre ?insert_word $?post)
 (test (eq (numberp ?insert_word) FALSE))
 =>
        (retract ?f)
        (bind ?*count_of_inserted_words* (+ ?*count_of_inserted_words* 1))
        (assert (hindi_id_order $?pre ?*count_of_inserted_words* $?post))
        (assert (id-Apertium_output ?*count_of_inserted_words* ?insert_word))
        (assert (count_of_inserted_word-position ?*count_of_inserted_words* (member$ ?insert_word (create$ $?pre ?insert_word $?post))))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule rm_underscore_in_aper_op
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?a_id $?a_grp)
 (not (id_aper_op_modified ?a_id))
 =>
        (retract ?f)
        (bind ?a_op "")
        (bind ?a_op (remove_character "\\@" (implode$ (create$  $?a_grp)) " "))        
        (bind ?a_op (remove_character "\@" (implode$ (create$  ?a_op)) " "))        
        (bind ?a_op (remove_character "-" (implode$ (create$  ?a_op)) " "))        
        (bind ?a_op (remove_character "_" (implode$ (create$  ?a_op)) " "))        
        (assert (id-Apertium_output ?a_id  ?a_op))
        (assert (id_aper_op_modified ?a_id))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule hindi_mng
 (declare (salience 2000))
 ?f<-(id-HM-source   ?id   ?hmng&~-   ?src)
 (not (id_hmng_modified ?id))
 =>
        (retract ?f)
        (bind ?new_mng (remove_character "_" ?hmng " "))
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?new_mng)) " "))
        (bind ?new_mng (remove_character "@" (implode$ (create$  ?new_mng)) ""))
        (assert (id-HM-source ?id ?new_mng ?src))
        (assert (id_hmng_modified ?id))
 )
     

; (defrule del_underscore_in_aper_out
; (declare (salience 20))
; ?f0<-(id-Apertium_output ?id $?pre ?mng $?pos)
; (test (neq (str-index "_" (implode$ (create$ ?mng))) FALSE))
; =>
;        (retract ?f0)
;        (bind ?mng (implode$ (create$ ?mng)))
;        (bind ?index (str-index "_" ?mng))
;	(bind ?str (string-to-field (sub-string 1 (- ?index 1) ?mng)))
;        (bind ?str1 (string-to-field (sub-string (+ ?index 1) (length ?mng) ?mng)))
;	(bind ?mng (create$ ?str ?str1))
;        (assert (id-Apertium_output ?id $?pre ?mng $?pos))
; )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_dummy_fact_Verb
 (declare (salience 10))
 (pada_info (group_head_id ?h)(group_cat VP)(group_ids $?ids)(H_tam ?tam))
 (id-HM-source ?h ?root ?)
 ?f0<-(to_be_included_in_paxa ?h)
 =>
	(retract ?f0)
        (assert (anu_id-node-word-root-tam ?h VP $?ids - ?root - ?tam))
	
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule retract_cntrl_fact
 (declare (salience 30))
 (has_been_included_in_paxa ?id)
 ?f<-(to_be_included_in_paxa ?id)
 =>
        (retract ?f)
 )
 ;-------------------------------------------------------------------------------------------------
 ;In Physics , we attempt to explain diverse physical phenomena in terms of a few concepts and laws .
 ;if "and" id is in group then modifying head as "and"
 (defrule get_conj_largest_match_dummy_fact
 (declare (salience 20))
 (mot-cat-praW_id-largest_group ? ? ? $?d ?h $?d1)
 (id-HM-source ?h ?root&Ora|yA ?)
 ?f0<-(to_be_included_in_paxa ?h)
 =>
        (retract ?f0)
        (assert (anu_id-node-word-root-tam ?h PP $?d ?h $?d1 - ?root - -))
        (loop-for-count (?i 1 (length $?d)) do
                (bind ?j (nth$ ?i $?d))
                (assert (has_been_included_in_paxa ?j))
        )
	(loop-for-count (?i 1 (length $?d1)) do
                (bind ?j (nth$ ?i $?d1))
                (assert (has_been_included_in_paxa ?j))
        )
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_largest_match_dummy_fact
 (declare (salience 10))
 (mot-cat-praW_id-largest_group ? ? ? $?ids ?h)
 (id-HM-source ?h ?root ?)
 (pada_info (group_head_id ?h)(vibakthi ?vib))
 ?f0<-(to_be_included_in_paxa ?h)
 =>
	(retract ?f0)
        (assert (anu_id-node-word-root-tam ?h PP $?ids ?h - ?root - ?vib))
	(loop-for-count (?i 1 (length $?ids)) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_dummy_fact
 (declare (salience 9))
 (pada_info (group_head_id ?h)(group_cat ?node)(group_ids $?ids)(vibakthi ?tam))
 (id-HM-source ?h ?root ?)
  ?f0<-(to_be_included_in_paxa ?h)
 =>
	(retract ?f0)
        (assert (anu_id-node-word-root-tam ?h ?node $?ids - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_grp_mng
 (declare (salience 5))
 ?f<-(id-Apertium_output ?id $?mng) 
 ?f1<-(anu_id-node-word-root-tam ?h ?node $?pre ?id $?pos - ?root - ?tam)
 (not (grouping_done ?id))
 =>
	(assert (grouping_done ?id))
	(retract ?f1)
        (assert (anu_id-node-word-root-tam ?h ?node $?pre $?mng $?pos - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule rm_prep_id
 (declare (salience 3))
 ?f0<-(anu_id-node-word-root-tam ?h ?node $?pre ?id $?pos - ?root - ?tam)
 (pada_info (preposition $?d ?id $?d1))
 =>
	(retract ?f0)
	(assert (anu_id-node-word-root-tam ?h ?node $?pre  $?pos - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule print_grp_mng
 ?f0<-(anu_id-node-word-root-tam ?id ?node $?mng)
 =>
	(retract ?f0)
	(printout ?*aper_grp_fp* "(anu_id-node-word-root-tam   " ?id"   "?node"   "(implode$ $?mng)")" crlf)
 )
 (defrule print_mng
 ?f<- (id-Apertium_output ?id $?mng)
 =>
	(retract ?f)
	(printout ?*aper_fp* "(id-Apertium_output "  ?id "  " (implode$ $?mng)")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------
