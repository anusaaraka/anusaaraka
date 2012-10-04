; This file is written by shirisha Manju
 (defglobal ?*vb_file* = vb_fp)

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
 ;------------------------------------------------------------------------------------------------------------------------
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
 ;Added by Shirisha Manju
 ;The macroscopic domain includes phenomena at the laboratory, terrestrial and astronomical scales.
 ;For example, when the muscle [is relaxed], the focal length is about 2.5 cm and objects at infinity are in sharp focus on the retina. 
 ;uxAharaNa ke lie , jaba [peSiyAz SiWila howI hEM] wo newra leMsa kI Pokasa xUrI lagaBaga 2.5 bau howI hE waWA ananwa xUrI ke piNda xqRtipatala para spaRta Pokasiwa howe hEM.
 (defrule check_prev_word_of_kara_and_ho_with_anu
 (declare (salience 91))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ho|kara ?cat ?g ?no ?p ?c ?suf)
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $? $?word - -)
 (test (neq (length $?word) 0))
 (or (root-verbchunk-tam-chunkids ? ? ? $? ?v_id)(pada_info (group_head_id ?v_id)(group_cat infinitive)))
 (id-root ?v_id ?root)
 (id-org_wrd-root-dbase_name-mng ? ? ?root ? $?word1)
 (test (subsetp $?word $?word1))
 (not (combine_prev_word_for_ho_id-prev_word ?id $?))
 =>
        (assert (combine_prev_word_for_ho_id-prev_word ?id $?word1))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (02-10-12)
 ;Terrestrial phenomena lie somewhere in the middle of this range.
 ;pArWiva pariGatanAez isa parisara ke maXya meM kahIM howI hEM 
 ; "kahIM howI hEM" should not be grouped here
 ; It is mainly through light and the sense of vision that we know and interpret the world around us.
 ; Man tra ::muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama apane cAroM ora ke saMsAra ko samaJawe evaM [usakI vyAKyA karawe hEM] .
 ; Anu trn ::yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
 (defrule modify_wrd_mng_for_VP_kriyAmUla_ho_and_kara
 (declare (salience 90))
 (combine_prev_word_for_ho_id-prev_word ?id $?prev_word ?)
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN ?rt&ho|kara ?cat ?gen ?num ?per ?case ?suf)
 ?f1<-(head_id-grp_ids ?id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node     $?word  - -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ?ct ?g ?no ?p ?c ?s);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?pre $?prev_word $?post - -);f2
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?n1 1) ?cat1 ?word2 - ?root0)
 (test (member$ ?n2 $?grp1))
 (not (modified_word_id ?id))
 =>
        (retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?root (string-to-field (str-cat ?r"_"?rt)))
        (assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?gen ?num ?per ?case ?suf))
        (assert (position-cat-man_grp_mng   ?id ?node $?prev_word $?post $?word  - -))
	(bind ?pos (member$ ?n2 $?grp1))
	(bind $?n_grp1 (subseq$ $?grp1 1 (- ?pos 1))) ; starting to the previous_word_id
	(bind $?n_grp (subseq$ $?grp1 ?pos (length $?grp1))); previous_word_id to the end of group_ids
        (assert (head_id-grp_ids ?id $?n_grp $?grp))
	(if (neq (length $?n_grp1) 0) then
		(assert (head_id-grp_ids =(- ?id 1) $?n_grp1))
		(assert (id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n $?pre ?ct ?g ?no ?p ?c ?s))
		(assert (position-cat-man_grp_mng =(- ?id 1) ?n $?pre - -))
	)
        (bind ?word2 (explode$ (str-cat ?word2 " " ?word3)))
	(bind ?root (remove_character "_" (implode$ (create$  ?root)) " "))
        (bind ?root (remove_character "-" (implode$ (create$  ?root)) " "))
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
