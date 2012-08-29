; This file is written by shirisha Manju

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

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

 (defglobal ?*vb_file* = vb_fp)

 (defrule delete_lt_rt_punc
 (declare (salience 101))
 ?f0<-(position-cat-man_grp_mng  ?id ?node  ?p&@PUNCT-OpenParen $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?p))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule delete_right_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - -)
 =>
	(retract ?f0)
	(assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule delete_left_punc
 (declare (salience 100))
 ?f0<-(position-cat-man_grp_mng  ?id ?node ?punc&@PUNCT-OpenParen  $?wrd_mng - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
;Added by Mahalaxmi (1-08-2012)
; Eng sen ::It is mainly through light and the sense of vision that we know and interpret the world around us.
; Man tra ::muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama apane cAroM ora ke saMsAra ko samaJawe evaM [usakI vyAKyA karawe hEM] .
; Anu trn ::yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.

 (defrule modify_wrd_mng_for_VP_kriyAmUla_kara_with_modifier
 (declare (salience 91))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF kara|ho ?cat ?g ?no ?p ?c ?suf)
 ?f1<-(head_id-grp_ids ?id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node     $?word  - -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ?m_cat ?m_g ?m_n ?m_p ?m_c ?m_t);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word1 - -);f2
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?n1 1) ?cat1 ?word2 - ?root0)
 (id-node-word-root ?n3 ? ?modifier&usakI|aXika - $?m_root)
 (test (and (member$ ?n2 $?grp1)(member$ ?n3 $?grp1))) 
 (not (modified_word_id ?id))
 =>
;       (retract ?f ?f0 ?f1 ?f2)
        (retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?modifier_pos (member$ ?modifier $?word1))
        (bind $?krimul_word (subseq$ $?word1 (+ ?modifier_pos 1) (length $?word1)))
        (bind $?b_krimul_word (subseq$ $?word1 1 ?modifier_pos))
        (bind $?b_krimul_word_ids (subseq$ $?grp1 1 ?modifier_pos))
        (bind ?r1 (implode$ $?krimul_word))
        (bind ?root (string-to-field (str-cat ?r1"_kara")))
        (assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
        (assert (id-node-root-cat-gen-num-per-case-tam  =(- ?id 1) ?n $?m_root ?m_cat ?m_g ?m_n ?m_p ?m_c ?m_t))
        (assert (position-cat-man_grp_mng   ?id ?node $?krimul_word $?word  - -))
        (assert (position-cat-man_grp_mng   =(- ?id 1) ?n $?b_krimul_word  - -))
        (assert (head_id-grp_ids ?id ?n2 $?grp))
        (assert (head_id-grp_ids  =(- ?id 1) $?b_krimul_word_ids))
        (bind ?word2 (explode$ (str-cat ?word2 " " ?word3)))
        (assert (id-node-word-root ?n2 ?cat2 ?word2 - ?root))
        (assert (modified_word_id ?id))
 )


 ;The area has got the digamber jain temple which houses the birds hospital.
 ;Sunlight is first refracted as it enters a raindrop, which causes the different wavelengths (colors) of white light to separate. --- sUrya kA prakASa sarvapraWama varRA kI bUzxa meM { praveSa karawe } samaya apavarwiwa howA hE , jisake kAraNa Svewa prakASa kI viBinna warafgaxErGya  (varNa) pqWaka ho jAwe hEM.
 (defrule modify_wrd_mng_for_VP_kriyAmUla_kara
 (declare (salience 90))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF kara ?cat ?g ?no ?p ?c ?suf)
 ?f1<-(head_id-grp_ids ?id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node	$?word	- -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ? ? ? ? ? ?);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word1 - -);f2
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?n1 1) ?cat1 ?word2 - ?root0)
 (test (member$ ?n2 $?grp1))
 (not (modified_word_id ?id))
 =>
