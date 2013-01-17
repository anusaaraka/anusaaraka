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
 (declare (salience 200))
 ?f0<-(position-cat-man_grp_mng  ?id ?node  ?p&@PUNCT-OpenParen $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?p))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;For the car of a particular make, the braking distance was found to be 10 m, 20 m, 34 m and 50 m corresponding to velocities of 11, 15, 20 and 25 m per s which are nearly consistent with the above formula.
 ;kAra ke kisI viSiRta moYdala ke lie viBinna vegoM [11 @PUNCT-Comma  15 @PUNCT-Comma  20 ] waWA 25 @m/@s ke safgawa avaroXana xUriyAz kramaSaH 10 @m @PUNCT-Comma  20 @m @PUNCT-Comma  34 @m waWA 50 @m pAI gaI hEM jo uparokwa samIkaraNa se prApwa mAnoM ke lagaBaga safgawa hEM  @PUNCT-Dot
 (defrule delete_right_punc
 (declare (salience 190))
 ?f0<-(position-cat-man_grp_mng  ?id ?node $?wrd_mng  ?punc&@PUNCT-Comma|@PUNCT-Dot|@PUNCT-QuestionMark|@PUNCT-DoubleQuote|@PUNCT-DoubleQuote|@PUNCT-Semicolon|@PUNCT-Colon|@PUNCT-SingleQuote|@PUNCT-OpenParen|@PUNCT-ClosedParen|@PUNCT-Exclamation|@SYM-Dollar $?w - -)
 =>
	(retract ?f0)
	(assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  $?w - -))
	(assert (manual_id-right_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule delete_left_punc
 (declare (salience 190))
 ?f0<-(position-cat-man_grp_mng  ?id ?node ?punc&@PUNCT-OpenParen  $?wrd_mng - -)
 =>
        (retract ?f0)
        (assert (position-cat-man_grp_mng  ?id ?node $?wrd_mng  - -))
        (assert (manual_id-left_punc ?id ?punc))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Finally, to understand the relative nature of motion, we introduce the concept of relative velocity.
 ;anwawaH gawi kI ApekRika prakqwi ko samaJane ke lie hama ApekRika gawi kI XAraNA praswuwa karezge.
 (defrule modifiy_root
 (declare (salience 120))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF karezge ?cat ?g ?no ?p ?c ?suf)
 ?f0<-(position-cat-man_grp_mng ?id  ?n karezge - -)
 (man_word-root-cat	karezge	?root 	v)
 =>
	(retract ?f)
	(if (eq ?suf -) then
		(assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c 0))
	else
		(assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?g ?no ?p ?c ?suf))
	)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule  incrementing_id_for_just_after_the_splitted_verb
 (declare (salience 1001))
 ?f<-(map_prev-id-pres-id ?prev_id ?pres_id)
 ?f0<-(position-cat-man_grp_mng ?prev_id $?w)
 ?f1<-(id-node-root-cat-gen-num-per-case-tam ?prev_id1 ?node ?root ?c ?g ?n ?p ?case ?t)
 ?f4<-(id-node-root-cat-gen-num-per-case-tam ?prev_id ?node1 ?root1 ?c1 ?g1 ?n1 ?p1 ?case1 ?t1)
 ?f2<-(head_id-grp_ids ?prev_id $?gids)
 (test (eq ?prev_id1 ?prev_id))
 (test (neq ?root ?root1))
 ?f3<-(modified_id-word ?prev_id ?root)
 =>
	(retract ?f ?f0 ?f2 ?f4)
        (assert (position-cat-man_grp_mng ?pres_id $?w))
        (assert (id-node-root-cat-gen-num-per-case-tam ?pres_id ?node1 ?root1 ?c1 ?g1 ?n1 ?p1 ?c1 ?t1))
        (assert (head_id-grp_ids ?pres_id $?gids))
        (assert (map_prev-id-pres-id ?pres_id =(+ ?pres_id 1)))
        (assert (mapped_prev-id-pres-id ?prev_id ?pres_id))
        (assert (modified_id-word1 ?pres_id ?root1))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule increment_id
 (declare (salience 1000))
 ?f<-(map_prev-id-pres-id ?prev_id ?pres_id)
 ?f0<-(position-cat-man_grp_mng ?prev_id $?w)
 ?f1<-(id-node-root-cat-gen-num-per-case-tam ?prev_id ?node ?root ?c ?g ?n ?p ?case ?t)
 ?f2<-(head_id-grp_ids ?prev_id $?gids)
 (not (modified_id-word1 ?prev_id ?root))
 (not (modified_id-word ?prev_id ?root))
 =>
	(retract ?f ?f0 ?f1 ?f2)
	(assert (position-cat-man_grp_mng ?pres_id $?w))
        (assert (id-node-root-cat-gen-num-per-case-tam ?pres_id ?node ?root ?c ?g ?n ?p ?c ?t))
        (assert (head_id-grp_ids ?pres_id $?gids))
        (assert (map_prev-id-pres-id ?pres_id =(+ ?pres_id 1)))
        (assert (mapped_prev-id-pres-id ?prev_id ?pres_id))
	(assert (modified_id-word1 ?pres_id ?root))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule rm_modify_id
 (declare (salience 900))
 ?f<-(map_prev-id-pres-id $?)
 ?f1<-(modified_id-word ?pres_id ?root)
 =>
 	(retract ?f ?f1)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule rm_modify_id1
 (declare (salience 900))
 ?f<-(map_prev-id-pres-id $?)
 ?f1<-(modified_id-word1 ?pres_id ?root)
 =>
        (retract ?f ?f1)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Obviously, these tables are not exhaustive.  --- spaRta hE ki ye sUciyAz viswqwa nahIM hEM.
 ;Thus, it is not necessary to use vector notation for discussing motion of objects in one-dimension. --- awaeva, vaswu kI eka - vimIya gawi ke vivaraNa ke lie saxiSa safkewa kA upayoga AvaSyaka nahIM howA hE .
 (defrule shallow_parser_correction_rule
 (declare (salience 150))
 ?f<-(position-cat-man_grp_mng ?id ?node&VGF|VGNN|VGNF $?word ?a ?b)
 (test (or (eq $?word (create$ nahIM hEM)) (eq $?word (create$  nahIM hE))(eq $?word (create$  nahIM howA hE))))
; (test (or (eq $?word (create$ nahIM hEM)) (eq $?word (create$  nahIM hE))))
 ?f1<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ?root ?cat ?g ?no ?p ?c ?suf)
 ?f2<-(head_id-grp_ids ?id ?nahIM_id ?hEM_id $?grp_ids)
 =>
	(retract ?f ?f1 ?f2)
	(assert (position-cat-man_grp_mng ?id POS nahIM - -))
        (bind $?n_word (delete-member$ $?word nahIM))
