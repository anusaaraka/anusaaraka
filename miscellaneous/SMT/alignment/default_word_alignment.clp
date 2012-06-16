
(defrule remove_manual_punct_facts
(declare (salience 501))
?f<-(manual_id-word-cat ?mid ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar ?)
=>
	(retract ?f)
)

(defrule combine_noun_and_vib
(declare (salience 500))
(manual_id-word-cat ?mid1 $? ?)
(not (alignment_done ?mid1))
(manual_id-noun-vib-grp_ids ?mid $?noun - $?vib - $?grp_ids)
(test (member$ ?mid1 $?grp_ids))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng - ?mid2 $?man_grp_mng)
?f1<-(id-confidence_level ?mid2 ?)
(test (member$ ?mid2 $?grp_ids))
=>
	(retract ?f)
        (assert (alignment_done ?mid1))
        (assert (id-confidence_level ?mid 3))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng - ?mid $?noun $?vib))
)

(defrule fix_using_sen_order
(declare (salience 200))
(manual_id-word-cat ?mid1 $?m_word1 ?)
(not (alignment_done ?mid1))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?)
(test (eq ?mid1 (+ ?mid 1)))
(hindi_id_order $?pre ?aid ?aid1 $?pos)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?))
(id-Apertium_output ?aid1 $?anu_mng1)
(test (> (length $?anu_mng1) 0))
=>
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?m_word1))
        (assert (alignment_done ?mid1))
        (assert (id-confidence_level ?mid1 3))
)

(defrule fix_using_sen_order1
(declare (salience 200))
(manual_id-word-cat ?mid1 $?m_word1 ?)
(not (alignment_done ?mid1))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?)
(test (eq ?mid1 (- ?mid 1)))
(hindi_id_order $?pre ?aid1 ?aid $?pos)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?))
(id-Apertium_output ?aid1 $?anu_mng1)
(test (> (length $?anu_mng1) 0))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng1 - ?mid1 $?m_word1))
        (assert (alignment_done ?mid1))
        (assert (id-confidence_level ?mid1 3))
)

(defrule chk_for_left_out_word_within_man_grp_match
(declare (salience 300))
(manual_id-word-cat ?mid ?m_word ?)
(not (manual_id-noun-vib-grp_ids ?mid $?))
(manual_id-word-cat ?mid1 ?m_word1 ?)
(not (alignment_done ?mid))
(alignment_done ?mid1)
(head_id-grp_ids ?m_hid $?pre ?mid1 ?mid $?pos)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?pre_m ?m_word1 $?pre_m1)
(hindi_id_order $? ?aid ?aid1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?)
(manual_id-node-word-root-tam  ?m_hid  ?   $?m_grp_m1 ?m_word1 ?m_word $?m_grp_m2 - $? - $?)
=>
	(retract ?f)
	(assert (alignment_done ?mid))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?pre_m ?m_word1 ?m_word $?pre_m1))
)

(defrule chk_for_left_out_word_with_apertium_mng
(declare (salience 300))
(manual_id-word-cat ?mid ?m_word ?)
(not (manual_id-noun-vib-grp_ids ?mid $?))
(manual_id-word-cat ?mid1 ?m_word1 ?)
(test (eq ?mid1 (+ ?mid 1)))
(not (alignment_done ?mid))
(alignment_done ?mid1)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?pre_m ?m_word1 $?pre_m1)
(hindi_id_order $? ?aid ?aid1 $?)
?f1<-(id-confidence_level ?mid2 ?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?)
(id-Apertium_output ?aid $?pre ?m_word $?pos)
=>
	(retract ?f ?f1)
        (assert (alignment_done ?mid))
        (assert (id-confidence_level ?mid 3))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?pre_m ?m_word ?m_word1 $?pre_m1))
)


(defrule chk_for_left_out_word_with_apertium_mng1
(declare (salience 300))
(manual_id-word-cat ?mid ?m_word ?)
(not (manual_id-noun-vib-grp_ids ?mid $?))
(manual_id-word-cat ?mid1 ?m_word1 ?)
(test (eq ?mid1 (+ ?mid 1)))
(not (alignment_done ?mid))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid2 $?pre_m ?m_word1 $?pre_m1)
?f1<-(id-confidence_level ?mid2 ?)
(hindi_id_order $? ?aid)
(id-Apertium_output ?aid $?pre ?m_word $?pos)
=>
        (retract ?f ?f1)
        (assert (alignment_done ?mid))
        (assert (id-confidence_level ?mid 3))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?pre_m ?m_word ?m_word1 $?pre_m1))
)