;	(retract ?f ?f0 ?f1 ?f2)
	(retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
	(bind ?root (string-to-field (str-cat ?r"_kara")))
	(assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
	(assert (position-cat-man_grp_mng   ?id ?node $?word1 $?word  - -))
        (assert (head_id-grp_ids ?id $?grp1 $?grp))
        (bind ?word2 (explode$ (str-cat ?word2 " " ?word3)))
        (assert (id-node-word-root ?n2 ?cat2 ?word2 - ?root))
	(assert (modified_word_id ?id))
 )

 ;Added by Shirisha Manju
 ;The macroscopic domain includes phenomena at the laboratory, terrestrial and astronomical scales.
 (defrule check_prev_word_of_ho_with_anu
 (declare (salience 91))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ho ?cat ?g ?no ?p ?c ?suf)
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word - -)
 (or (root-verbchunk-tam-chunkids ? ? ? $? ?v_id)(pada_info (group_head_id ?v_id)(group_cat infinitive)))
 (id-root ?v_id ?root)
 (id-org_wrd-root-dbase_name-mng ? ? ?root ? $?word1)
 (test (subsetp $?word $?word1))
 (not (combine_prev_word_for_ho_id ?id))
 =>
        (assert (combine_prev_word_for_ho_id ?id))
 )


 ;Terrestrial phenomena lie somewhere in the middle of this range.
 ;pArWiva pariGatanAez isa parisara ke maXya meM kahIM howI hEM 
 ; "kahIM howI hEM" should not be grouped here
 (defrule modify_wrd_mng_for_VP_kriyAmUla_ho
 (declare (salience 90))
 (combine_prev_word_for_ho_id ?id)
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN ho ?cat ?g ?no ?p ?c ?suf)
 ?f1<-(head_id-grp_ids ?id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node     $?word  - -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ? ? ? ? ? ?);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?word1 - -);f2
; (test (neq (implode$ (create$ $?word1)) "kahIM" ))
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?n1 1) ?cat1 ?word2 - ?root0)
 (test (member$ ?n2 $?grp1))
 (not (modified_word_id ?id))
 =>
;       (retract ?f ?f0 ?f1 ?f2)
        (retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?root (string-to-field (str-cat ?r"_ho")))
        (assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
        (assert (position-cat-man_grp_mng   ?id ?node $?word1 $?word  - -))
        (assert (head_id-grp_ids ?id $?grp1 $?grp))
        (printout t ?word2"---"?word3 crlf)
        (bind ?word2 (explode$ (str-cat ?word2 " " ?word3)))
        (assert (id-node-word-root ?n2 ?cat2 ?word2 - ?root))
        (assert (modified_word_id ?id))
 )

 ;------------------------------------------------------------------------------------------------------------------------
 (defrule get_grp_info
 (declare (salience 50))
 (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ? ? ? ? ?suf)
 (position-cat-man_grp_mng    ?id ?node $?wrd_mng ? ?)
 =>
        (bind ?new_mng (implode$ (create$ $?wrd_mng)))
        (bind ?new_mng (remove_character "_" ?new_mng " "))
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?new_mng)) " "))
        (bind ?root (remove_character "_" (implode$ (create$  ?root)) " "))
        (bind ?root (remove_character "-" (implode$ (create$  ?root)) " "))
        (bind ?suf (remove_character "_" (implode$ (create$  ?suf)) " "))
        (bind ?suf (remove_character "-" (implode$ (create$  ?suf)) " "))
	(assert (manual_id-node-word-root-tam ?id ?node ?new_mng - ?root - ?suf ))
 )

 ;------------------------------------------------------------------------------------------------------------------------ 
 (defrule print_man_grp_mng
 (declare (salience -10))
 ?f0<-(manual_id-node-word-root-tam  ?id  ?node $?d)
 =>
	(retract ?f0 )
	(printout ?*vb_file* "(manual_id-node-word-root-tam  " ?id "   "?node"   "(implode$ $?d) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