;	(assert (position-cat-man_grp_mng =(+ ?id 1) ?node hEM ?a ?b))
	(assert (position-cat-man_grp_mng =(+ ?id 1) ?node $?n_word ?a ?b))
	(assert (id-node-root-cat-gen-num-per-case-tam ?id POS nahIM - - - - - -))	 
	(assert (id-node-root-cat-gen-num-per-case-tam =(+ ?id 1) ?node ?root ?cat ?g ?no ?p ?c 0))	 
        (assert (head_id-grp_ids ?id ?nahIM_id))
        (assert (head_id-grp_ids  =(+ ?id 1) ?hEM_id $?grp_ids))
	(assert (map_prev-id-pres-id =(+ ?id 1) =(+ ?id 2)))
	(assert (modified_id-word =(+ ?id 1) ?root))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;The macroscopic domain includes phenomena at the laboratory, terrestrial and astronomical scales.
 ;For example, when the muscle [is relaxed], the focal length is about 2.5 cm and objects at infinity are in sharp focus on the retina. 
 ;uxAharaNa ke lie , jaba [peSiyAz SiWila howI hEM] wo newra leMsa kI Pokasa xUrI lagaBaga 2.5 bau howI hE waWA ananwa xUrI ke piNda xqRtipatala para spaRta Pokasiwa howe hEM.
 (defrule check_prev_word_of_kara_and_ho_with_anu
 (declare (salience 91))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ho|kara|karA|xe ?cat ?g ?no ?p ?c ?suf)
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $? $?word - -)
 (test (neq (length $?word) 0))
 (or (root-verbchunk-tam-chunkids ? ? ? $? ?v_id)(pada_info (group_head_id ?v_id)(group_cat infinitive))(id-cat_coarse ?v_id verb))
 (id-root ?v_id ?root)
 (id-org_wrd-root-dbase_name-mng ? ? ?root ? $?word ?kar&kara|ho|karA|xe)
 (not (got_prev_id ?id))
 =>
        (assert (combine_prev_word_for_ho_id-prev_word ?id $?word ?kar))
	(assert (got_prev_id ?id))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (02-10-12)
 ;Terrestrial phenomena lie somewhere in the middle of this range.
 ;pArWiva pariGatanAez isa parisara ke maXya meM kahIM howI hEM 
 ; "kahIM howI hEM" should not be grouped here
 ; It is mainly through light and the sense of vision that we know and interpret the world around us.
 ; Man tra ::muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama apane cAroM ora ke saMsAra ko samaJawe evaM [usakI vyAKyA karawe hEM] .
 ; Anu trn ::yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
 ;Using the basic laws of reflection and refraction, we shall study the image formation by plane and spherical reflecting and refracting surfaces. 
 ;Anu tran :: prawibimba ke Ora apavarwana ke buniyAxI niyamoM kA upayoga kara, hama UparI wala xarSA huA Ora modawA huA samawala waka Ora golIya waka prawimA suvyavasWiwa kramaa kA aXyayana karezge.
 ;Man tran :: parAvarwana waWA apavarwana ke mUla niyamoM kA upayoga karawe hue hama samawala waWA golIya parAvarwI evaM apavarwI pqRToM xvArA prawibimboM kI racanA kA aXyayana karezge.
 ;Eng sen  :: In principle they provide portable standard.
 ;Anu tran :: sixXAnwawaH ve suvAhya AxarSa xewe hEM.
 ;Man tran :: sixXAnwawaH ve eka subAhya mAnaka upalabXa karAwI hEM.
 ;Eng sen  :: Hence clock 2 is to be preferred to clock 1.
 ;Anu tran :: isa kAraNa se GadI 2 GadI 1 ko pasanxa kiyA jAnA hE.
 ;Man tran :: awaH GadI 1 kI wulanA meM GadI 2 ko varIyawA xI jAegI.
 
 (defrule modify_wrd_mng_for_VP_kriyAmUla_ho_and_kara
 (declare (salience 90))
 (combine_prev_word_for_ho_id-prev_word ?id $?prev_word ?)
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ?rt&ho|kara|karA|xe ?cat ?gen ?num ?per ?case ?suf)
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
 ;Note that the second method is better since we do not have to worry about the path of the motion as the motion is under constant acceleration.
 ;XyAna xIjie ki xUsarI viXi pahalI se SreRTa hE kyofki isameM hameM gawi ke paWa kI [cinwA nahIM karanI hE] kyofki vaswu sWira wvaraNa se gawimAna hE.
 (defrule modify_wrd_mng_for_VP_kriyAmUla_ho_and_kara_with_nahIM
 (declare (salience 90))
 (combine_prev_word_for_ho_id-prev_word ?id $?prev_word ?)
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ?rt&ho|kara|karA|xe ?cat ?gen ?num ?per ?case ?suf)
 ?f1<-(head_id-grp_ids ?id ?nahIM_id $?grp) ;?4
 ?f2<-(position-cat-man_grp_mng   ?id ?node   nahIM $?word  - -);f0
 ?f3<-(id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n ?r ?ct ?g ?no ?p ?c ?s);f1
 ?f4<-(head_id-grp_ids =(- ?id 1) $?grp1);f3
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $?pre $?prev_word $?post - -);f2
 ?f7<-(id-node-word-root ?n1 ?cat2 ?word3 - ?root1)
 (test (member$ ?n1 $?grp))
 ?f6<-(id-node-word-root ?n2&=(- ?nahIM_id 1) ?cat1 ?word2 - ?root0)
 (test (member$ ?n2 $?grp1))
 (not (modified_word_id ?id))
 =>
        (retract ?f ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?root (string-to-field (str-cat ?r"_"?rt)))
        (assert (id-node-root-cat-gen-num-per-case-tam ?id ?node ?root ?cat ?gen ?num ?per ?case ?suf))
        (assert (position-cat-man_grp_mng   ?id ?node $?prev_word $?post nahIM $?word  - -))
        (bind ?pos (member$ ?n2 $?grp1))
        (bind $?n_grp1 (subseq$ $?grp1 1 (- ?pos 1))) ; starting to the previous_word_id
        (bind $?n_grp (subseq$ $?grp1 ?pos (length $?grp1))); previous_word_id to the end of group_ids
        (assert (head_id-grp_ids ?id $?n_grp ?nahIM_id $?grp))
        (if (neq (length $?n_grp1) 0) then
                (assert (head_id-grp_ids =(- ?id 1) $?n_grp1))
                (assert (id-node-root-cat-gen-num-per-case-tam =(- ?id 1) ?n $?pre ?ct ?g ?no ?p ?c ?s))
                (assert (position-cat-man_grp_mng =(- ?id 1) ?n $?pre - -))
        )
        (bind ?word2 (explode$ (str-cat ?word2 " nahIM " ?word3)))
        (bind ?root (remove_character "_" (implode$ (create$  ?root)) " "))
        (bind ?root (remove_character "-" (implode$ (create$  ?root)) " "))
        (assert (id-node-word-root ?n2 ?cat2 ?word2 - ?root))
        (assert (modified_word_id ?id))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Electromagnetic waves of frequencies higher than 30 MHz penetrate the ionosphere and escape.
 ;30 @MHz se ucca Avqwwi kI vExyuwacumbakIya warafgeM , AyanamaNdala kA Bexana karake [palAyana kara] jAwI hEM.
 (defrule check_prev_word_of_kara_in_dic
 (declare (salience 80))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ?kar&kara ?cat ?g ?no ?p ?c ?suf)
; ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF ?kar&ho|kara ?cat ?g ?no ?p ?c ?suf)
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $? $?word - -)
 (test (neq (length $?word) 0))
 (or (root-verbchunk-tam-chunkids ? ? ? $? ?v_id)(pada_info (group_head_id ?v_id)(group_cat infinitive))(id-cat_coarse ?v_id verb))
 (id-root ?v_id ?root)
 (id-org_wrd-root-dbase_name-mng ? ? ?root ? $?word)
 (not (combine_prev_word_for_ho_id-prev_word ?id $?))
 =>
        (assert (combine_prev_word_for_ho_id-prev_word ?id $?word ?kar))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Electromagnetic waves of frequencies higher than 30 MHz penetrate the ionosphere and escape.
 ;30 @MHz se ucca Avqwwi kI vExyuwacumbakIya warafgeM , AyanamaNdala kA [Bexana karake] palAyana kara jAwI hEM.
 (defrule check_prev_word_of_kara
 (declare (salience 70))
 ?f<-(id-node-root-cat-gen-num-per-case-tam ?id ?node&VGF|VGNN|VGNF kara ?cat ?g ?no ?p ?c ?suf)
 ?f5<-(position-cat-man_grp_mng =(- ?id 1) ?n $? $?word - -)
 (test (neq (length $?word) 0))
 (not (combine_prev_word_for_ho_id-prev_word ?id $?))
 =>
        (assert (combine_prev_word_for_ho_id-prev_word ?id $?word kara))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
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
