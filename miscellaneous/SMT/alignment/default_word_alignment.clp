(deffunction assert_control_fact(?fact_name $?ids)
                (loop-for-count (?i 1 (length $?ids))
                                (bind ?j (nth$ ?i $?ids))
                                (if (eq ?fact_name mng_has_been_aligned) then
                                (assert (mng_has_been_aligned ?j))
                                else if (eq ?fact_name mng_has_been_filled) then
                                (assert (mng_has_been_filled ?j)))
                 )
)

;-------------------------------------------------------------------------------------
(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;-------------------------------------------------------------------------------------

(defrule remove_manual_punct_facts
(declare (salience 501))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid ? ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - $?)
=>
	(retract ?f)
)
;-------------------------------------------------------------------------------------

(defrule remove_manual_punct_facts1
(declare (salience 501))
?f<-(manual_id-cat-word-root-vib-grp_ids ?mid SYM $?)
=>
        (retract ?f)
)
;-------------------------------------------------------------------------------------

(defrule single_verb_group_match
(declare (salience 502))
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?m_h_id)
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?mng)
(head_id-grp_ids ?m_h_id $?pre ?mid $?pos)
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
(not (mng_has_been_aligned ?mid))
=>
  	(retract ?f)       
        (if (< ?mid2 (nth$ 1 (create$ $?pre ?mid $?pos))) then 
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?mng $?man_mng))
        else
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - (nth$ 1 (create$ $?pre ?mid $?pos)) $?man_mng $?mng)))
        (assert_control_fact mng_has_been_aligned $?pre ?mid $?pos)
        (assert (id-confidence_level ?mid 3))
)
;-------------------------------------------------------------------------------------

(defrule lookup_man_word_in_hindi_wordnet
(declare (salience 500))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?word - $?h_root - $?)
(not (mng_has_been_aligned ?mid))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root))) "FALSE"))
(id-org_wrd-root-dbase_name-mng ? ? ?e_root ? $?mng)
(id-root ?aid ?e_root)
(not (mng_has_been_filled ?aid))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?mng))) "FALSE"))
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ $?h_root)))))
        (bind ?dic_val (remove_character "/" ?dic_val " "))
        (if (neq ?dic_val "FALSE") then 
	    (if (and (member$ $?h_root ?dic_val)(member$ $?mng ?dic_val)) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid ?word))
	        (assert_control_fact mng_has_been_aligned ?mid)
        	(assert_control_fact mng_has_been_filled ?aid)
 	        (assert (id-confidence_level ?mid 3))
            )
        )
)
;-------------------------------------------------------------------------------------

(defrule combine_noun_and_vib
(declare (salience 500))
(manual_id-cat-word-root-vib-grp_ids ?mid ~VM $?noun - $? -  $?vib - ?mid $?pre ?mid1 $?pos)
(test (neq $?vib 0))
(not (mng_has_been_aligned ?mid1))
(mng_has_been_aligned ?mid)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_grp_mng)
?f1<-(id-confidence_level ?mid ?conf_lvl)
=>
	(retract ?f ?f1)
        (assert_control_fact mng_has_been_aligned $?pre ?mid1 $?pos)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?noun $?vib))
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid ?conf_lvl))
)
;-------------------------------------------------------------------------------------

(defrule combine_verb_and_tam
(declare (salience 500))
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
(head_id-grp_ids ?m_h_id $?pre ?mid1 $?pos)
(not (mng_has_been_aligned ?mid1))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?)
(test (member$ ?mid2 (create$ $?pre ?mid1 $?pos)))
?f1<-(id-confidence_level ?mid2 ?conf_lvl)
=>
        (retract ?f ?f1)
        (assert_control_fact mng_has_been_aligned $?pre ?mid1 $?pos)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - (nth$ 1 (create$ $?pre ?mid1 $?pos)) $?man_mng))
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level (nth$ 1 (create$ $?pre ?mid1 $?pos)) ?conf_lvl))
)
;-------------------------------------------------------------------------------------

(defrule fix_using_sen_order
(declare (salience 200))
(manual_id-cat-word-root-vib-grp_ids ?mid2 ? $?m_word2 - $? - $? - $?)
(not (mng_has_been_aligned ?mid2))
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid3 $?anu_mng3 - ?mid3 $?)
(mng_has_been_filled ?aid1)
(mng_has_been_filled ?aid3)
(test (or (eq ?mid2 (+ ?mid1 1))(eq ?mid2 (- ?mid3 1))))
(hindi_id_order $?pre ?aid1 ?aid2 ?aid3 $?pos)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?))
(id-Apertium_output ?aid2 $?anu_mng2)
(not (mng_has_been_filled ?aid2))
(test (> (length $?anu_mng2) 0))
=>
       (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid2 $?anu_mng2 - ?mid2 $?m_word2))
       (assert (mng_has_been_aligned ?mid2))
       (assert (mng_has_been_filled ?aid2))
       (assert (id-confidence_level ?mid2 3))
)
;-------------------------------------------------------------------------------------

(defrule single_verb_group_match1
(declare (salience 400))
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?m_h_id)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $? - $? - $?)
(not (mng_has_been_aligned ?mid))
(manual_id-node-word-root-tam ?m_h_id VGF $?man_mng - $? - $?)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?man_mng)
(id-Apertium_output ?aid $?anu_mng)
(test (> (length $?anu_mng) 0))
(test (subsetp $?mng $?anu_mng))
=>
        (retract ?f)
        (if (< ?mid ?mid2) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?mng $?man_mng))
        else
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?man_mng $?mng)))
        (assert_control_fact mng_has_been_aligned ?mid)
        (assert (id-confidence_level ?mid 3))
)
;-------------------------------------------------------------------------------------

(defrule mv_JJ_to_next_JJ_or_NN
(declare (salience 100))
(manual_id-cat-word-root-vib-grp_ids ?mid JJ $?mng - $? - $? - $?)
(not (mng_has_been_aligned ?mid))
(manual_id-cat-word-root-vib-grp_ids ?mid1 JJ|NN $? - $? - $? - $?)
(test (eq ?mid1 (+ ?mid 1)))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng)
?f1<-(id-confidence_level ?mid1 ?conf_lvl)
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?mng $?man_mng))
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (id-confidence_level ?mid1 ?conf_lvl))
)

;-------------------------------------------------------------------------------------
(defrule chk_for_left_out_word_within_man_grp_match
(declare (salience 100))
(manual_id-node-word-root-tam ?m_hid ? $?word - $? - $?)
(manual_id-cat-word-root-vib-grp_ids ?mid ? ?m_word - $? - $? - $?)
(manual_id-cat-word-root-vib-grp_ids ?mid1 ? ?m_word1 - $? - $? - $?)
(not (mng_has_been_aligned ?mid))
(mng_has_been_aligned ?mid1)
(head_id-grp_ids ?m_hid $?grp_ids)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid1 $?man_mng)
(test (and (member$ ?mid $?grp_ids)(member$ ?mid1 $?grp_ids)))
(hindi_id_order $? ?aid ?aid1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?)
?f1<-(id-confidence_level ?mid1 ?conf_lvl)
=>
	(retract ?f ?f1)
        (bind ?conf_lvl (explode$ (str-cat ?conf_lvl , 3)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - (nth$ 1 $?grp_ids) $?word))
        (assert (id-confidence_level (nth$ 1 $?grp_ids) ?conf_lvl))
        (assert_control_fact mng_has_been_aligned $?grp_ids)
)
;-------------------------------------------------------------------------------------
