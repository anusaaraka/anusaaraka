;This file is written by Shirisha Manju

;(assert (inf_verbs (create$ )))
(defglobal ?*lf-f* = lf)
(defglobal ?*catastrophe_file* = catas_fp)
(defglobal ?*align_debug* = a_d)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))


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

(defrule get_derivational_mng
(declare (salience 2550))
(id-root ?id ?root)
(test (neq (gdbm_lookup "derivational_mng.gdbm" ?root) "FALSE"))
=>	
	(bind ?new_mng (gdbm_lookup "derivational_mng.gdbm" ?root))
	(bind ?slh_index (str-index "/" ?new_mng))
	(if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
		(while (neq ?slh_index FALSE)
                	(bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (assert (id-root-derivational_mngs ?id ?root ?new_mng1))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
	)
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (assert (id-root-derivational_mngs ?id ?root ?new_mng1))
)
;===================================================================================
(defrule map_resolved_align_facts
(declare (salience 2501))
?f1<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng)(man_meaning $?mng))
(anu_id-man_id-source ?aid ?mid ?)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
        (retract ?f1 )
	(if (eq (length $?amng) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid $?mng))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?mng))
        )
)
;---------------------------------------------------------------------------------------
(defrule map_align_facts
(declare (salience 2500))
?f1<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng)(man_meaning $?mng))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
        (retract ?f1 )
        (if (eq (length $?amng) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid $?mng))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?mng))
        )
	(assert (anu_id-man_id-source ?aid ?mid Oth_layer))
)
;=================================== modify/remove  anu output ========================
;if mng is null then assert hyphen
(defrule modify_anu_out
(declare (salience 2450))
?f0<-(id-Apertium_output ?aid )
=>
	(retract ?f0)
	(assert (id-Apertium_output ?aid -))
)
(defrule rm_SYMBOL_fact
(declare (salience 2450))
?f0<-(id-Apertium_output ?aid SYMBOL EMDASH $?)
=>
	(retract ?f0)
)

(defrule rm_aux_id
(declare (salience 2451))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f0<-(id-Apertium_output ?id ?)
=>
	(retract ?f0)
)
;============================= align with derivational mng ================================
;Karna is the half brother of Arjuna, as he was born of Kunti before her [marriage] with King Pandu.
;karNa arjuna kA AXA BAI hE kyoMki vaha kunwI ke garBa se rAjA pANdu ke sAWa [vivAhiwa hone] ke pUrva uwpanna huA WA  .
(defrule align_with_derivationl_dic
(declare (salience 2449))
?f2<-(left_over_ids $?l ?mid $?l1)
(or (manual_word_info (head_id ?mid)(word $?mng)(root_components $?root)(vibakthi_components ?v $?vib))
    (manual_word_info (head_id ?mid)(word $?mng)(root_components $?root ?m&kara|ho)(vibakthi_components ?v $?vib))
)
(or (id-root-derivational_mngs ?aid ? $?root)
    (id-root-derivational_mngs ?aid ? $?root ?k&kara|ho)
)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(id-Apertium_output ?aid $?am)
=>
	(retract ?f1 ?f2)
        (assert (left_over_ids $?l $?l1))
	(if (neq ?v 0) then
		(bind $?v1 (create$ ?v $?vib))
		(if (neq (member$ $?v1 $?mng) FALSE) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?mng ))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?mng ?v $?vib ))
		)
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?mng))
	)
	(assert (anu_id-man_id-source ?aid ?mid align_with_derivationl_mng))
)
;-------------------------------------------------------------------------------------------------	
(defrule mv_prep_align_to_head_if_not_align
(declare (salience 2440))
(pada_info (group_ids ?h) (preposition ?pid))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?pid $?amng ? - ?mid $?mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid1 ?m)
(not (added_group_end ?h))
(not (added_group_end ?pid))
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid ?m $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen ))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?pid - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
	(assert (added_group_end ?h))
	(assert (added_group_end ?pid))	
	(assert (anu_id-man_id-source ?h ?mid mv_prep_align_to_head))
)
;====================================== special rules ===============================

;Since every living entity is an individual soul, each is changing his body [every moment], manifesting sometimes as a child, sometimes as a youth, and sometimes as an old man. 
;prawyeka jIva eka vyaRti AwmA hE . vaha [prawikRaNa] apanA SarIra baxalawA rahawA hE – kaBI bAlaka ke rUpa meM @PUNCT-Comma kaBI yuvA waWA kaBI vqxXa puruRa ke rUpa meM  .
(defrule align_comp_man_word_for_every
(declare (salience 1100))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word ?mng)(vibakthi_components ?v $?vib))
(test (neq (numberp ?mng) TRUE))
(test (eq (sub-string 1 5 ?mng) "prawi"))
(id-word ?aid every)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-root ?aid1&:(=(+ ?aid 1) ?aid1) ?r)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(database_info (root ?r) (meaning ?mng1) )
(test (eq (string-to-field (str-cat "prawi" ?mng1)) ?mng))
?f1<-(id-Apertium_output ?aid $?a)
?f2<-(id-Apertium_output ?aid1 $?a1)
=>
        (retract ?f ?f1 ?f2)
        (assert (left_over_ids $?p $?p1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?a1 - ?id ?mng))
        (assert (group_ids-start_id-end_id ?aid ?aid1 - ?aid ?aid1))
        (assert (anu_id-man_id-source ?aid1 ?id align_comp_man_word_for_every))
)
;Arjuna, however, could see the [evil consequences] and could not accept the challenge.
;kiMwu arjuna ko wo [xuRpariNAma] xiKAI pada rahe We awaH vaha isa lalakAra ko svIkAra nahIM kara sakawA  .
(defrule identify_hnd_comp
(declare (salience 1100))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $? - ?mid ?mng)
(test (or (eq (sub-string 1 3 ?mng) "xuR")(eq (sub-string 1 3 ?mng) "sax")))
(pada_info (group_ids $? ?adj ?aid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?adj $?))
(database_info (meaning ?mng1) (group_ids ?aid))
(test (eq (string-to-field (sub-string 4 (length ?mng) ?mng)) ?mng1))
?f1<-(id-Apertium_output ?adj $?)
=>
	(retract ?f1)
	(assert (group_ids-start_id-end_id ?adj ?aid - ?adj ?aid))
)

;================= modify noun pada ==============================

;[Most people] find receiving feedback in front of a group [of people] humiliating. 
;[aXikAMSa logoM ko] xusaroM ke sAmane apanI niMxA (PIdabEYka) apamAnajanaka lagawA hE.
(defrule modify_using_pada
(declare (salience 1091))
(pada_info (group_cat PP) (group_ids $? ?adj ?h))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?adj $? ?a - ?mid ?m $?)
(man_word-root-cat ?m ? ~p)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $? ?a1 - =(+ ?mid 1) $?mng)
?f1<-(hindi_id_order $?p ?h $?p1)
(id-Apertium_output ?h $?am)
(id-cat_coarse ?aid1 ?c&~verb&~PropN)
(not (id-HM-source-grp_ids ? ? Database_compound_phrase_root_mng ?adj ?h))
(not (prep_id-relation-anu_ids ? viSeRya-of_saMbanXI ?h ?aid1))
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - =(+ ?mid 1) $?mng))
	(assert	(hindi_id_order $?p $?p1))	
)
;O Krsna, maintainer of the people, I have heard by disciplic succession that those who destroy [family traditions] dwell always in hell.
;he prajApAlaka kqRNa ! mEneM guru-paramparA se sunA hE ki jo loga [kula-Xarma] kA vinASa karawe hEM ,ve saxEva naraka meM vAsa karawe hEM. 
(defrule modify_hyphen_word
(declare (salience 1092))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?mng)
(score (anu_id ?aid) (man_id ?mid) (rule_names partial_match_for_hyphen_word_left))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1&:(=(+ ?aid 1) ?aid1) $? ? - ?mid1 $?)
(id-HM-source-grp_ids ? $? ?aid ?aid1)
?f1<-(left_over_ids $?l)
(not (added_group_end ?aid1))
=>
	(retract ?f0 ?f1)
	(bind $?l (sort > (create$ $?l ?mid1)))
        (assert (left_over_ids $?l))
	(assert (removed_man_id_with-anu_id ?mid1 ?aid1))
)

;==================== Align with relation/pada  ==============================

;At that time Arjuna, [the son of Pandu], seated in the chariot bearing the flag marked with Hanumaan, took up his bow and prepared to shoot his arrows.
;usa samaya hanumAna se afkiwa XvajA lage raWa para AsIna [pANdupuwra] arjuna apanA XanuRa uTA kara wIra calAne ke lie uxyawa huA  .
(defrule align_with_viSeRya-of_saMbanXI
(declare (salience 1091))
(prep_id-relation-anu_ids ? viSeRya-of_saMbanXI ?v ?s)
(or (id-HM-source-grp_ids ?v ?mng ? ?) 
    (database_info (components ?mng) (group_ids ?v)))
?f<-(id-Apertium_output ?s ?mng1 ?vib&ke|kI|kA)
?f1<-(id-Apertium_output ?v $?)
(id-cat_coarse ?s PropN)
(manual_id-word ?mid ?m)
(test (eq (string-to-field (str-cat ?mng1 ?mng)) ?m))
?f2<-(left_over_ids $?l ?mid $?l1)
(pada_info (group_head_id ?v)(group_ids ?start $?i))
=>
	(retract ?f ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s ?mng1 ?vib -  ?mid  ?m))
	(assert (group_ids-start_id-end_id ?start $?i =(- ?s 1)  ?s - ?start ?s))
	(assert (anu_id-man_id-source ?s ?mid align_with_viSeRya-of_saMbanXI))
	(assert (left_over_ids $?l $?l1))
)
;----------------------------------------------------------------------------------
;he kqRNa ! muJe wo kevala [amafgala ke kAraNa] xiKa rahe hEM  .
;I see only [causes of misfortune], O Krsna, killer of the Kesi demon.
(defrule align_with_viSeRya-of_saMbanXI1
(declare (salience 1091))
?f<-(left_over_ids $?l ?mid $?l1)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v&ke|kA)(group_ids $? ?lid))
(manual_word_info (head_id ?mid1) (group_ids =(+ ?lid 1) $?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?vi $? - ?mid1 $?)
(prep_id-relation-anu_ids ? viSeRya-of_saMbanXI ?vi ?s)
?f1<-(id-Apertium_output ?s $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s $?))
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s $?am -  ?mid1  $?mng ?v))
        (assert (anu_id-man_id-source ?s ?mid align_with_viSeRya-of_saMbanXI))
        (assert (left_over_ids $?l $?l1))
)
;----------------------------------------------------------------------------------
;A man fallen in the ocean of nescience can not be saved simply by rescuing [his outward dress] — the gross material body. 
;ajFAna-sAgara meM gire hue manuRya ko kevala [usake bAharI pahanAve] arWAw sWUla SarIra kI rakRA karake nahIM bacAyA jA sakawA.
(defrule align_using_RaRTI_rel
(declare (salience 1091))
?f1<-(left_over_ids $?l ?mid1 $?l1)
(chunk_name-chunk_ids ? $? ?mid1)
(prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa ?v ?aid) 
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?v ?a $? - ?mid $?)
(chunk_name-chunk_ids ? $?ids)
(test (or (and (member$ ?mid $?ids)(member$ (+ ?mid1 1) $?ids)) 
	  (and (member$ ?mid $?ids)(eq ?mid (+ ?mid1 1)))))
(id-Apertium_output ?aid $?am)
(manual_word_info (head_id ?mid1) (word ?mng))
(or (man_word-root-cat ?mng ? p)(man_word-root-cat ?mng apanA ?))
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid1 ?mng))
;        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?mng))
        (assert (anu_id-man_id-source ?aid ?mid RaRTI_viSeRaNa))
)


;I will not be able to dispel it even if I win a prosperous, [unrivaled kingdom] on earth with sovereignty like the demigods in heaven.
;svarga para xevawAoM ke AXipawya kI waraha isa XanaXAnya-sampanna sArI pqWvI para [niRkaNtaka rAjya] prApwa karake BI mEM isa Soka ko xUra nahIM kara sakUzgA
(defrule align_with_pada
(declare (salience 1091))
(pada_info (group_head_id ?h) (group_ids $? ?aid ?h) (group_cat ~infinitive))
(id-cat_coarse ?aid ~determiner)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am ? -  ?id $?)
(manual_word_info (head_id ?mid) (group_ids $? ?lid&:(=(- ?id 1) ?lid)))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?))
?f2<-(left_over_ids $?l ?mid $?l1)
?f1<-(id-Apertium_output ?aid $?amng)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi_components 0))
(test (neq (integerp (member$ $?mng (create$ wo hama lIjie apanI una Axi isalie))) TRUE)) 
=>
	(retract ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng -  ?mid  $?mng))
	(assert (anu_id-man_id-source ?aid ?mid align_with_pada))
	(assert (left_over_ids $?l $?l1))
)

;================= Align with verb count ==========================
(defrule get_unaligned_verb_ids
(declare (salience 1092)) 
?f<-(man_verb_count-verbs ?c  $?m ?mid $?m1)
?f1<-(anu_verb_count-verbs ?c $?a ?aid $?a1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?mng)
=>
        (retract ?f ?f1)
        (assert (man_verb_count-verbs ?c  $?m $?m1))
        (assert (anu_verb_count-verbs ?c $?a $?a1))
)

(defrule grp_verb_alignment_with_count
(declare (salience 946))
?f0<-(man_verb_count-verbs ?c ?mid $?m $?m1)
?f1<-(anu_verb_count-verbs ?c ?aid $?a $?a1)
(manual_id-word ?mid1&:(=(- ?mid 1) ?mid1) ?)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?anu - ?mid1 ?w)
(or (score (anu_id ?aid) (man_id ?mid1)(heuristics $? ?h&hindi_wordnet_match|anu_exact_match|dictionary_match $?))
(score (anu_id ?aid) (man_id ?mid1) (rule_names $? wordnet_partial_match $?)))
(chunk_name-chunk_ids-words VGF ?mid $? - ?w1 $?mng)
(man_word-root-cat ?w1 ?r&nahIM|kara|xe|WA|ho|na ?)
=>
	(retract ?f0 ?f1 ?f2)
	(assert (man_verb_count-verbs ?c  $?m $?m1))
        (assert (anu_verb_count-verbs ?c $?a $?a1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?anu - ?mid ?w ?w1 $?mng))
	(assert (grouped_vid ?mid)) 
)
;krsna [never expected] such things from the son of His aunt Prthaa.
;kqRNa ko apanI buA pqWA ke puwra se kaBI BI EsI [ASA nahIM WI]
(defrule grp_verb_alignment_with_count1
(declare (salience 946))
?f0<-(man_verb_count-verbs ?c ?mid $?m $?m1)
?f1<-(anu_verb_count-verbs ?c ?aid $?a $?a1)
(manual_id-word ?mid0&:(=(- ?mid 1) ?mid0) nahIM)
(manual_id-word ?mid1&:(=(- ?mid0 1) ?mid1) ?)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?anu - ?mid1 ?w)
(or (score (anu_id ?aid) (man_id ?mid1)(heuristics $? ?h&hindi_wordnet_match|anu_exact_match|dictionary_match $?))
(score (anu_id ?aid) (man_id ?mid1) (rule_names $? wordnet_partial_match $?)))
(chunk_name-chunk_ids-words VGF ?mid $? - ?w1 $?mng)
(man_word-root-cat ?w1 ?r&nahIM|kara|xe|WA|ho|na ?)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (man_verb_count-verbs ?c  $?m $?m1))
        (assert (anu_verb_count-verbs ?c $?a $?a1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?anu - ?mid ?w nahIM ?w1 $?mng))
        (assert (grouped_vid ?mid))
        (assert (grouped_vid ?mid0))
)


;this rule will execute after restricted is verified
(defrule get_verb_alignment_with_count
(declare (salience 945))
?f0<-(man_verb_count-verbs ?c ?mid $?m $?m1)
?f1<-(anu_verb_count-verbs ?c ?aid $?a $?a1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?))
(not (and (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?) (score (anu_id ?aid)(heuristics $? dictionary_match|hindi_wordnet_match|anu_root_match_without_vib $?))))
(not (and (anu_id-anu_mng-sep-man_id-man_mng_tmp $? - ?mid $?)(score (man_id ?mid)(heuristics $? dictionary_match|hindi_wordnet_match|anu_root_match_without_vib $?))(anu_id-man_id-source ? ?mid ?s1&left_over_same_wt_align|resolve_with_vcount)))
?f<-(id-Apertium_output ?aid $?amng)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi_components ?v $?vib))
=>
	(retract ?f0 ?f1 ?f)
	(if (eq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng -  ?mid  $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng -  ?mid  $?mng ?v $?vib))
	)	
	(assert (anu_id-man_id-source ?aid ?mid align_with_verb_count))
	(assert (man_verb_count-verbs ?c $?m $?m1))
	(assert (anu_verb_count-verbs ?c $?a $?a1))
)
	
(defrule rm_aligned_ids_from_leftover
(declare (salience 1090))
(or (anu_id-man_id-source ?aid ?mid align_with_verb_count)(grouped_vid ?mid))
?f<-(left_over_ids $?l ?mid $?l1)
=>
	(retract ?f)
	(assert (left_over_ids $?l $?l1))
)

(defrule rm_repeated_aligned_id_for_verb_count
(declare (salience 1090))
(anu_id-man_id-source ?aid ?mid align_with_verb_count)
?f<-(left_over_ids $?l)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ?a - ?mid1 $?)
(test (neq ?mid ?mid1))
=>
	(retract ?f ?f1)
	(bind $?l (sort > (create$ $?l ?mid1)))
        (assert (left_over_ids $?l))
)	

;================== get possible hindi roots =====================
(defrule get_man_poss_roots
(declare (salience 1090))
;(declare (salience 2400))
(man_word-root-cat ?word ?root ?c)
(man_word-root-cat ?word ?root1 ?)
(test (neq ?root ?root1))
(not (man_word-poss_roots $? ?root $?))
=>
	(assert (man_word-poss_roots ?word ?root ?root1))
)

(defrule get_man_poss_roots1
(declare (salience 2350))
?f0<-(man_word-poss_roots ?word $?roots)
(man_word-root-cat ?word ?root ?)
(test (eq (member$ ?root $?roots) FALSE))
=>
	(retract ?f0)
	(assert (man_word-poss_roots ?word $?roots ?root))
)

(defrule get_man_poss_roots2
(declare (salience 1000))
;(declare (salience 2300))
(man_word-root-cat ?word ?root ?)
(not (man_word-poss_roots $? ?root $?))
=>
        (assert (man_word-poss_roots ?word ?root))
)

;============== Get leftover words to check transliteration words =================

(defglobal ?*sen* = (create$ ))
(defglobal ?*esen* = (create$ ))

(defrule get_left_over_hindi_words
(declare (salience 944))
;(declare (salience 950))
;(declare (salience 2200))
(left_over_ids $? ?id $?)
(manual_id-word ?id ?w&~wo&~vaha) 
(not (hlist $?))
=>
 	(if (eq (member$ ?w ?*sen*) FALSE) then
		(bind ?*sen* (create$ ?*sen* ?w))
	)
)
;----------------------------------------------------------------
(defrule get_left_over_eng_words
;(declare (salience 2150))
(declare (salience 910))
?f0<-(hindi_id_order $?p ?id $?p1)
(id-word ?id ?w)
(not (alignment (anu_id ?id))) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?))
(not (hlist $?))
(not (eng_msg_printed))
=>
	(if (eq (integerp (member$ ?w (create$ to the of that))) TRUE) then
		(retract ?f0)
		(assert (hindi_id_order $?p $?p1))
	else
	        (if (eq (member$ ?w ?*esen*) FALSE) then
			(if (eq (sub-string (- (length ?w) 1) (length ?w) ?w) "'s") then
				(bind ?nw (string-to-field (sub-string 1 (- (length ?w) 2) ?w)))
	        	        (bind ?*esen* (create$ ?*esen* ?nw))
			else
	        	        (bind ?*esen* (create$ ?*esen* ?w))
			)
        	)
	)
)
;----------------------------------------------------------------
(defrule get_trans_file
(declare (salience 900))
;(declare (salience 2100))
(left_over_ids $? ?id $?)
(not (hlist $?))
=>
	(assert (elist ?*esen*))
	(assert (elist1 ?*esen*))
	(assert (hlist ?*sen*))
	(save-facts "trans_eng_file.txt" local elist)
	(save-facts "trans_hnd_file.txt" local hlist)
)

;==================== Get left over words to check count diff ============== 
(defglobal ?*mngs* = (create$ ))
(defglobal ?*mngs1* = (create$ ))
(defglobal ?*wrlist* = (create$ ))
(defglobal ?*clist* = (create$ ))

;remove words not in dictionary
(defrule rm_no_dic_entry_word
(declare (salience 2090))
?f0<-(elist1 $?p ?word $?post)
(id-word ?id ?word)
(not (database_info (components ?mng) (group_ids ?id)))
=>
	(retract ?f0)
	(assert (elist1 $?p $?post))
)
;----------------------------------------------------------------
;get dictionay mngs for leftover words  (correct words list)
(defrule get_left_over_wrd_mngs
(declare (salience 2080))
(elist1 $?p ?word $?post)
(id-word ?id ?word)
(database_info (components ?mng) (group_ids ?id))
(not (got_mng ?word ?mng))
=>
        (bind ?*mngs* (create$ ?*mngs* ?mng))
        (assert (got_mng ?word ?mng))
)
;----------------------------------------------------------------
;get wrong wrods list using hindi spell checker (wrong words list)
(defrule get_wrong_words_list
(declare (salience 2070))
(hlist $? ?w $?)
?f0<-(wrong_word    ?w)
=>
	(retract ?f0)
	(bind ?*wrlist* (create$ ?*wrlist* ?w))
)
;----------------------------------------------------------------
(defrule get_wrong_words_list_fact
(declare (salience 2060))
(elist1 $?)
=>
	(assert (hlist1 ?*wrlist*))
)
;----------------------------------------------------------------
;generate combinations for correct and wrong words 
(defrule get_combinations
(declare (salience 2060))
?f0<-(hlist1 ?mng $?s)
=>
	(bind ?len (length ?*mngs*))
	(loop-for-count (?i 1 ?len)
		(bind ?w (nth$ ?i ?*mngs*))
		(bind ?*mngs1* (create$ ?*mngs1* ?mng))
	)
	(retract ?f0)
	(assert (hlist1 $?s))
	(bind ?*clist* (create$ ?*clist* ?*mngs*))
)
;---------------------------------------------------------------
(defrule get_hnd_mngs_file
(declare (salience 2060))
(hlist1)
(not (hmngs $?))
=>
	(assert (clist ?*clist*))
	(assert (wlist ?*mngs1*))
	(save-facts "correct_list_tmp.txt" local clist)
	(save-facts "wrong_list_tmp.txt" local wlist)
)

;============================= generate trasns match and count diff facts ======================-
(defrule get_trans_and_count_diff_facts
(declare (salience 2050))
(elist $?sen)
=>
	(system "sed 's/^(elist//g' trans_eng_file.txt | sed 's/)$//g'| sed 's/^ //g' > trans_eng_file1.txt")
	(system "sed 's/^(hlist//g' trans_hnd_file.txt | sed 's/)$//g' > trans_hnd_file1.txt")
	(system "sed 's/^(clist//g' correct_list_tmp.txt | sed 's/)$//g' > correct_mngs.txt")
	(system "sed 's/^(wlist//g' wrong_list_tmp.txt | sed 's/)$//g' > wrong_mngs.txt")
	(system "python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/search_trnsltrtd_word.py trans_eng_file1.txt trans_hnd_file1.txt > shruthi_trans_match.dat")
	(system "python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/get_transliterate_wrd.py trans_eng_file1.txt trans_hnd_file1.txt $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/Sound-list.txt out > roja_trans_match.dat")
;	(system "python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/word_level_transliteration.py trans_eng_file1.txt > hindi_in_eng.dat")
	(system "python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/identify_acronyms.py trans_eng_file1.txt hindi_in_eng.dat")
	(system "python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/countDifference_new.py correct_mngs.txt wrong_mngs.txt > spell_diff_match.dat")
	;(system "cat trans_match1.dat trans_match2.dat > trans_match.dat")
; 	(load-facts "trans_match.dat" )
	(load-facts "roja_trans_match.dat")
	(load-facts "spell_diff_match.dat")
	(load-facts "hindi_in_eng.dat")
)

;============================  get_restricted word/mng info ====================

(defrule get_eng_dic
(declare (salience 2000))
(id-word ?aid ?wrd)
(test (eq (numberp ?wrd) FALSE ))
(test (neq (gdbm_lookup "restricted_eng_words.gdbm" ?wrd) "FALSE"))
=>
        (bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "restricted_eng_words.gdbm" ?wrd))
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (bind $?dic_list (create$ $?dic_list ?new_mng1))
        (assert (anu_id-word-possible_mngs ?aid ?wrd $?dic_list))
)
;-----------------------------------------------------------------------------------
(defrule get_hnd_dic
(declare (salience 2000))
(manual_word_info (head_id ?mid) (word ?mng))
(man_word-poss_roots ?mng $? ?root $?)
(test (eq (numberp (implode$ (create$ ?mng))) FALSE ))
(test (eq (numberp ?root) FALSE ))
(test (or (neq (gdbm_lookup "restricted_hnd_words.gdbm" ?mng) "FALSE")(neq (gdbm_lookup "restricted_hnd_words.gdbm" ?root) "FALSE")))
=>
        (bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" ?mng))
        (if (eq ?new_mng "FALSE") then
                (bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" ?root))
        )
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )

        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (bind $?dic_list (create$ $?dic_list ?new_mng1))
        (assert (man_id-word-possible_mngs ?mid ?mng $?dic_list))
)
;-----------------------------------------------------------------------------------
;vahAz vahAM
(defrule add_words_to_the_list
(declare (salience 1090))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng $? - ?mid ?mng1)
?f0<-(anu_id-word-possible_mngs ?aid ?w $?p ?mng $?po)
(test (eq (sub-string 1 (- (length ?mng) 1) ?mng)  (sub-string 1 (- (length ?mng1) 1) ?mng1)))
=>
	(bind ?m (sub-string (length ?mng1) (length ?mng1) ?mng1))
	(bind $?grp (create$ $?p ?mng $?po))
	(if (and (or (eq ?m "z") (eq ?m "M")) (eq (integerp (member$ ?mng1 $?grp)) FALSE)) then 
		(bind $?grp (create$ $?grp , ?mng1))
		(retract ?f0)
		(assert (anu_id-word-possible_mngs ?aid ?w $?grp))	
	)
)
;hAlAfki == hAlAzki
(defrule add_words_to_the_list1
(declare (salience 1090))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng&~- $? - ?mid ?mng1)
?f0<-(anu_id-word-possible_mngs ?aid ?w $?p ?mng $?po)
(test (neq (str-index "f" ?mng1) FALSE))
(test (neq (member$ (string-to-field (str-cat (sub-string 1 (- (str-index "f" ?mng1)1) ?mng1) "z" (sub-string (+ (str-index "f" ?mng1)1) (length ?mng1) ?mng1))) (create$ $?p ?mng $?po)) FALSE))
(not(added_word ?mng1))
=>
;	(printout t	(member$ ?m (create$ $?p ?mng $?po)))
	(bind $?grp (create$ $?p ?mng $?po , ?mng1))
	(retract ?f0)
        (assert (anu_id-word-possible_mngs ?aid ?w $?grp))
	(assert (added_word ?mng1))
)

(defrule get_infinitive_count
(declare (salience 1090))
(pada_info (group_head_id ?id) (group_cat infinitive))
?f0<-(inf_verbs $?p)
=>
	(retract ?f0)
	(assert (inf_verbs $?p ?id))
)

;=============================== align transliteration word ===============================

(defrule align_trans_word
(declare (salience 1091))
?f0<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word ?mng&~hI&~eka)(vibakthi ?v $?v1))
(or (eng_word-tran_word ?eng ?mng)(eng_word-hin_word ?eng ?mng))
(id-word ?aid ?eng)
(id-Apertium_output ?aid $?amng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(hindi_id_order $?h ?aid $?h1)
=>
	(retract ?f0 ?f1)
	(assert (left_over_ids $?p $?p1))
	(assert (hindi_id_order $?h $?h1))
	(if (eq ?v 0) then
		(bind $?m (create$ ?mng ))
	else
		(bind $?m (create$ ?mng ?v $?v1))
	)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id $?m))
	(assert (anu_id-man_id-source ?aid ?id trans_match))
	(assert (got_align ?aid))
)
;=============================== align spell diff word ===============================

(defrule align_count_diff_match
(declare (salience 200))
?f0<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word ?mng)(vibakthi ?v $?v1))
(correct_word-wrong_word-difference ?amng ?mng ?count&1|2)
(database_info (components ?amng) (database_type single) (group_ids ?aid))
?f1<-(hindi_id_order $?h ?aid $?h1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
	(retract ?f0 ?f1)
	(assert (left_over_ids $?p $?p1))
	(assert (hindi_id_order $?h $?h1))
	(if (eq ?v 0) then
                (bind $?m (create$ ?mng ))
        else
                (bind $?m (create$ ?mng ?v $?v1))
        )
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?amng - ?id @PUNCT-Exclamation@PUNCT-Exclamation $?m @PUNCT-Exclamation@PUNCT-Exclamation ))
	(assert (anu_id-man_id-source ?aid ?id spell_diff_match))
        (assert (got_align ?aid))
)
;============================ Remove unrelated words ===========================================
(defrule rm_unrelated_wrds_from_eng_restrict
(declare (salience 950))
(anu_id-word-possible_mngs ?aid ?w $?pos_mngs)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(id-cat_coarse ?aid ~PropN)
(not (added_group_end ?aid))
(not (got_align ?aid))
(manual_word_info (head_id ?mid) (word ?mng&~nahIM $?)(root_components $?root)) 
(man_word-poss_roots ?mng $?roots)
;(test (and (eq (member$ ?mng $?pos_mngs) FALSE)(eq (member$ $?root $?pos_mngs) FALSE)))
(test (eq (member$ ?mng $?pos_mngs) FALSE))
?f1<-(left_over_ids $?ids)
(not (added_emphatic ?mid))
(not (pronoun_align ?aid ?mid))
(not (score (anu_id ?aid) (man_id ?mid) (heuristics $? anu_exact_match|anu_root_match|dictionary_match|hindi_wordnet_match|multi_hindi_wordnet_match|multi_dictionary_match $?)))
(not (id-HM-source ?aid $? WSD_compound_phrase_root_mng|Database_compound_phrase_root_mng))
(not (anu_id-man_id-source ?aid ?mid ?src&align_paren_with_anu|RaRTI_viSeRaNa))
=>
	(bind ?c 0)
	(loop-for-count (?i 1 (length $?roots))
		(if (neq (member$ (nth$ ?i $?roots) $?pos_mngs) FALSE) then
			(bind ?c (+ ?c 1))
		)
	)
	(if (eq ?c 0) then
		(retract ?f0 ?f1)
	        (assert (removed_man_id_with-anu_id ?mid ?aid))
		(bind $?ids (sort > (create$ $?ids ?mid)))
		(assert (left_over_ids $?ids))
		(assert (anu_id-man_id-source ?aid ?mid removed_frm_eng_restrict))
	)
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_hnd_restrict
(declare (salience 950))
(man_id-word-possible_mngs ?mid ? $?pos_mngs)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(id-word ?aid ?w)
(test (eq (integerp (member$ ?w $?pos_mngs)) FALSE))
?f1<-(left_over_ids $?ids)
(not (added_group_end ?aid))
(not (added_emphatic ?mid))
(not (got_align ?aid))
(not (pronoun_align ?aid ?mid))
(not (score (anu_id ?aid) (man_id ?mid) (heuristics $? single_verb_match|anu_exact_match|multi_hindi_wordnet_match $?)))
(not (id-HM-source ?aid $? WSD_compound_phrase_root_mng))
=>
        (retract ?f0 ?f1)
        (assert (removed_man_id_with-anu_id ?mid ?aid))
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
	(assert (anu_id-man_id-source ?aid ?mid removed_frm_hnd_restrict))
)
;----------------------------------------------------------------------------------------------
(defrule rm_wrong_aux_alignment
(declare (salience 950))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? ? - ?mid $?mng hE)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid1 $?m hE)
?f1<-(left_over_ids $?ids)
=>
	(retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid1)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid1 ?id))
	(assert (anu_id-man_id-source ?id ?mid1 removed_frm_aux))
)
;----------------------------------------------------------------------------------------------
;The night sky with its bright celestial objects [has fascinated] humans since time immemorial.
;anAxi kAla se hI rAwri ke AkASa meM camakane vAle KagolIya piMda [use sammohiwa karawe rahe hEM].
;Recent decades have seen much progress on this front.
;phrasal is aligning 'use kuCa hamane' in has, have
(defrule rm_unrelated_words_from_aux_verb
(declare (salience 950))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid ?m $?mng)
(test (eq (integerp (member$ ?m (create$ hE hEM howA hE howI hE howe hEM hogA avaSya nahIM jarUra sakawI sakeM EsA))) FALSE))
?f1<-(left_over_ids $?ids)
(id-word ?id ?w&~let&~never)
(not (added_group_end ?id))
(not (added_emphatic ?id))
(not (score (anu_id ?id) (man_id ?mid) (rule_names $? verb_root_and_tam_match_using_dic $?)))
=>
        (retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
	(assert (anu_id-man_id-source ?id ?mid removed_frm_aux))
)
;----------------------------------------------------------------------------------------------
;He had given up attending to matters of practical importance; he had lost all desire [to do] so.
;usane rojamarrA kI bAwoM kI ora XyAna xenA CodZa xiyA WA; isameM [usakI] koI icCA BI nahIM raha gaI WI
(defrule rm_unrelated_words_from_verb
(declare (salience 950))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ?mid ?mng)
(id-cat_coarse ?id verb)
(man_word-root-cat ?mng ? ?c)
(test (or (eq ?c p) (eq (integerp (member$ ?mng (create$ usakA usakI use usa isa isakI hameM apanI apane kisa kisI hI BI yahAz kahIM jisameM jisakA sabako ora iwanA vo EsA))) TRUE)))
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
	(assert (anu_id-man_id-source ?id ?mid removed_frm_verb))
)
;----------------------------------------------------------------------------------------------
;He had [given up] attending to matters of practical importance; he had lost all desire to do so.
;Man: usane rojamarrA kI bAwoM kI ora XyAna xenA [CodZa xiyA WA]; isameM usakI koI icCA BI nahIM raha gaI WI
;Anu: usane vyAvahArika mahawva ke viRayoM ke lie upasWiwa howA huA ki [Coda xiyA WA]; usane EsA hI karane ke lie saBI icCA KoI WI.
(defrule rm_unrelated_words_from_particle
(declare (salience 950))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?mng ?m1  - ?mid $?mng ?m1)
(id-cat_coarse ?id verb)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1&:(= (+ ?id 1) ?id1) - - ?mid1 $?m)
(id-cat_coarse ?id1 particle)
?f1<-(left_over_ids $?ids)
(not (added_group_end ?id1))
=>
        (retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid1)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid1 ?id1))
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_det
(declare (salience 950))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ? - ?mid ?m)
(test (eq (integerp (member$ ?m (create$ wo awaH hE kara howI ki))) TRUE))
(id-cat_coarse ?id determiner|preposition)
?f1<-(left_over_ids $?ids)
=>
	(retract ?f0 ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
	(assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_inf_to
(declare (salience 950))
(pada_info (group_head_id ?h) (group_cat infinitive) (group_ids ?to ?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? ?m)
(test (or (eq (integerp (member$ ?m (create$ lie liye karanA kA kI hEM))) TRUE)(eq (sub-string (- (length ?m) 1) (length ?m) ?m) "nA")))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?to $? ? - ?mid $?)
?f0<-(id-Apertium_output ?to $?)
?f<-(left_over_ids $?ids)
(not (added_group_end ?to))
=>
        (retract ?f ?f0 ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?to))
)

;(defrule rm_prep_align_if_not_grouped
;(declare (salience 950))
;?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $? - ?mid $?)
;(id-cat_coarse ?aid preposition)
;(or (pada_info (group_head_id ?aid)) (pada_info (preposition ?aid))) 
;;?f1<-(id-Apertium_output ?aid $?)
;?f<-(left_over_ids $?ids)
;(not (added_group_end ?aid))
;=>
;	(retract ?f0 ?f)
;	(bind $?ids (sort > (create$ $?ids ?mid)))
;        (assert (left_over_ids $?ids))
;        (assert (removed_man_id_with-anu_id ?mid ?aid))
;)
	

;================================= group hI/BI/jI/SrI/ora/kahIM/sabase/Pira ==============================

;Like velocity, acceleration can also be positive, negative or zero.
;[vega ke samAna] [hI] wvaraNa BI XanAwmaka, qNAwmaka aWavA SUnya ho sakawA hE .
(defrule group_hI
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
?f1<-(manual_word_info (head_id ?id) (word hI))
?f2<-(manual_word_info (head_id ?mid)(word $?mng)(group_ids $?d ?id1&:(=(- ?id 1) ?id1)))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m - ?mid $?m1)
(test (eq (integerp (member$ $?m1 (create$ hE hEM))) FALSE))
=>
        (retract ?f ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m - ?mid $?m1 hI))
	(assert (anu_id-man_id-source ?aid ?mid group_hI))
	(modify ?f2 (word $?mng hI)(group_ids $?d ?id1 ?id))	
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;And each time he passed, the young man had a sick, frightened feeling, which made him scowl and feel ashamed.
;Ora uXara se gujarawe hue hara bAra usa nOjavAna ko [JiJaka BI] howI WI Ora [dara BI] lagawA WA, jisakI vajaha se usakI wyoriyoM para Sikana padZa jAwI WI Ora Sarma mahasUsa howI WI
(defrule group_BI
(declare (salience 900))
?f<-(left_over_ids $?p ?BI_id $?p1)
(manual_id-word ?BI_id BI)
(manual_word_info (head_id ?mid)(group_ids $?d ?id&:(=(- ?BI_id 1) ?id)))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?m_mng)
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?m_mng BI))
	(assert (anu_id-man_id-source ?aid ?mid group_BI))
	(assert (left_over_ids $?p $?p1))
	(assert (added_emphatic ?mid))
)
;--------------------------------------------------------------------------------------------
;prAcIna kAla meM piwAmaha [brahmA jI ne] kAMcI meM mAz BagavawI ke xarSana ke lie xuRkara wapasyA kI WI .
(defrule group_jI
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word jI)(vibakthi_components ?v)) 
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(- ?id 1) ?mid) $?m_mng)
=>
        (retract ?f ?f0)
	(if (eq ?v 0) then	
	  (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng jI))
	else
	  (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng jI ?v))
	)
	(assert (anu_id-man_id-source ?aid ?mid group_jI))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;ayoXyA  BagavAna [SrI rAma ke] avawAra  kI paviwra BUmi hE
(defrule group_SrI
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(+ ?id 1) ?mid) $?m_mng)
(id-cat_coarse ?aid PropN)
(manual_word_info (head_id ?id)(word SrI)(vibakthi_components ?v)) 
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid SrI $?m_mng ))
	(assert (anu_id-man_id-source ?aid ?mid group_SrI))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;With a sinking heart and a nervous tremor, he went up to a huge house which on one side looked on to the canal, and on the [other] into the street. 
;jaba vaha usa bade se makAna ke pAsa pahuzcA , jisake sAmane eka ora nahara WI Ora [xUsarI ora] sadaka , wo usakA xila dUba rahA WA .
(defrule group_ora
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word ora))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(- ?id 1) ?mid) $?m_mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng ora))
	(assert (anu_id-man_id-source ?aid ?mid group_ora))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA [kahIM] [aXika] prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE.
(defrule group_kahIM
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word kahIM))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(+ ?id 1) ?mid) $?m_mng)
(id-cat_coarse ?aid ~pronoun)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid kahIM $?m_mng))
	(assert (anu_id-man_id-source ?aid ?mid group_kahiM))
        (assert (left_over_ids $?p $?p1))
)
;------------------------------------------------------------------
;In fact, he wants to screen this film for Prime Minister Manhoman Singh [first].
;xaraasala vaha isa Pilma ko [sabase pahale] praXAnamanwrI manamohana siMha ko xiKAnA cAhawe hEM .
;The [biggest] reasons are our slow moving justice system and an irresponsible government machinery.
;isakA [sabase badA] kAraNa hE hamArI DIlI nyAya praNAlI Ora lAparavAha sarakArI maSInarI .
(defrule group_sabase
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m&sabase))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(+ ?mid 1) ?mid1) $?mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?m $?mng))
	(assert (anu_id-man_id-source ?aid ?mid group_sabase))
        (assert (left_over_ids $?p $?p0))
	(assert (added_emphatic ?mid))
)
;------------------------------------------------------------------
;It would be interesting to know what it is men are most afraid of.
;Man: yaha jAnanA BI kiwanA xilacaspa howA hE ki AxamI kisa cIja se [sabase jyAxA] darawA hE
;Anu: jAnakara rocaka rahegA ki jo AxamI hE se [sabase aXika] BayaBIwa hEM.
(defrule group_sabase1
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(- ?mid 1) ?mid1) sabase)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 sabase ?m ))
	(assert (anu_id-man_id-source ?aid ?mid1 group_sabase1))
        (assert (left_over_ids $?p $?p0))
)
;------------------------------------------------------------------
;'I want to attempt a thing -like that- and am frightened by these trifles,' he thought, with an odd smile.
;mEM EsA kAma karane kI koSiSa karanA cAhawA hUz [Ora Pira BI] CotI-CotI bAwoM se darawA hUz ,' usane eka ajIba-sI muskarAhata ke sAWa socA
(defrule grp_Pira
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m&Pira))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a  - ?mid1&:(=(- ?mid 1) ?mid1) ?w&Ora|yA)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a  - ?mid ?w ?m))
	(assert (anu_id-man_id-source ?aid ?mid group_Pira))
        (assert (left_over_ids $?p $?p0))
	(assert (added_emphatic ?mid))
)
;------------------------------------------------------------------
;17. Re-tweet past content.
;17. piCalI kaNteMta ko @SYMBOL-TELDA punaH tvIta kareM @PUNCT-Exclamation
(defrule grp_punaH
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word punaH))
(id-left_word-possible_mngs ?aid re $?)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?id $?mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?id punaH $?mng))
        (assert (anu_id-man_id-source ?aid ?id group_punaH))
        (assert (left_over_ids $?p $?p0))
        (assert (added_emphatic ?mid))
)
;------------------------------------------------------------------
;Ensure the following for all excavations. hara waraha kI KuxAI ke lie nimnaliKiwa hixAyawoM kA KayAla raKeM .
(defrule grp_waraha
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word waraha)(vibakthi ?v $?vib))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid1&:(=(- ?mid 1) ?mid1) ?w)
(not (id-word ? kind|type))
=>
        (retract ?f ?f0)
	(if (eq ?v 0) then
	        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?w waraha))
	else
	        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?w waraha ?v $?vib))
	)		
	(assert (anu_id-man_id-source ?aid ?mid group_waraha))
        (assert (left_over_ids $?p $?p0))
	(assert (added_emphatic ?mid))
)	
;------------------------------------------------------------------
;The Kalinga army was [no] match for the vast Mauryan army. kaliMga senA kA viSAla mOrya senA ke [koI] mukAbalA [nahIM] WA 
(defrule grp_koI
(declare (salience 900))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word koI)(vibakthi 0))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid koI nahIM - ?id nahIM)
=>
	(retract ?f1 ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid koI nahIM - ?id koI nahIM))
	(assert (anu_id-man_id-source ?aid ?id group_koI))
        (assert (left_over_ids $?p $?p0))
)	
;------------------------------------------------------------------
;[Do] you see the fish on the revolving disc on the pole? [kyA] wumane swamBa para Gumawe hue pahie para lagI maCalI ko xeKA ?
(defrule align_kyA_in_aux
(declare (salience 550))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(hindi_id_order kyA $?a)
(manual_word_info (head_id ?id) (word kyA))
=>
	(retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
	(assert (hindi_id_order $?a))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp 1 - - ?id kyA))
	(assert (added_emphatic ?id))
)

;=============================== Align 'hyphen word' ===============================================

;Often, in these situations, the force and the time duration are difficult to ascertain separately.
;Anu: aksara, ina parisWiwiyoM meM, bala Ora samaya avaXi [alaga-alaga] suniSciwa karake muSkila hEM.
;Man: prAyaH ina sWiwiyoM meM, bala waWA samayAvaXi ko [pqWaka - pqWaka] suniSciwa karanA kaTina howA hE.
(defrule aligh_hyphen_word
(declare (salience 900))
?f<-(left_over_ids ?id)
(manual_id-word =(+ ?id 1) -)
(manual_word_info (head_id ?id) (word $?mng))
(manual_word_info (head_id ?mid) (group_ids $?d =(- ?id 1) $? ))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
(hindi_id_order $? ?aid ?a1 $?)
?f1<-(id-Apertium_output ?a1 $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 $? ))
=>
        (retract ?f ?f1)
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 - - ?id $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 $?am - ?id $?mng))
	)
	(assert (anu_id-man_id-source ?aid ?mid  aligh_hyphen_word))
	(assert (left_over_ids))
)
;------------------------------------------------------------------
;Three or four door-keepers were employed on the building.
;Man: [wIna-cAra] xarabAna BI paharA xene ke lie We.
;Anu: [wIna] yA [cAra] door-keepers imArawa para kAma_para lagAyA gayA WA.
(defrule split_and_align_hyphen_word
(declare (salience 900))
?f0<-(left_over_ids $?p ?id $?p1)
(id-hyphen_word-vib ?id - ?w ?w1 - ?v)
?f1<-(id-Apertium_output ?aid ?w)
?f2<-(id-Apertium_output ?aid1 ?w1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(test (and (<= (- ?aid1 ?aid) 2) (neq ?aid ?aid1)))
=>
        (retract ?f0 ?f1 ?f2)
	(if (eq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?w - ?id ?w))
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?w1 - ?id ?w1))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?w - ?id ?w))
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?w1 - ?id ?w1 ?v))
	)
	(assert (anu_id-man_id-source ?aid ?id aligh_hyphen_word))
	(assert (anu_id-man_id-source ?aid1 ?id aligh_hyphen_word))
	(assert (left_over_ids $?p $?p1))
)
;------------------------------------------------------------------
;According to the WHO nearly 1 billion people in the world smoke, in which [one third] are of the age of 16.
;dablyUecao ke anusAra xuniyABara meM karIba 1.1 biliyana loga XUmrapAna karawe hEM , jisameM [eka-wihAI] 16 sAla kI umra ke hEM.
(defrule align_rm_restrict_for_hyphen
(declare (salience 900))
?f<-(removed_man_id_with-anu_id ?aid ?mid)
?f1<-(left_over_ids $?p ?mid $?p1)
(id-hyphen_word-vib ?mid - ?m ?m1 - ?)
?f2<-(id-Apertium_output =(+ ?aid 1) ?m1)
?f3<-(id-Apertium_output ?aid ?am)
(database_info (meaning ?m)(group_ids ?aid))
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi ?v $?v1))
=>
	(retract ?f ?f1 ?f2 ?f3)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?am - ?mid @PUNCT-OpenParen@PUNCT-OpenParen-))
	(if (eq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp =(+ ?aid 1) ?m1 - ?mid ?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp =(+ ?aid 1) ?m1 - ?mid ?mng ?v $?v1 @PUNCT-ClosedParen@PUNCT-ClosedParen))
	)
	(assert (left_over_ids $?p $?p1))
	(assert (got_align ?aid))
)
;------------------------------------------------------------------
(defrule align_last_hyphen_word
(declare (salience 900))
?f1<-(left_over_ids $?p ?mid $?p1)
(manual_word_info (head_id ?mid) (word ?mng))
(not (manual_word_info (head_id ?mid1&:(> ?mid1 ?mid))))
(manual_id-word =(- ?mid 1) -)
(manual_id-word =(- ?mid 2) .)
(id-last_word ?aid ?)
(not  (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-word =(- ?aid 1) -)
(id-Apertium_output ?aid ?a $?am)
=>
	(retract ?f1)
	(assert (left_over_ids $?p $?p1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng ))
)

;[food and water] <=> anna-jala
(defrule rm_slot_for_conj_aligned_hyphen_word
(declare (salience 900))
(id-hyphen_word-vib ?id $?)
(score (anu_id ?aid) (man_id ?mid)(rule_names $? man_hyphen_wrd_match_using_dic_for_conj $?))
?f0<-(id-Apertium_output ?a1 $?)
?f<-(id-Apertium_output ?c ?)
?f1<-(id-Apertium_output ?aid pAnI)
(conj_head-left_head-right_head ?c ?a1 ?aid)
=>
	(retract ?f0 ?f ?f1)
)

;Goal-oriented vision. lakRya unmuKa xqRtikoNa  .
(defrule grp_hyphen
(declare (salience 900))
?f1<-(left_over_ids $?p ?mid $?p1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid1&:(= (+ ?mid 1) ?mid1) ?m)
(id-left_word-possible_mngs ?aid ? $? ?m1 $?)
(manual_word_info (head_id ?mid) (root ?m1))
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid1 ?m1 ?m))
	(assert (anu_id-man_id-source ?aid ?mid1 grp_hyphen))
	(assert (left_over_ids $?p $?p1))
)

;=============================== Align 'rUpa' =============================
;At maximum compression the kinetic energy of the car is converted [entirely] into the potential energy of the spring. 
;kAra kI gawija UrjA aXikawama sampIdana para [sampUrNa rUpa se] spriMga kI sWiwija UrjA meM parivarwiwa ho jAwI hE.
(defrule align_rUpa
(declare (salience 900))
?f<-(left_over_ids $?p ?mid $?p1)
(manual_word_info (head_id ?mid) (word rUpa)(vibakthi_components ?v))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(- ?mid 1) ?mid1) $?m)
=>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 $?m rUpa ?v))
	(assert (anu_id-man_id-source ?aid ?mid1 align_rUpa))
        (assert (left_over_ids $?p $?p1))
)
;-----------------------------------------------------------------------------
;The second Law is [obviously] consistent with the first law. 
;[prawyakRa rUpa se] xviwIya niyama praWama niyama ke anurUpa hE.
(defrule align_rUpa1
(declare (salience 900))
?f<-(left_over_ids $?p ?mid $?p1)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(+ ?mid 1) ?mid1) rUpa ?m)
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi_components 0))
(id-cat_coarse ?aid adverb)
=>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 ?mng rUpa ?m))
	(assert (anu_id-man_id-source ?aid ?mid1 align_rUpa1))
        (assert (left_over_ids $?p $?p1))
)
;-----------------------------------------------------------------------------
(defrule align_rUpa2
(declare (salience 900))
?f<-(left_over_ids $?p ?mid $?p1)
(manual_word_info (head_id ?mid) (word rUpa) (vibakthi ?v&se))
?f1<-(hindi_id_order ?aid)
(id-cat_coarse ?aid adverb)
(id-Apertium_output ?aid ?a $?am)
=>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid rUpa ?v))
	(assert (anu_id-man_id-source ?aid ?mid align_rUpa2))
        (assert (left_over_ids $?p $?p1))
	(assert (hindi_id_order))
)

;====================================== Align 'paren word' ===========================

(defrule align_paren_with_anu
(declare (salience 900))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?m))
(manual_id-word ?id1&:(= (- ?id 1) ?id1) @PUNCT-OpenParen)
(manual_id-word ?id2&:(= (+ ?id 1) ?id2) @PUNCT-ClosedParen)
(manual_word_info (head_id ?mid) (group_ids $? =(- ?id1 1) $?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?a ? - ?mid  $?)
(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(id-left_punctuation  ?aid1 PUNCT-OpenParen)
(id-right_punctuation ?aid1 PUNCT-ClosedParen|PUNCT-ClosedParenPUNCT-Comma|PUNCT-ClosedParenPUNCT-Dot)
=>
	(retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
	(assert (anu_id-man_id-source ?aid1 ?id align_paren_with_anu))
	(assert (left_over_ids $?p $?p1))
)
;----------------------------------------------------------------------------------------------
(defrule align_paren_with_grp_info
(declare (salience 851))
?f<-(left_over_ids $?p $?ids $?p1)
;(hindi_id_order)
?f0<-(punct_gids-punct_gwrds ?pu $?ids - $?w)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(- ?pu 1) ?mid) $?mng)
(manual_word_info (head_id ?mid) (word $?word)(vibakthi_components ?v $?vib))

(not (id-left_punctuation ? @PUNCT-OpenParen))
=>
	(retract ?f ?f0 ?f1)
	(if (neq ?v 0) then
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?word @PUNCT-OpenParen $?w @PUNCT-ClosedParen ?v $?vib))
	else
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?mng @PUNCT-OpenParen $?w @PUNCT-ClosedParen))
	)
	(assert (left_over_ids $?p $?p1))
	(assert (anu_id-man_id-source ?aid ?mid align_paren_with_grp_info))
)
;----------------------------------------------------------------------------------------------
;For example, if we multiply a constant velocity vector by duration (of time), we get a displacement vector.
;uxAharaNasvarUpa, yaxi hama kisI acara vega saxiSa ko kisI (samaya) anwarAla se guNA kareM wo hameM eka visWApana saxiSa prApwa hogA .
(defrule align_paren_word1
(declare (salience 800))
?f<-(left_over_ids $?p ?id $?p1)
(hindi_id_order)
(manual_word_info (head_id ?id) (word ?m)(vibakthi_components ?v $?vib))
?f1<-(manual_id-word =(+ ?id 1) @PUNCT-OpenParen)
(manual_word_info (head_id ?mid&:(= (+ ?id 2) ?mid)) (word $?word))
?f2<-(manual_id-word =(+ ?id 3) @PUNCT-ClosedParen)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid  $?)
=>
        (retract ?f ?f0 ?f1 ?f2)
        (assert (left_over_ids $?p $?p1))
        (if (neq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m ?v $?vib @PUNCT-OpenParen $?word @PUNCT-ClosedParen))
        else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m @PUNCT-OpenParen $?word @PUNCT-ClosedParen ))
        )
	(assert (anu_id-man_id-source ?aid ?mid align_paren_word1))
)
;----------------------------------------------------------------------------------------------
;Its mucous membrane is beneficial for eyes and skin. 
;isakI myUkasa meMbrena [@PUNCT-OpenParen cikanI] [JillI @PUNCT-ClosedParen] AzKoM Ora skina ke lie PAyaxemanxa howI hE  
;if JillI is aligned then align cikani to the same slot
(defrule align_paren_word2
(declare (salience 800))
?f<-(left_over_ids $?p ?id $?p1)
(hindi_id_order)
?f3<-(manual_word_info (head_id ?id) (word ?m)(vibakthi_components 0))
?f4<-(manual_word_info (head_id ?mid&:(= (+ ?id 1) ?mid))(group_ids $?ids))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid  $?mng)
?f2<-(manual_id-word =(+ ?mid 1) @PUNCT-ClosedParen)
?f1<-(manual_id-word =(- ?id 1) @PUNCT-OpenParen)
=>
        (retract ?f ?f0 ?f1 ?f2 ?f3)
        (assert (left_over_ids $?p $?p1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid @PUNCT-OpenParen ?m $?mng  @PUNCT-ClosedParen ))
	(modify ?f4 (group_ids =(- ?id 1) ?id $?ids =(+ ?mid 1)))
	(assert (anu_id-man_id-source ?aid ?mid align_paren_word2))
)
;----------------------------------------------------------------------------------------------
;isakI myUkasa [meMbrena] [@PUNCT-OpenParen cikanI JillI @PUNCT-ClosedParen] AzKoM Ora skina ke lie PAyaxemanxa howI hE  
(defrule align_paren_word3
(declare (salience 800))
?f<-(left_over_ids ?id )
(hindi_id_order)
?f4<-(manual_word_info (head_id ?id) (word ?m)(vibakthi_components 0))
?f3<-(manual_word_info (head_id ?mid)(group_ids $?d = (+ ?id 1) $?d1))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid @PUNCT-OpenParen $?mng)
=>
        (retract ?f ?f0 ?f4)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m @PUNCT-OpenParen $?mng))
	(modify ?f3 (group_ids ?id $?d = (+ ?id 1) $?d1))
	(assert (left_over_ids))
	(assert (anu_id-man_id-source ?aid ?mid align_paren_word3))
)
;Eligible women candidates are recruited in the Army as Short Service Commissioned Officers through the (WSESO).
;isa yojanA (dablayUesaIesa-o ) ke jarie senA meM SoYrta sarvisa kamISaNda aXikAriyoM ke lie yogya mahilA ummIxavAroM kA cayana kiyA jAwA hE 
(defrule default_paren_align
(declare (salience 790))
?f<-(left_over_ids $?p ?id $?p1 )
(manual_word_info (head_id ?id) (word ?m))
(manual_id-word =(- ?id 1) @PUNCT-OpenParen)
(manual_id-word =(+ ?id 1) @PUNCT-ClosedParen)
(id-Apertium_output ?aid ?a&~a)
(id-left_punctuation ?aid PUNCT-OpenParen)
(id-right_punctuation ?aid PUNCT-ClosedParen|PUNCT-ClosedParenPUNCT-Dot)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a - ?id ?m ))
	(assert (anu_id-man_id-source ?aid ?id default_paren_align))
        (assert (left_over_ids $?p $?p1))
)

;======================= Align MWE ======================================
(defrule rm_aligned_mwe_id
(declare (salience 750))
(got_mwe ?id1 $?ids)
?f0<-(hindi_id_order $?pre ?id $?po)
(test (and (member$ ?id $?ids) (neq ?id ?id1)))
?f<-(id-Apertium_output ?id -)
=>
        (retract ?f0 ?f)
        (assert (hindi_id_order $?pre $?po))
)
;----------------------------------------------------------------------------------------------
;There are harmful things like nicotine and tar in cigarettes and [carbon monoxide] is enough for destroying the heart. 
;sigareta meM nikotina Ora tAra jEse hAnikAraka wawwva howe hEM Ora [kArbana monoAksAida] xila ke wabAha kara xene ke lie kAPI hE.
(defrule align_mwe_if_one_mng_aligned
(declare (salience 740))
?f<-(left_over_ids $?p ?id $?p1)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid&:(= (- ?id 1) ?mid) ?mng)
?f2<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) ?mng $?m)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(manual_word_info (head_id ?id) (word $?m1) (vibakthi ?v $?v1))
(id-word ?aid1 ~and)
=>
	(retract ?f ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid ?mng))
	(if (eq ?v 0 ) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?mng $?m - ?id $?m1 ))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?mng $?m - ?id $?m1 ?v $?v1 ))
	)
	(assert (anu_id-man_id-source ?aid1 ?id align_mwe_if_one_mng_aligned))
	(assert (added_group_end ?aid))
	(assert (left_over_ids $?p $?p1))
	(assert	(group_ids-start_id-end_id ?aid ?aid1 - ?aid ?aid1))
)	
;----------------------------------------------------------------------------------------------
(defrule get_aligned_mwe_id
(declare (salience 730))
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid1  $?mng)
    (and (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid1  $?) (id-hyphen_word-vib ?mid1 - $?mng - ?))
    (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng ?v&kA|kI|ko|se|meM - ?mid1  $?mng)
    (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid1  $?mng ?v&kA|kI|ko|se|meM)
    (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng ?v&kA|kI|ko|se|meM - ?mid1  $?mng ?v1&kA|kI|ko|se|meM|xvArA|ke))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)
    (and (id-HM-source ?id1 ? NN_NN_NN_compound_rule|NN_NN_compound_rule)(id-HM-source-grp_ids ?id1 $?mng  ?src $?ids)))
(test (member$ ?id1 $?ids))
=>
	(assert (got_mwe ?id1 $?ids))
)
;----------------------------------------------------------------------------------------------
;Similarly, the price or employment level of this representative good will reflect the general price and employment level of the economy.
;isI waraha, isa prawiniXi vaswu kA kImawa swara aWavA rojZagAra swara arWavyavasWA ke sAmAnya kImawa Ora [rojZagAra swara ko] prawibiMbiwa karegA.
(defrule modify_mwe_align
(declare (salience 700))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?mng ?v&se|ko|meM|para|kI|kA)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid1  $?m)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (neq ?id ?id1))
?f2<-(left_over_ids $?l)
=>
        (retract ?f0 ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid $?mng ?v))
	(bind $?l (sort > (create$ $?l ?mid1)))
	(assert (left_over_ids $?l))
)
;------------------------------------------------------------------
;An expression of the profoundest disgust gleamed for a moment in the [young man's] refined face.
;usa [nOjavAna ke] susaMskqwa cehare para eka pala ke lie behaxa gaharI virakwi kI Jalaka najara AI .
;COUNTER: Hardening of the heart ages people faster than hardening of the arteries.
(defrule adj_and_noun_rule
(declare (salience 500))
;(declare (salience 650))
(pada_info (group_ids $? ?adj ?aid))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?adj $? ? - ?mid $?m ?v&se|ko|kI|ke|ne|meM $?m1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-Apertium_output ?aid ?a&~SYMBOL $?d )
?f<-(id-Apertium_output ?adj $? )
(id-cat_coarse ?aid ~PropN) ;In his doubt, he inquired from his secretary Sanjaya, "What did they do? awaH isI sanxeha ke kAraNa usane apane saciva se pUCA , "unhoMne kyA kiyA"
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?d - ?mid $?m ?v $?m1))
	(assert (anu_id-man_id-source ?aid ?mid adj_and_noun_rule))
	(assert (group_ids-start_id-end_id ?adj ?aid - ?adj ?aid))
)
;------------------------------------------------------------------
;He [first] wants to show it to the [prime] Minister.
;vaha [pahale] apane praXAnamanwrI ko yaha Pilma xiKAnA cAhawe hEM .
(defrule rm_mwe_alignment
(declare (salience 640))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid  $?)
(test (eq (integerp (member$ ?aid $?ids)) TRUE))
(not (added_group_end ?aid))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?m ?v - ?mid1  $?)
(test (eq (integerp (member$ ?aid1 $?ids)) TRUE))
(test (neq ?aid ?aid1))
(or (id-hyphen_word-vib ?mid1 - $?m - ?v)
    (and (manual_word_info (head_id ?mid1) (word ?m1 ?m2))(test (eq (create$ (string-to-field (str-cat ?m1 ?m2))) $?m))))
?f<-(left_over_ids $?l)
=>
	(retract ?f ?f1)
	(bind $?l (sort > (create$ $?l ?mid)))
	(assert (left_over_ids $?l ))
)
;================================== Modify aux/particle verb alignment ==================

;These [are bonded] together by interatomic or intermolecular forces and stay in a stable equilibrium position.
;yaha anwarA-paramANavika yA anwarA-ANavika baloM xvArA Apasa meM [bazXe] [howe hEM] Ora eka sWira sAmya avasWA meM rahawe hEM.
;In this book you [will be introduced] to some of the basic principles of macroeconomic analysis.
;isa puswaka meM ApakA [paricaya] samaRti arWaSAswrIya viSleRaNa ke kuCa mUla sixXAnwoM se [hogA] .
(defrule modify_aux_slot
(declare (salience 630))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid  $?m)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid1  $?mng)
(test (eq (integerp (member$ $?mng (create$ $?m))) FALSE));In SI, there are seven base units as given in Table 2.1. 11-02
(not (added_group_end ?id))
(not (added_emphatic ?id))
(id-word ?id ?w&~let&~never)
=>
		(if (> ?mid ?mid1) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?mng $?m))
			(retract ?f ?f0)
		else	
			(if (eq (integerp (member$ (nth$ (length $?m) $?m) (create$ hEM hE))) FALSE) then
				(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?m $?mng))
				(retract ?f ?f0)
			)
		)
		(assert (anu_id-man_id-source ?h ?mid modify_aux_slot))
)
;---------------------------------------------------------------------------------
(defrule rm_aux_alignment
(declare (salience 630))
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?mng)
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? ? - ?mid1 $? $?mng)
    (and (id-HM-source-grp_ids ?h ?r ? ?h)(manual_word_info (head_id ?mid1)(root ?r)))) 
?f0<-(left_over_ids $?ids)
(not (added_group_end ?id))
(not (added_emphatic ?id))
=>
	(retract ?f ?f0)
	(bind $?ids (sort > (create$ $?ids ?mid)))
	(assert (left_over_ids $?ids ))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;---------------------------------------------------------------------------------
;This statue of Chandra Prabhu Bhagawan had come out during the excavations of southern gate.
;canxrA praBu PropN-bhagawan-PropN kI isa prawimA ne xakRiNI xvAra kI una KuxAI ke xOrAna [hatAyA WA].
;canxra praBu BagavAna kI yaha mUrwi manxira ke xakRiNI geta kI KuxAI ke xOrAna [nikalI WI] .
(defrule modify_particle_alignment
(declare (salience 625))
(id-cat_coarse ?id particle)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng)
(id-Apertium_output ?id1&:(= (- ?id 1) ?id1) $?am)
?f<-(id-Apertium_output ?id $?)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
=>
	(retract ?f0 ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?am - ?mid $?mng))
)

;---------------------------------------------------------------------------------
;When the statue was taken out after the excavation devotees meant this by it. 
;jaba vaha prawimA usa KuxAI ke bAxa [bAhara nikAlI gayI WI] Bakwa kA isake xvArA yaha wAwparya_hE.
;KuxAI karane ke paScAwa jisa samaya [mUrwi nikAlI gaI] SraxXAlu janoM ne isakA arWa yaha nikAlA .
(defrule modify_particle_alignment1
(declare (salience 625))
(id-cat_coarse ?id particle)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid ?m )
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1&:(= (- ?id 1) ?id1) $?a ?m $?a1 - ?mid1 $?m1)
?f3<-(left_over_ids $?pre )
=>
        (retract ?f0 ?f2 ?f3)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?m $?a1 - ?mid  ?m $?m1))
	(bind $?pre (sort > (create$ $?pre ?mid1)))
	(assert (left_over_ids $?pre))
)

(defrule rm_particle_alignment2
(declare (salience 625))
(id-cat_coarse ?id particle)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid ?m )
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1&:(= (- ?id 1) ?id1) $?a ?a1 - ?mid1 $?m1 kara)
?f3<-(left_over_ids $?pre )
?f1<-(id-Apertium_output ?id $?)
=>
        (retract ?f0 ?f1 ?f3)
        (bind $?pre (sort > (create$ $?pre ?mid)))
        (assert (left_over_ids $?pre))
	(assert (group_ids-start_id-end_id ?id1 ?id - ?id1 ?id))
)

;---------------------------------------------------------------------------------
(defrule modify_inf_to_align
(declare (salience 625))
(id-cat_coarse ?id infinitive_to)
?f0<-(id-Apertium_output ?id $?)
?f<-(id-Apertium_output ?id1&:(= (+ ?id 1) ?id1) $?)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng ?m)
(test (eq (integerp (member$ ?m (create$ lie liye karanA kA kI hEM))) TRUE))
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?a1 - ?mid1&:(= (- ?mid 1) ?mid1) ?m1)
(chunk_name-chunk_ids JJP ?mid1)
=>
	(retract ?f ?f0 ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?a1 - ?mid1 ?m1 $?mng ?m))
)
;---------------------------------------------------------------------------------
;to,note => karawe hEM, bAwa 
(defrule rm_inf_to_align
(declare (salience 620))
(id-cat_coarse ?id infinitive_to)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?)
?f3<-(left_over_ids $?pre )
(not (added_group_end ?id))
(not (removed_man_id_with-anu_id ?mid ?id))
=>
	(retract ?f1 ?f3)
	(bind $?pre (sort > (create$ $?pre ?mid)))
	(assert (left_over_ids $?pre))
	(assert(removed_man_id_with-anu_id ?mid ?id))
)
;---------------------------------------------------------------------------------
(defrule rm_aux_or_particle_id
(declare (salience 620))
(or (root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)(id-cat_coarse ?id particle|infinitive_to))
?f0<-(id-Apertium_output ?id)
=>
        (retract ?f0 )
)

;==================================== align conj left/right ===========================

;sandwiched between oxford street and marylebone lane is one of london's most appealing areas.
;lanxana ke sabase jyAxA AkarRiwa karane vAle kRewroM meM se eka AksaPorda [strIta] waWA merIlebona ke maXya hE .
(defrule align_conj_left
(declare (salience 610))
?f<-(left_over_ids $?p ?id $?p1)
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid Ora|waWA|yA|va|- - ?mid&:(= (+ ?id 1) ?mid ) ?)
    (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid&:(= (+ ?id 1) ?mid ) /))
(conj_head-left_head-right_head ?aid $?)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp =(- ?aid 1) $?))
(chunk_name-chunk_ids CCP|BLK ?mid)
(chunk_name-chunk_ids ? $? ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib))
?f0<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
=>
        (if (eq (length $?am) 0) then   (bind $?am -))
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?v 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?v $?vib))
        )
	(assert (anu_id-man_id-source ?aid1 ?id conj_left))
)

;---------------------------------------------------------------------------------
;sandwiched between oxford street and marylebone lane is one of london's most appealing areas.
;lanxana ke sabase jyAxA AkarRiwa karane vAle kRewroM meM se eka AksaPorda strIta waWA [merIlebona] ke maXya hE .
(defrule align_conj_right
(declare (salience 610))
?f<-(left_over_ids $?p ?id $?p1)
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid Ora|waWA|yA|va|- - ?mid&:(= (- ?id 1) ?mid ) ?)
    (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid&:(= (- ?id 1) ?mid ) /))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp =(+ ?aid 1) $?))
(chunk_name-chunk_ids CCP|BLK ?mid)
(not (chunk_name-chunk_ids VGF =(- ?mid 1))); ... eka jagaha se xUsarI jagahoM waka [PElane] yA [metAstesisa] kI ...
(chunk_name-chunk_ids ? ?id $?)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib))
?f0<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(not (pada_info (group_head_id ?aid1) (group_cat VP)))
(id-word ?aid1 ?w&~the&~a&~that)
=>
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then   (bind $?am -))
        (if (eq ?v 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?v $?vib))
        )
	(assert (anu_id-man_id-source ?aid1 ?id conj_right))
)

;================================== verb rules =======================================
(defrule align_left_over_verb
(declare (salience 590))
?f<-(left_over_ids $?pre ?mid $?po)
?f0<-(man_verb_count-verbs ?c ?mid $?m)
?f1<-(anu_verb_count-verbs ?c ?aid $?a)
?f2<-(id-Apertium_output ?aid $?amng)
(manual_word_info (head_id ?mid) (word $?mng))
?f3<-(hindi_id_order $?h ?aid $?h1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
	(retract ?f ?f0 ?f1 ?f2 ?f3)
	(if (eq (length $?amng) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid -  - ?mid  $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?amng - ?mid  $?mng))
	)
	(assert (man_verb_count-verbs ?c $?m))
	(assert (anu_verb_count-verbs ?c $?a))
	(assert (left_over_ids $?pre $?po))
	(assert (hindi_id_order $?h $?h1))
	(assert (anu_id-man_id-source ?aid ?mid align_left_over_verb))
)

;---------------------------------------------------------------------------------
;Eng: Who [introduced] them to each other and how and when did they meet?
;Anu: eka xUsare vaha [paricaya xiyA] Ora Ora ve kisane kEse kaba mile We?
;Man: una xonoM kA eka-xUsare se [paricaya] kisane [karavAyA WA] Ora vo kaba mile
(defrule grp_with_anu
(declare (salience 600))
?f0<-(left_over_ids $?pre ?id $?po)
?f1<-(manual_word_info (head_id ?id) (word ?mng))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m ?mng $?amng - ?mid ?k $?m1)
(man_word-root-cat ?k ?r&karavA|kara ?)
(id-cat_coarse ?aid verb)
?f2<-(manual_word_info (head_id ?mid) (word ?k $?m1) (group_ids $?ids))
=>
        (retract ?f0 ?f1 ?f ?f2)
        (assert (left_over_ids $?pre $?po))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?m ?mng $?amng - ?mid  ?mng ?k $?m1))
	(assert (anu_id-man_id-source ?aid ?mid grp_with_anu))
	(bind ?r1 (string-to-field (str-cat ?mng"_"?r)))
	(modify ?f2 (word ?mng ?k $?m1)(root ?r1)(root_components ?mng ?r)(group_ids ?id $?ids))
)
;---------------------------------------------------------------------------------
;cAlsIdanI drila kA [upayoga] maXyama bahumUlya pawWaroM ke mowI Cexane ke lie [kiyA gayA WA] . 
(defrule grp_with_anu1
(declare (salience 600))
?f0<-(left_over_ids ?id )
?f1<-(manual_word_info (head_id ?id) (word $?mng) (root kara)(group_ids $?ids))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?a $?mng - ?mid ?m)
(id-cat_coarse ?aid verb)
?f2<-(manual_word_info (head_id ?mid) (word ?m) (group_ids ?mid))
(test (> ?id ?mid))
=>
        (retract ?f0 ?f1 ?f )
        (assert (left_over_ids ))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?a $?mng - ?mid  ?m $?mng))
        (assert (anu_id-man_id-source ?aid ?mid grp_with_anu))
        (bind ?r1 (string-to-field (str-cat ?m"_kara")))
        (modify ?f2 (word ?m $?mng)(root ?r1)(root_components ?m kara)(group_ids ?mid $?ids))
)
;---------------------------------------------------------------------------------
;Extensive security arrangements have been made by the administration for the festival and it does not want to leave anything to chance.
;Man : mahowsava kI surakRA vyavasWA ko lekara praSAsana ke xvArA kade iMwajAma kie gaye hEM Ora vaha kisI BI waraha kI kowAhI [nahIM barawanA cAhawA].
;Anu: viswqwa surakRA_ke iMwajAma wyOhAra ke lie praSAsana se banAe gaye hEM Ora samBAvanA ko kuCa BI CodanA [nahIM cAhawA hE].
(defrule group_nahIM_using_anu_out
(declare (salience 600))
?f0<-(left_over_ids $?pre ?id $?po)
(manual_word_info (head_id ?id) (word nahIM $?p))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m nahIM $?amng - ?mid  $?mng)
(test (neq (integerp (member$ nahIM $?mng)) TRUE))
(id-cat_coarse ?aid verb)
=>
        (retract ?f0 ?f)
	(if (> ?id ?mid) then
	        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?m nahIM $?amng - ?mid  $?mng nahIM $?p ))
	else
        	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?m nahIM $?amng - ?mid  nahIM $?p $?mng))
	)
        (assert (left_over_ids $?pre $?po))
)
;---------------------------------------------------------------------------------
;if noun is aligned in verb slot then combine the next word 
;Amidst all this the guide began to [track] tiger.
;isa bIca gAida ne tAigara ko [trEka] [karanA] SurU kara xiyA .
;You will see that the strips get attracted to the screen.
;Apa xeKeMge ki pattiyAz parxe kI ora [AkarRiwa] [ho jAwI hEM] .
(defrule group_verb_if-noun_aligned
(declare (salience 600))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?lid) (group_ids $? ?id $?)(word $?mng1 ?w)(vibakthi_components ?vib $?v))
(or (manual_word_info (head_id ?mid) (group_ids $? =(- ?lid 1) $?))
    (manual_word_info (head_id ?mid) (group_ids $? =(- ?lid 2) $?)))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid  $?mng ?m)
(test (neq (create$ ?a $?amng)(create$ $?mng ?m)))
(test (neq (integerp (member$ ?m (create$ WIM WA We WI hE hEM hue huI hogI lie se meM karanA kI kareM kareMge pAwe - @PUNCT-ClosedParen@PUNCT-ClosedParen))) TRUE))
(test (neq (sub-string (- (length ?m) 3 )(length ?m) ?m) "kara"))
(id-cat_coarse ?aid verb|adjective)
(id-word ?aid ~only)
(not (id-cat_coarse =(- ?aid 1) determiner|preposition)) ;Ex: ... before commencing ...
(chunk_name-chunk_ids JJP|NP|VGNF|VGNN $? ?mid $?)
(or (chunk_name-chunk_ids ?c&VGF|VGNN|VGNF $? ?id $?) (chunk_name-chunk_ids-words ?c&VGF|VGNN|VGNF $? ?id $?))
(not (anu_id-man_id-source ? ?mid conj_right))
=>
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?vib 0) (member$ ?w (create$ ?vib $?v))) then 
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?mng ?m $?mng1 ?w))
	else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?mng ?m $?mng1 ?w ?vib $?v))
	)
	(assert (anu_id-man_id-source ?aid ?mid group_verb_if-noun_aligned))
        (assert (modified_man_id ?mid ))
)
;---------------------------------------------------------------------------------
;if leftover id's next word is kara and if it is aligned then combine both.
;The principles [will be stated], as far as possible, in simple language.
;jahAz waka samBava hogA sixXAnwoM kA sarala BARA meM [varNana kiyA jAegA] .
;Within the category of industrial goods also output of different kinds of goods tend to rise or fall simultaneously.
;Oxyogika vaswuoM meM BI viBinna prakAra kI vaswuoM ke nirgawa meM eka sAWa vqxXi yA hrAsa kI [pravqwwi howI hE].
;There are harmful things like nicotine and tar in cigarettes and carbon monoxide is enough for [destroying] the heart.
;sigareta meM nikotina Ora tAra jEse hAnikAraka wawwva howe hEM Ora kArbana monoAksAida xila ke [wabAha] [kara xene ke lie] kAPI hE.
(defrule default_kara/ho_group
(declare (salience 590))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(manual_word_info (head_id ?id) (word ?mng)(vibakthi_components 0))
(man_word-root-cat ?mng ? ~p)
(test (eq (integerp (member$ ?mng (create$ BI hI yA wo waba))) FALSE))
?f2<-(manual_word_info (head_id ?mid)(word ?kara $?tam)(root ?r) (root_components $?root)(group_ids $?g = (+ ?id 1) $?g1))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?kara $?tam1)
(man_word-root-cat ?kara&~hE kara|ho|karA|karavA|xe|raKa|raha v)
(id-word ?aid ?w&~to&~is&~are)
=>
	(retract ?f0 ?f ?f1)
        (bind ?nr (remove_character " " (implode$ (create$ ?mng ?r )) "_"))
	(modify ?f2 (word ?mng ?kara $?tam) (root ?nr)(root_components ?mng $?root)(group_ids $?g ?id = (+ ?id 1) $?g1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng ?kara $?tam1))
        (assert (left_over_ids $?p $?p1))
	(assert (anu_id-man_id-source ?aid ?mid default_kara_or_ho_group))
)
;---------------------------------------------------------------------------------
;Malaria , kalajar , tuberculoses starts with fever.
;maleriyA , kAlAjAra , yakRmA kI SuruAwa buKAra se hI howI hE .
(defrule default_kara/ho_group1
(declare (salience 580))
?f<-(left_over_ids $?p ?id $?p1 )
?f0<-(manual_word_info (head_id ?id) (word $?mng)(root ?r&kara|ho|karavA)(vibakthi_components 0))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?a)
(id-cat_coarse ?aid verb)
?f2<-(manual_word_info (head_id ?mid) (word ?a)(group_ids $?ids)(tam ~nA))
(test (eq (integerp (member$ ?a (create$ hE hEM kahA))) FALSE))
=>
        (retract ?f0 ?f ?f1)
        (bind ?nr (remove_character " " (implode$ (create$ ?a ?r)) "_"))
        (modify ?f2 (word ?a $?mng) (root ?nr)(root_components ?a ?r)(group_ids $?ids ?id))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?a $?mng))
        (assert (left_over_ids))
	(assert (anu_id-man_id-source ?aid ?mid default_kara_or_ho_group1))
	(assert (left_over_ids $?p $?p1 ))
)
;---------------------------------------------------------------------------------
;We can easily check their equality.
;Man: hama inakI samAnawA kI [paraKa] AsAnI se [[kara sakawe hEM]] .
;Anu: hama unakA samawulyawA AsAnI se [jAzca sakawe hEM].
(defrule grp_with_score
(declare (salience 570))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(score (anu_id ?aid) (man_id ?id) (heuristics $? single_verb_match|tam_dict $?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng)
(id-cat_coarse ?aid verb)
(test (and (neq ?id ?mid)(neq ?a ?mng)))
(chunk_name-chunk_ids JJP|NP|VGNF $? ?mid $?)
(manual_word_info (head_id ?id) (word $?mng1 ?w)(vibakthi_components ?v $?vib))
(test (neq ?w ?mng))
(id-word ?aid ~is)
=>
	(retract ?f ?f0 ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib)) (eq ?v gA)) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng $?mng1 ?w))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng $?mng1 ?w ?v $?vib))
        )
	(assert (anu_id-man_id-source ?aid ?mid grp_with_score))	
)
;---------------------------------------------------------------------------------
;The great eruption of krakatau must have taken place around 416 ad, as reported in ancient javanese scriptures. 
;krakatau kA badA uxaBexana 416 krIswa paScAwa lagaBaga, huA hogA jEsA ki prAcIna joYvanIja XarmagranWoM meM [praswuwa kiyA].
;krakatU kA viSAla visPot lagaBaga 416 IsvI meM huA , jEsA ki prAcIna jAvanIja SAswroM meM [xarja hE ]
(defrule group_prev_wrd_if_hE_align
(declare (salience 560))
?f0<-(left_over_ids $?p ?mid $?p0)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $? - ?mid1&:(= (+ ?mid 1) ?mid1)  hE)
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi_components 0))
(root-verbchunk-tam-chunkids ? ?v&~are&~is&~has ? $?a1 ?aid $?a2 ?h) ;Ex: hogA,hEM -- ho
(id-word ?aid ~be)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?))
(id-Apertium_output ?h $?amng)
=>
	(retract ?f0 ?f1 )
;	(bind ?id (nth$ (length (create$ $?a1 ?aid $?a2)) (create$ $?a1 ?aid $?a2)))
;	(printout t ?id crlf)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?amng - ?mid ?mng hE))
        (assert (left_over_ids $?p $?p0))
	(assert (anu_id-man_id-source ?h ?mid group_prev_wrd_if_hE_align))	
)
;---------------------------------------------------------------------------------
;There are harmful things like nicotine and tar in cigarettes and carbon monoxide is enough for [destroying] the heart.
;sigareta meM nikotina Ora tAra jEse hAnikAraka wawwva howe hEM Ora kArbana monoAksAida xila ke wabAha [kara] [xene ke lie] kAPI hE.
(defrule group_kara_xe
(declare (salience 550))
?f<-(left_over_ids $?p ?mid $?p0)
?f0<-(manual_word_info (head_id ?mid)(root kara) (vibakthi 0))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(= (+ ?mid 1) ?mid1) $?mng)
?f2<-(manual_word_info (head_id ?mid1)(word $?m1)(root xe) (group_ids $?ids))
=>
	(retract ?f ?f0 ?f1 ?f2)
	(assert (left_over_ids $?p $?p0))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 kara $?mng ))
	(modify ?f2 (word kara $?m1)(root kara_xe) (root_components kara xe)(group_ids ?mid $?ids))
	(assert (anu_id-man_id-source ?aid ?mid grp_kara_xe))	
)

;Sleep also means ignorance. nIMxa kA arWa ajFAna BI hE  .
(defrule grp_hE
(declare (salience 550))
?f<-(left_over_ids ?mid1)
(manual_id-word ?mid1 hE)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng hE - ?mid ?mng1&~hE)
(score (anu_id ?aid) (man_id ?mid) (heuristics $? dictionary_match|hindi_wordnet_match $?)) 
(id-word ?aid means)
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng hE - ?mid ?mng1 hE))
	(assert (left_over_ids))
	(assert (anu_id-man_id-source ?aid ?mid grp_hE))	
)
;---------------------------------------------------------------------------------
;nimnaliKiwa kAraNoM se sArvajanika jamA kI lokapriyawA [baDa rahI hE].
;The [increasing] popularity of public deposits is due to:
(defrule align_with_dic
(declare (salience 300))
;(declare (salience 550))
?f<-(left_over_ids $?p ?id $?p1)
(or (manual_word_info (head_id ?id) (word $?mng)(root_components ?m)(vibakthi ?v $?vib))
    (manual_word_info (head_id ?id) (word $?mng) (root_components ?m ?m1&raka|raha)(vibakthi ?v $?vib)))
(database_info (meaning ?m)(group_ids ?aid))
(not (removed_man_id_with-anu_id ?id ?aid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-Apertium_output ?aid $?amng ?a)
(chunk_name-chunk_ids ?c $? ?id $?)
(not (man_id-wt-anu_ids ?id $?))
(not (anu_id-wt-man_ids $? ?id $?))
=>
        (retract ?f)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?c VGF) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?id $?mng))
        else
                (if (eq ?v 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?id $?mng))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?id $?mng ?v $?vib))
                )
        )
	(assert (anu_id-man_id-source ?aid ?id align_with_dic))	
)

;======================  Alignment with manual and std scope ==================================

;There are [quite] a few interesting places to visit in gujarat, india.
;BArawa meM gujarAwa meM GUmane ke lie [sacamuwa] kuCa rocaka sWAna hEM .
;gujarAwa, BArawa meM xeKane jAne ke lie [kAPI] kuCa rocaka sWAna hEM.
(defrule align_adj_with_chunk_info
(declare (salience 540))
?f<-(left_over_ids $?p ?id $?p1)
(chunk_name-chunk_ids JJP ?id)
(chunk_name-chunk_ids NP ?mid&:(= (+ ?id 1) ?mid) $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 ? $? - ?mid $?)
(id-HM-source-grp_ids ?id1 $? ?  ?fid $?)
(test (and (neq (numberp ?fid) FALSE)(neq ?id1 ?fid)))
?f1<-(id-Apertium_output ?aid1&:(= (- ?fid 1) ?aid1) $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(manual_word_info (head_id ?id) (word ?m $?mng)(vibakthi_components ?vib $?v))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?vib 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng ?vib $?v))
	)	
	(assert (anu_id-man_id-source ?aid1 ?id align_adj_with_chunk_info))	
		
)
;---------------------------------------------------------------------------------

;The little flats in such houses always have bells that ring like that.
;isa waraha ke [Cote-Cote] PlEtoM kI GaNtiyAz hameSA isI waraha kI AvAja karawI hEM .
;There was a continual coming and going through the two gates and in the two courtyards of the house.
;Gara ke [xonoM] xaravAjoM se Ora usake [xonoM] xAlAnoM meM lagAwAra AvAjAhI rahawI WI
(defrule align_with_manual_scope_next_wrd
(declare (salience 530))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?m $?mng)(vibakthi_components ?v $?vib)(group_ids $? ?lid))
(man_word-root-cat ?m ? ~p)
(test (neq (integerp (member$ ?m (create$ wo hama lIjie yahAz apanA apanI apane jo jEsA arWAw))) TRUE)) 
(or (manual_word_info (head_id ?mid) (group_ids =(+ ?lid 1) $?))
    (and (manual_id-word ?pid&:(= (+ ?lid 1) ?pid) @PUNCT-Comma)(manual_word_info (head_id ?mid) (group_ids =(+ ?pid 1) $?))))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid $?m1)
;(or (and (chunk_name-chunk_ids ?chnk&~VGF $? ?id)(chunk_name-chunk_ids ? $? ?mid $?))
(or (and (chunk_name-chunk_ids ?chnk&~VGF $? ?lid)(chunk_name-chunk_ids ? $? ?mid $?))
    (and (chunk_name-chunk_ids ? $?grp)(test (and (integerp (member$ ?mid $?grp)) (integerp (member$ ?id $?grp))))))
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(test (neq (integerp (member$ $?am (create$ $?m1))) TRUE))
(id-cat_coarse ?aid1 ?c1&~preposition&~verb)
(id-cat_coarse ?aid ?c&~preposition&~verb)
(id-word ?aid1 ?w&~the&~a)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?id ?aid1))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
		(if (eq ?v 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m $?mng))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m $?mng ?v $?vib))
		)
	else
		(if (eq ?v 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng ?v $?vib))
		)
	)
        (assert (checked_id ?id))
	(assert (anu_id-man_id-source ?aid1 ?id manual_scope_next_wrd))	
)

;---------------------------------------------------------------------------------
;To check previous word
;The atmosphere soured at the 36th [International] [Film] [Festival] that began at Panaji on Thursday , when the security guards on duty there misbehaved with the Bollywood actress Bipasha [Basu] .
;bqhaspawivAra ko paNajZI meM SurU hue 36veM [aMwarrARtrIya] [Pilma] [mahowsava] ke raMga meM BaMga usa samaya padZA jaba vahAM para wEnAwa surakRAkarmiyoM ne boYlIvuda kI aBinewrI bipASA [basu ke sAWa] xuvyarvahAra kiyA .
;There are [several other dharamashalas] found easily in the same fashion.
;isI prakAra [anya kaI [XarmaSAlAez]] AsAnI se mila jAwI hEM .
;usa samAna warIke se AsAnI se pAe hue [kaI anya dharamashalas] hEM.
(defrule align_with_manual_scope_prev_wrd
(declare (salience 530))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word $?mng ?m)(vibakthi_components ?v $?vib)(group_ids ?fid $?))
(test (neq (integerp (member$ ?m (create$ wo hama lIjie apanI una Axi isalie))) TRUE)) 
(or (manual_word_info (head_id ?mid) (group_ids $? =(- ?fid 1) $?))
    (and (manual_id-word ?pid&:(= (- ?fid 1) ?pid) @PUNCT-Comma)(manual_word_info (head_id ?mid) (group_ids =(- ?pid 1) $?))))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid $?)
(or (and (chunk_name-chunk_ids ? $?grp)(test (and (integerp (member$ ?mid $?grp)) (integerp (member$ ?id $?grp)))))
    (and (chunk_name-chunk_ids ?ch&~VGF&~VGNF ?id $?)(chunk_name-chunk_ids ? $? ?mid $?)))
?f1<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 ?c&~verb&~preposition&~wh-determiner&~conjunction&~pronoun)
(id-cat_coarse ?aid ?c1&~verb&~preposition&~wh-determiner&~determiner&~conjunction&~pronoun)
(id-word ?aid1 ?w&~the&~a&~to&~there&~and&~His)
(id-word ?aid ?w1&~that)
(man_word-root-cat ?m ? ~p)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?aid1 ?id))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
		(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?m))
		else
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?m ?v $?vib))
		)			
        else
		(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?m))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?m ?v $?vib))
		)
        )
	(assert (anu_id-man_id-source ?aid1 ?id manual_scope_prev_wrd))	
        (assert (checked_id ?id))
)

;---------------------------------------------------------------------------------
;But he had to agree in the face of her strong determination.
;Anu: paranwu usako usakI xqDa xqDawA ke bAvajUxa sahamawa honA padA.
;Man: lekina , usakI xqDa [icCA ke Age] unheM JukanA padA .
(defrule align_with_std_scope_prev_wrd
(declare (salience 520))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?mid)(group_ids $? ?l&:(= (- ?id 1) ?l)))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid $?)
(pada_info (group_ids $?grp))
?f1<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 ?c&~verb&~preposition)
(id-cat_coarse ?aid ?c1&~preposition); removed det cat : By getting up early you will be able to see these sights.
(id-word ?aid1 ?w1&~the&~a&~to&~and)
(id-word ?aid ?w2&~that&~the)
(test (and (integerp (member$ ?aid $?grp)) (integerp (member$ ?aid1 $?grp))))
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi_components ?v $?vib))
(man_word-root-cat ?w ? ~p)
(chunk_name-chunk_ids ?ch&~VGF $? ?id $?)
(test (neq (integerp (member$ ?w (create$ wo hama una apanA apane apanI isalie))) TRUE)) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?aid1 ?id))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib))) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?w))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?w ?v $?vib))
                )
        else
                (if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib))) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?w))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?w ?v $?vib))
                )
        )
	(assert (anu_id-man_id-source ?aid1 ?id std_scope_prev_wrd))	
)
;---------------------------------------------------------------------------------
;To thwart the Maoists' designs the state government must hold the [Panchayati] elections as soon as possible in the state.
;mAovAxiyoM ke isa kaxama ko nAkAma karane ke lie rAjya sarakAra ko cAhie ki vaha rAjya meM jalxa se jalxa [paFcAyawa] cunAva karAe .
(defrule align_with_std_scope_next_wrd
(declare (salience 520))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?mng $?rem)(vibakthi_components ?v $?vib)(group_ids $? ?lid))
(test (eq (integerp (member$ ?mng (create$ para bAxa yahAz isakI jisakA apanI jEsA))) FALSE));para xeSa meM afgrejoM ne isa Anxolana ko kucala xiyA .
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid&:(= (+ ?lid 1) ?mid) $?)
(pada_info (group_ids $?grp))
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(test (and (integerp (member$ ?aid $?grp)) (integerp (member$ ?aid1 $?grp))))
(id-cat_coarse ?aid1 ?c&~verb&~preposition)
(id-word ?aid1 ?w&~the&~a&~an&~to)
(test (neq (integerp (member$ ?mng (create$ wo hama una apanA apane apanI arWAw))) TRUE))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (if (eq ?v 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?mng $?rem))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?mng $?rem ?v $?vib))
                )
        else
                (if (eq ?v 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?mng $?rem))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?mng $?rem ?v $?vib))
                )
        )
	(assert (anu_id-man_id-source ?aid1 ?id std_scope_next_wrd))	
)
;================================== hnd pronoun rules ==============================

;Something new seemed to be taking place [within him], and with it he felt a sort of thirst for company
;lagawA WA [usake anxara] koI naI bAwa pExA ho rahI hE, Ora usake sAWa hI usameM kisI ke sAWa hone kI pyAsa-sI jAga rahI hE
(defrule align_hnd_pronoun_with_vib
(declare (salience 301))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&usakI|usake|unakI|unake|isakI|isake)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? - ?mid&:(= (+ ?id 1) ?mid) ?v)
(id-cat_coarse ?aid preposition)
(pada_info (group_head_id ?hid)(preposition ?aid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid $?))
(id-Apertium_output ?hid $?am)
=>
  	(retract ?f ?f0)
	(assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid - - ?id ?m ?v))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid $?am - ?id ?m ?v))
        )
	(assert (anu_id-man_id-source ?hid ?id hnd_pronoun_with_vib))	
)
;---------------------------------------------------------------------------------
(defrule align_hnd_pronoun
(declare (salience 301))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|vaha|apane-apane|una)
(chunk_name-chunk_ids ? $? ?id $? ?id1 $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?id1 $?)
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am) 
(id-cat_coarse ?aid1 determiner|pronoun)
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
	else	
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
	)
	(assert (pronoun_align ?aid1 ?id))
	(assert (anu_id-man_id-source ?aid1 ?id hnd_pronoun))	
)
;---------------------------------------------------------------------------------
;He was crushed by poverty, but the anxieties of his position had of late ceased to weigh upon him.
;vaha garIbI ke xvArA kucalA gayA WA, paranwu [usakI] sWiwi kI uwsukawA ne usake Upara wolanA piCale xinoM rokA WA.
;garIbI ne use bilakula kucala kara raKa xiyA WA. wo BI iXara kuCa samaya se use [apanI] hAlawa para koI ciMwA nahIM raha gaI WI.
(defrule align_hnd_pronoun1
(declare (salience 300))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|vaha|apane-apane)
(chunk_name-chunk_ids ? ?id)
(chunk_name-chunk_ids ? ?id1&:(= (+ ?id 1) ?id1) $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?id1 $?)
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 determiner|pronoun)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
        )
	(assert (pronoun_align ?aid1 ?id))
	(assert (anu_id-man_id-source ?aid1 ?id hnd_pronoun1))	
)
;---------------------------------------------------------------------------------
;Two vectors A and B are said to be equal if, and only if, they have the same magnitude and [the same direction].
;xo vektara e Ora bI bawAyA jAI ki samAna rahane vAlA hE yaxi Ora sirPa, iPZa unake samAna parimANa Ora [samAna xiSA] hEM.
;xo saxiSoM @A waWA @B ko kevala waBI barAbara kahA jA sakawA hE jaba unake parimANa barAbara hoM waWA [unakI xiSA samAna] ho. 
(defrule align_hnd_pronoun_with_std
(declare (salience 300))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|apane-apane)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?id1&:(= (+ ?id 1) ?id1) $?)
(pada_info (group_ids ?det $? ?aid $?))
(id-cat_coarse ?det determiner)
?f1<-(id-Apertium_output ?det $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det - - ?id ?m))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?am - ?id ?m))
        )
	(assert (anu_id-man_id-source ?det ?id hnd_pronoun_with_std))	
)
;---------------------------------------------------------------------------------
;Ajay Devgan has played the male lead against [her] in [the film].
;[isa] Pilma meM unake hIro ajaya xevagana bane hE .
(defrule modify_hnd_pronoun
;(declare (salience 280))
(declare (salience 551))
(chunk_name-chunk_ids ? $? ?id ?id1 $?)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|isake|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|eka|Apake|vaha)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?id1 $?)
(pada_info (group_head_id ?aid) (group_ids ?det $? ?aid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?a ? $? - ?id $?)
?f1<-(id-Apertium_output ?det $?am)
(id-cat_coarse ?det determiner)
(id-word ?aid ?w&~like)
(not (removed_man_id_with-anu_id ?id ?det))
=>
	(retract ?f0)
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det - - ?id ?m))
;		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
	else
;		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?am - ?id ?m))
	)
;	(assert (anu_id-man_id-source ?aid1 ?id modify_hnd_pronoun))	
	(assert (anu_id-man_id-source ?det ?id modify_hnd_pronoun))	
	(assert (anu_id-man_id-source ?a ?id removed_with_modify_hnd_pronoun))	
)
;----------------------------------------------------------------------------------------------------------
;He thinks that the strength of his armed forces is immeasurable, being specifically protected by the most experienced general, Grandfather Bhisma.
;vaha socawA hE ki awyanwa anuBavI senAnAyaka BIRma piwAmaha ke xvArA viSeRa rUpa se saMrakRiwa hone ke kAraNa usakI saSaswra senAoM kI Sakwi aparimeya hEM  .
(defrule modify_hnd_pronoun1
(declare (salience 551))
(chunk_name-chunk_ids ? ?pro)
(manual_id-word ?pro ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|isake|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|eka|Apake|apane-apane|vaha)
;(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|isake|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha|eka|Apake)
(chunk_name-chunk_ids ? $?ids)
(test (eq (integerp (member$ (+ ?pro 1) $?ids)) TRUE))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
(test (eq (integerp (member$ ?mid $?ids)) TRUE))
(prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa ?aid ?aid1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?)) 
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?a ? $? - ?pro $?mng)
?f1<-(id-Apertium_output ?aid1 $?am)
(not (removed_man_id_with-anu_id ?id ?aid1))
=>
        (retract ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?pro $?mng))
        (assert (anu_id-man_id-source ?aid1 ?pro modify_hnd_pronoun1))     
)
;================================== noun related rules ================================
(defrule modify_noun_align
(declare (salience 501))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid $?)
(id-cat_coarse ?adj&:(= (- ?aid 1) ?adj) adjective)
(pada_info (group_head_id 4)(group_ids $? ?adj ?aid))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?adj ?m - ?id ?m)
?f1<-(left_over_ids $?p ?mid1&:(=(+ ?id 1)?mid1) $?p1)
(manual_word_info (head_id ?mid1) (word $?mng) (vibakthi_components ?v $?vib)) 
=>
	(retract ?f0 ?f1)
	(bind $?ids (sort > (create$ $?p $?p1 ?mid)))
	(assert (left_over_ids $?ids))
	(if (eq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 $?mng ))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 $?mng ?v $?vib))
	)	
)


(defrule align_with_vib
(declare (salience 501))
?f0<-(left_over_ids $?p ?id $?p1)
(or (manual_word_info (head_id ?id) (word $?mng) (vibakthi_components $?vib))
    (manual_word_info (head_id ?id) (word $?mng) (tam_components ne|nA $?vib)))
(id-Apertium_output ?aid $?am $?vib)
(id-cat_coarse ?aid ~preposition)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(test (neq (implode$ (create$ $?vib)) ""))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
        (retract ?f0)
	(bind $?m (delete-member$ $?mng $?vib))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am ?vib - ?id $?m $?vib))
        (assert (left_over_ids  $?p  $?p1))
        (assert (got_align ?aid))
	(assert (anu_id-man_id-source ?aid ?id align_with_vib))	
)
;Marathas [ke nIce] ==  marAToM [ke anwargawa]
(defrule align_with_vib1
(declare (salience 500))
?f0<-(left_over_ids $?p ?id $?p1)
(or (manual_word_info (head_id ?id) (word $?mng) (vibakthi_components $?vib))
    (manual_word_info (head_id ?id) (word $?mng) (tam_components ne|nA $?vib)))
(id-Apertium_output ?aid $?am $?v)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(pada_info (group_head_id ?aid)(preposition ?pid))
(id-cat_coarse ?aid ~pronoun)
(database_info (components $?vib) (group_ids ?pid))
(test (neq (implode$ (create$ $?vib)) ""))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
        (retract ?f0)
        (bind $?m (delete-member$ $?mng $?vib))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am ?v - ?id $?m $?vib))
        (assert (left_over_ids  $?p  $?p1))
        (assert (got_align ?aid))
        (assert (anu_id-man_id-source ?aid ?id align_with_vib1))
)


;The Indian subcontinent is located largely in the tropical zone and has a fairly warm climate [throughout the year]. 
;BArawIya upamahAxvIpa aXiwakara uRNakatibanXIya kRewra meM sWiwa hE Ora [pUre varRa meM] kAPI garma jalavAyu hE.
;(database_info (root throughout)(components pUre meM))
(defrule split_and_align_with_vib
(declare (salience 500))
?f0<-(left_over_ids $?p ?id $?p1)
?f1<-(manual_word_info (head_id ?id) (word ?m1)(vibakthi 0))
?f2<-(manual_word_info (head_id ?mid) (word $?m2)(group_ids =(+ ?id 1) $?ids))
?f3<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am  - ?mid $?m ?vib)
(database_info (components ?m1 ?vib)(group_ids ?pid))
(pada_info (group_head_id ?aid)(preposition ?pid)) 
=>
	(retract ?f0 ?f1 ?f2 ?f3)
        (assert (left_over_ids  $?p  $?p1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?m1 $?m ?vib))
	(modify ?f2 (word ?m1 $?m2)(group_ids ?id =(+ ?id 1) $?ids))
)
	

;----------------------------------------------------------------------------------------
;A descendant of the Emperor Ashoka also got many Jain temples made during his regime.
;usa samrAt aSoka kI eka sanwAna BI prApwa kiyA bahuwa jEna manxiroM ne usake [xOra ke xOrAna] banAyA.
;samrAta aSoka ke eka vaMSaja ne BI apane [SAsana kAla ke xOrAna] kaI jEna manxira banavAe .
(defrule grp_with_vib
(declare (salience 490))
?f<-(left_over_ids ?id)
(or (chunk_name-chunk_ids NP $? ?id1 ?id $?) (and (chunk_name-chunk_ids NP ?id $?)(chunk_name-chunk_ids NP $? ?id1&:(= (- ?id 1) ?id1))))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a ?v $?vib - ?id1 ?m)
(or (manual_word_info (head_id ?id) (word ?m1) (vibakthi_components ?v $?vib) )(manual_word_info (head_id ?id) (word ?m1) (vibakthi_components ?v $?vib1) ))
(not (msg_printed))
=>
       (retract ?f ?f1)
       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a ?v $?vib - ?id1 ?m ?m1 ?v $?vib))
       (assert (left_over_ids))
	(assert (anu_id-man_id-source ?aid ?id1 grp_with_vib))	
)
;----------------------------------------------------------------------------------------
;Avoid smoking, drinking, intoxicating drugs.
;XUmrapAna , maxyapAna , naSIlI [xavAoM kA sevana] na kareM  .
(defrule align_special_words_after_kA
(declare (salience 490))
?f0<-(left_over_ids $?p ?id $?p1)
?f<-(manual_word_info (head_id ?id) (word ?m&sevana|samaya) (vibakthi 0) (group_ids ?id))
?f2<-(manual_word_info (head_id ?mid)(vibakthi kA)(group_ids $?d =(- ?id 1)))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?mng)
(not (msg_printed))
=>
        (retract ?f0 ?f1 ?f ?f2)
        (assert (left_over_ids $?p $?p1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?mng ?m))
        (bind ?v (string-to-field (str-cat "kA_"?m)))
        (modify ?f2 (vibakthi ?v)(vibakthi_components kA ?m)(group_ids $?d =(- ?id 1) ?id))
	(assert (anu_id-man_id-source ?aid ?mid align_special_words_after_kA))	
)

;========================== Alignment with phrasal ===================================
;In Hastinapur, Shree Adinath Prabhu, the first among the twenty four Tirthankaras of [Jainism], had ended his four hundred day fast by having juice of sugar cane from Shreyansh Kumar's hand.
;haswinApura meM [jEna Xarma ke] cObIsa wIrWaMkaroM meM se sabase pahale wIrWaMkara SrI AxinAWa praBu ne apane cAra sO xinoM ke vrawa ke paScAwa SreyaMRakumAra ke hAWoM se ganne kA rasa grahaNa kara apane vrawa kA samApana kiyA WA 
(defrule group_multi_word_with_phrasal
(declare (salience 400))
?f<-(left_over_ids $?p ?id ?id1 $?p1)
(manual_word_info (head_id ?id) (word $?mng  ?m))
(man_word-root-cat ?m ? ~p)
(manual_word_info (head_id ?id1) (word $?mng1  ?m1)(vibakthi_components ?v $?vib))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (eq (create$ $?mng  ?m $?mng1  ?m1) $?pmng))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(id-Apertium_output ?aid $?am)
(not (removed_man_id_with-anu_id ?id ?aid))
(id-cat_coarse ?aid ?c&~determiner&~conjunction)
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (or (eq ?v 0) (member$ ?m1 (create$ ?v $?vib))) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id1 $?mng ?m $?mng1 ?m1))
		(assert (anu_id-man_id-source ?aid ?id1 group_with_phrasal))	
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id $?mng ?m $?mng1 ?m1 ?v $?vib))
		(assert (anu_id-man_id-source ?aid ?id group_multi_word_with_phrasal))	
        )
)
;---------------------------------------------------------------------------------
;The young man, left standing alone in the [middle] of the room, listened inquisitively, thinking.
;kamare ke [maXya meM] akelA KadA honA calA jAyA, yuvaka ne, socawA huA jijFAsApUrvaka, sunA.
;nOjavAna kamare ke [bIcoMbIca] akelA raha gayA.
;(eng_id-eng_wrd-man_wrd 2 mentioned bawalAyA cukA) ; (manual_word_info (head_id 6) (word bawalAyA jA cukA hE))
(defrule align_with_phrasal
(declare (salience 390))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word $?mng  ?m)(vibakthi_components ?v $?vib))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (or (and (neq (length $?mng) 0) (neq (integerp (member$ $?mng (create$ $?pmng))) FALSE))
      (neq (integerp (member$ ?m (create$ $?pmng))) FALSE)(neq (integerp (member$ $?pmng (create$ $?mng ?m))) FALSE)(eq $?pmng (create$ $?mng ?m))))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(id-Apertium_output ?aid ?a $?am)
(not (removed_man_id_with-anu_id ?id ?aid))
(id-cat_coarse ?aid ?c&~determiner&~conjunction&~pronoun)
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then	
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?id $?mng ?m))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?id $?mng ?m ?v $?vib))
	)
	(assert (anu_id-man_id-source ?aid ?id align_with_phrasal))	
)
;---------------------------------------------------------------------------------
;The result [can be generalised] to any number of forces.
;isa pariNAma kA [vyApIkaraNa] baloM kI kisI BI safKyA ke lie [kiyA jA sakawA hE].
(defrule group_with_phrasal
(declare (salience 380))
?f<-(left_over_ids ?id )
(manual_word_info (head_id ?id) (word ?mng1)(vibakthi_components 0) )
(man_word-root-cat ?mng1 ?r ~p)
(test (eq (integerp (member$ ?mng1 (create$ awaH wo yahAz jina iwanA kare ki huI))) FALSE))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng)
(test (and (neq ?mng1 ?m) (neq ?a ?m)))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (neq (integerp (member$ ?mng1 (create$ $?pmng))) FALSE))
(not (removed_man_id_with-anu_id ?id ?aid))
(not (msg_printed))
=>
        (retract ?f ?f0)
	(assert (left_over_ids ))
        (if (> ?mid ?id) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?mng1 ?m $?mng))
        else
        	       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng ?mng1))
        )
	(assert (anu_id-man_id-source ?aid ?id group_with_phrasal))	
)

(defrule group_with_phrasal1
(declare (salience 375))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?mng1)(vibakthi_components $?v) )
(man_word-root-cat ?mng1 ?r ~p)
(test (eq (integerp (member$ ?mng1 (create$ awaH wo yahAz jina iwanA ki))) FALSE))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng)
(or (eng_id-eng_wrd-man_wrd ?aid ? ?m $?mng ?mng1) (anu_id-anu_mng-man_mng ?aid ? ?m $?mng ?mng1))
(not (removed_man_id_with-anu_id ?id ?aid))
(not (msg_printed))
=>
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng ?mng1 $?v))
        (assert (anu_id-man_id-source ?aid ?id group_with_phrasal))
)


;============================== get leftover_anu_ids ==========================
(defrule rm_aligned_anu_ids
(declare (salience 290))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?)
?f<-(hindi_id_order $?pre ?id $?po)
=>
        (retract ?f)
        (assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
(defrule get_left_over_ids
(declare (salience 290))
?f<-(hindi_id_order $?pre ?id $?po)
(not (id-Apertium_output ?id $?))
=>
        (retract ?f)
	(assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
;[The imagination] of eating food sitting on decorated tables there was thrilling in itself. 
;vahAz sajI mejoM para bETakara KAne kI [kalpanA] hI apane Apa meM behaxa romAFciwa kara xene vAlI WI .
(defrule rm_det_id
(declare (salience 290))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(pada_info (group_head_id ?aid) (group_ids ?det $? ?aid))
(id-word ?det the|a)
?f<-(hindi_id_order $?pre ?det $?po)
=>
	(retract ?f)
        (assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
;Increment of lymph nodes in size at [more than one] place.
;lasikA granWiyoM kA [eka se aXika] sWAna para AkAra baDanA .
(defrule rm_grouped_id
(declare (salience 290))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m ?v&se $? - ?mid $?m ?v $?)
(id-HM-source-grp_ids ? ?v $?m1 ? $?ids)
(test (eq (integerp (member$ (- ?aid 1) $?ids)) TRUE))
?f<-(hindi_id_order $?pre ?id $?po)
?f1<-(id-Apertium_output ?id $?)
(test (eq (integerp (member$ ?id $?ids))TRUE))
=>
	(retract ?f ?f1)
	(assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
;Apply the [walnut] [oil] into the nostrils of the nose daily.
;nAka ke naWunoM meM roja subaha-SAma [aKarota kA wela] lagAez.
(defrule rm_grouped_id1
(declare (salience 290))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?m1 - ?mid ?m kA ?m1)
?f1<-(id-Apertium_output ?id ?m)
?f<-(hindi_id_order $?pre ?id $?po)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?))
=>
	(retract ?f ?f1)
	(assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
(defrule rm_det_if_no_man_left
(declare (salience 290))
(left_over_ids )
?f0<-(hindi_id_order $?pre ?id $?po)
(or (id-cat_coarse ?id determiner|conjunction|preposition|pronoun)(id-word ?id there))
=>
        (retract ?f0)
        (assert (hindi_id_order $?pre $?po))
)
(defrule rm_pronoun
(declare (salience 290))
(left_over_ids ?mid)
(manual_word_info (head_id ?mid) (word ?mng))
(man_word-root-cat ?mng ? ~p)
?f0<-(hindi_id_order $?pre ?id $?po)
(id-cat_coarse ?id pronoun)
=>
	(retract ?f0)
        (assert (hindi_id_order $?pre $?po))
)

;==================================  Align single_anu_id with single_man_id ========================
(defrule align_single_id
(declare (salience 250))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order ?aid)
(id-Apertium_output ?aid $?amng)
(id-cat_coarse ?aid ?c&~determiner&~wh-adverb)
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi_components ?v $?vib))
(man_word-root-cat ?w ? ~p) 
(test (eq (integerp (member$ ?w (create$ awaH wo yaha vaha jise jisakA kyA jEse))) FALSE))
(not (msg_printed))
(not (added_emphatic ?id))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f ?f1)
	(assert (left_over_ids))
	(assert (hindi_id_order ))
	(if (or (eq ?v 0)(member$ ?w (create$ ?v $?vib))) then
		(if (eq (length $?amng) 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		)
			
	else
		(if (eq (length $?amng) 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		)
	)
	(assert (anu_id-man_id-source ?aid ?id align_single_id))
)
;---------------------------------------------------------------------------------
;By drinking plenty of water not only [the left-over] pieces of food gets cleaned, but saliva also gets formed.
;KUba pAnI pIne se na kevala KAne ke [bace - Kuce] tukadZe sAPa ho jAwe hEM , balki lAra BI banawI hE .
(defrule align_single_id1
(declare (salience 250))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order ?det ?aid)
(pada_info (group_head_id ?aid) (group_cat PP) (group_ids ?det ?aid))
(id-Apertium_output ?aid $?amng)
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi_components ?v $?vib))
(man_word-root-cat ?w ? ~p)
(test (eq (integerp (member$ ?w (create$ awaH wo yaha vaha jise jisakA kyA))) FALSE))
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
        (retract ?f ?f1)
        (assert (left_over_ids))
        (if (or (eq ?v 0)(member$ ?w (create$ ?v $?vib))) then
                (if (eq (length $?amng) 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
                )
        else
                (if (eq (length $?amng) 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
                )
        )
	(assert (anu_id-man_id-source ?aid ?id align_single_id1))
)
;---------------------------------------------------------------------------------
;Saliva destroys those bacteria which [create] stink in breath.
;lAra una bEktIriyA ko naRta karawI hE jo sAzsoM meM baxabU [pExA] [karawe hEM]  .
(defrule align_single_verb_with_kara_or_ho
(declare (salience 250))
?f<-(left_over_ids ?id ?id1)
?f1<-(hindi_id_order ?aid)
(id-Apertium_output ?aid $?amng)
(id-cat_coarse ?aid verb)
(manual_word_info (head_id ?id1) (word $?mng)(root kara|ho))
(manual_word_info (head_id ?id) (word ?w)(vibakthi_components 0))
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
(test (= (- ?id1 ?id) 1))
=>
        (retract ?f ?f1)
        (assert (left_over_ids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id1 @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?w $?mng  @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	(assert (anu_id-man_id-source ?aid ?id1 align_single_verb_with_kara_or_ho))
)

;=================== Add extra word if no slot left ==============================

;[Eat] less fatty food. kama vasAyukwa AhAra kA [kareM sevana]  .
(defrule add_extra_word_for_verb
(declare (salience 250))
?f<-(left_over_ids ?id)
(hindi_id_order)
(id-cat_coarse ?aid verb)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid&:(= (- ?id 1) ?mid) $?)
(manual_word_info (head_id ?mid) (word ?w)(root kara)(vibakthi 0))
(manual_word_info (head_id ?id) (word ?mng&sevana))
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
        (retract ?f ?f1)
        (assert (left_over_ids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid ?w @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?mng  @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	(assert (anu_id-man_id-source ?aid ?mid add_extra_word_for_verb))
)
;---------------------------------------------------------------------------------
;With more tension hormone cortisol [harms] the hippocampus of the brain seriously.
;jyAxA wanAva se hArmona kortisAla ximAga ke hippokEMpasa ko gamBIra [[nukasAna] [pahuzcAwA hE]]. 
(defrule add_word_for_verb
(declare (salience 200))
?f<-(left_over_ids ?id)
(hindi_id_order)
(id-cat_coarse ?aid verb)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?mng - ?mid $?mng)
(manual_word_info (head_id ?id) (word ?w)(vibakthi 0))
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
(database_info (root ?r) (meaning ?a))
(database_info (root ?r) (meaning ?w))
=>
        (retract ?f ?f1)
        (assert (left_over_ids))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?mng - ?mid @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN $?mng))
	(assert (anu_id-man_id-source ?aid ?mid add_word_for_verb))
)
;---------------------------------------------------------------------------------
;He might have come here. 
;[SAyaxa] vaha yahAM [AyA hogA] .
(defrule group_aux_with_anu
(declare (salience 200))
?f<-(left_over_ids ?id)
(hindi_id_order )
(manual_word_info (head_id ?id) (word ?m) (group_ids ?id))
(test (member$ ?m (create$ SAyaxa jarUra jarUrI jyAxA)))
(manual_word_info (head_id ?id0) (word $?mng)(group_ids $?ids))
(id-Apertium_output ?aid ?m $?mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?m $?mng - ?id0 $?mng)
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?m $?mng - ?id0 ?m $?mng))
	(assert (left_over_ids ))
	(assert (anu_id-man_id-source ?aid ?id0 group_aux_with_anu))
)
;---------------------------------------------------------------------------------
;Do clean the mouth every time with water after eating
;hara bAra KAne ke bAxa pAnI se muzha jarUra sAPa kareM  . 
(defrule group_aux_with_anu1
(declare (salience 200))
?f<-(left_over_ids ?id)
(hindi_id_order )
(manual_word_info (head_id ?id) (word ?m) (group_ids ?id))
(test (member$ ?m (create$ SAyaxa jarUra avaSya)))
(root-verbchunk-tam-chunkids ? ? ? $? ? $? ?aid)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am ?a - ?id1&:(=(+ ?id 1) ?id1) $?mng)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am ?a - ?id1 ?m $?mng))
        (assert (left_over_ids ))
	(assert (anu_id-man_id-source ?aid ?id1 group_aux_with_anu1))
)
;=========================== Align single id if no slot left ========================

;Automobiles and planes carry people from one place to the [other].
;motaragAdI Ora vAyuyAna yAwriyoM ko eka sWAna se [xUsare sWAna ko] le jAwe hEM .
;The connection between physics, technology and society can be seen in many examples.
;BOwikI, prOxyogikI waWA samAja ke bIca [pArasparika sambanXoM ko] bahuwa se uxAharaNoM meM xeKA jA sakawA hE.
(defrule align_single_id_for_no_slot_left
(declare (salience 190))
?f<-(left_over_ids ?id)
(hindi_id_order)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1&:(=(- ?id 1) ?id1) $?m)
(test (neq (create$ ?a $?amng) $?m))
(test (neq (create$ ?a)  $?m))
(test (eq (integerp (member$ ?a (create$ ki jise yahAM ))) FALSE))
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi_components ?v1 $?vib))
(man_word-root-cat ?w ? ~p)
(test (neq (integerp (member$ ?w (create$ inhIM evaM wo ki waWA yaha yahAz vaha usake usakA isa isakI koI kisI eka jo))) TRUE))
(not (msg_printed))
(id-cat_coarse ?aid ?cat&~verb&~determiner&~pronoun&~preposition)
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f ?f2)
	(if (or (eq ?v1 0) (member$ ?w (create$ ?v1 $?vib)))  then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1 ?m @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1 ?m @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v1 $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	)
	(assert (left_over_ids ))
)	
;--------------------------------------------------------------------------------
;cabAez Sugara rahiwa [cuiMga gama]
(defrule align_single_id_for_no_slot_left_for_mwe
(declare (salience 190))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?m - ?id1&:(=(+ ?id 1) ?id1) ?m)
(test (neq (length $?amng) 0))
(id-HM-source-grp_ids ?aid $? ? ?aid  ?aid1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(manual_word_info (head_id ?id) (word ?w)(vibakthi 0))
(test (neq (integerp (member$ ?w (create$ inhIM evaM wo ki waWA yaha yahAz vaha usake usakA isa isakI koI kisI eka))) TRUE))
(not (msg_printed))
(id-cat_coarse ?aid ?cat&~verb&~determiner&~pronoun)
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?m - ?id1 @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN ?m))
        (assert (left_over_ids ))
)
;--------------------------------------------------------------------------------
;yAnI Apa jalapAna meM yA [PaloM_ke miSraNa se] bilberrI yA jAmuna BI kyoM KA sakawe hEM.
;isalie nASwe yA [PrUta salAxa ke sAWa] Apa bilabErI yA blEkabErI BI KA sakawe hEM  .
(defrule align_single_id_for_no_slot_left_for_mwe1
(declare (salience 190))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?id1&:(=(+ ?id 1) ?id1) $?mng)
(id-HM-source-grp_ids $? ?aid1 ?aid)
(test (eq (numberp ?aid1) TRUE))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(manual_word_info (head_id ?id) (word ?w)(vibakthi 0))
(test (neq (integerp (member$ ?w (create$ inhIM evaM wo ki waWA yaha yahAz vaha usake usakA isa isakI koI kisI eka kyA))) TRUE))
(not (msg_printed))
(id-cat_coarse ?aid ?cat&~verb&~determiner&~pronoun)
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?id1 @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN $?mng))
        (assert (left_over_ids ))
)
;------------------------------------------------------------------------------------
;Paralysis [is limited] to half of the body, whole of the body or only till face. 
;pakRAGAwa AXe SarIra , sampUrNa SarIra yA kevala cehare waka [howA hE ].
(defrule mv_aux_align_to_head_if_not_aligned
(declare (salience 190))
(left_over_ids)
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?))
(id-Apertium_output ?h $?amng)
?f1<-(hindi_id_order $?p ?h $?p1)
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?amng - ?mid $?mng))
	(assert (hindi_id_order $?p $?p1))
	(assert (anu_id-man_id-source ?h ?mid	mv_aux_align))
)
;------------------------------------------------------------------------------------
;Eng: beef     Man: >>gAya kA<< mAMsa  Anu: go mAMsa
(defrule align_single_id_if_no_slot_left_for_kA
(declare (salience 190))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
(manual_word_info (head_id ?id) (word ?mng) (vibakthi kA)(group_ids $? ?lid))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(= (+ ?lid 1) ?mid) $?m)
=>
	(retract ?f0 ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?mng kA @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN $?m))
        (assert (left_over_ids ))
)
;------------------------------------------------------------------------------------
;Viruses are an important cause [of diarrhoea] in children and adults.
;baccoM Ora badZoM ko [xaswa lagane kA] muKya kAraNa rogANu (vAirasa) howe hEM .
(defrule align_single_id_if_no_slot_left_for_kA1
(declare (salience 191))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
(manual_word_info (head_id ?id) (word ?m) (vibakthi kA)(tam nA)(group_ids ?lid $?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng kA - ?mid&:(= (- ?lid 1) ?mid) ?mng)
=>
        (retract ?f0 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?mng kA - ?mid ?mng @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN ?m kA @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN ))
        (assert (left_over_ids ))
)


;As your Father, I feel your plan, especially for war, is unwise. 
;Apake piwA ke rUpa meM , muJe lagawA hE ki viSeRa rUpa se yuxXa ke lie ApakI yojanA murKawA hogI .
(defrule align_single_id2
(declare (salience 190))
?f<-(left_over_ids ?ki ?id)
(manual_id-word ?ki ki)
?f1<-(hindi_id_order ?aid)
(manual_word_info (head_id ?id) (word $?mng) (vibakthi $?vib)(vibakthi_components ?v $?))
(id-Apertium_output ?aid $?amng)
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f ?f)
	(assert (left_over_ids ?ki))
	(assert (hindi_id_order))
	(if (eq (length $?amng) 0) then
		(bind $?amng -)
	else
		(bind $?mng $?mng)
	)
	(if (eq ?v 0) then
      		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
        else
            	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
       )
	(assert (anu_id-man_id-source ?aid ?id   align_single_id2))
)

;============================= get group info =========================

(defrule modify_group_ids
(declare (salience 169))
?f0<-(group_ids-start_id-end_id $?ids - ?s ?e)
(pada_info (group_ids ?det ?s ?e) (preposition ?p&~0 $?p1))
(id-cat_coarse ?det determiner|adjective)
=>
	(retract ?f0)
	(bind $?ids (create$ ?p $?p1 ?det $?ids)) 
	(assert (group_ids-start_id-end_id $?ids - ?p ?e))
)
;------------------------------------------------------------------------
(defrule modify_group_ids1
(declare (salience 169))
?f0<-(group_ids-start_id-end_id $?ids - ?s ?e)
(pada_info (group_ids ?s ?e) (preposition ?p&~0 $?p1))
(not (conj_head-left_head-right_head $? ?e $?))
=>
        (retract ?f0)
        (bind $?ids (create$ ?p $?p1 $?ids)) 
        (assert (group_ids-start_id-end_id $?ids - ?p ?e))
)
;------------------------------------------------------------------------
;all religions [should be] [respected]. 
(defrule modify_group_ids2
(declare (salience 169))
?f0<-(group_ids-start_id-end_id $?ids - ?s ?e)
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?s)
=>
	(retract ?f0)
        (bind $?ids (create$ ?id $?ids)) 
        (assert (group_ids-start_id-end_id $?ids - ?id ?e))
)

;------------------------------------------------------------------------
(defrule combine_grp
(declare (salience 169))
?f0<-(group_ids-start_id-end_id $?d $?ids - ?s ?e)
?f1<-(group_ids-start_id-end_id $?ids ?id - ?s1 ?e1)
=>
	(retract ?f0 ?f1)
	(assert (group_ids-start_id-end_id $?d $?ids ?id - ?s ?e1))
)
;------------------------------------------------------------------------
(defrule rm_sub_group
(declare (salience 60))
?f0<-(group_ids-start_id-end_id $?ids - ? ?)
?f1<-(group_ids-start_id-end_id $?ids1 - ? ?)
(test (neq $?ids $?ids1))
(test (eq (subsetp $?ids1 $?ids) TRUE))
=>
	(retract ?f1)
)
;------------------------------------------------------------------------
;add grp if adj aligned and prvious verb not aligned and if it is kriyA mUla then group should be ((verb adj))
; paraspara karAra xvArA : jaba saMvixAkArI pakRa ilaka saMvixA ke sZWAna para naI saMvixA lAne , yA ise raxxa karane yA baxalane para sahamawa ho jAeM , wo mUla saMvixA [Kawma ho jAwI hE]
; By Mutual Agreement: where the parties to a contract agree to substitute a new contract for it, or to rescind or alter it, the original contract [ stands discharged ].
(defrule add_punc_for_verb_and_adj
(declare (salience 160))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?amng - ?mid $?mng)
(id-cat ?h verb_past_participle|adjective)
(id-cat_coarse ?id&:(= (- ?h 1) ?id) verb)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?))
(manual_word_info (head_id ?mid) (root_components $? ?r&kara|ho|xe|uTA))
(not (added_group_end ?h))
(not (added_group_end ?id))
(not (root-verbchunk-tam-chunkids ? ? ? $? ?id ?h $?))
=>
    ;    (retract ?f0)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
 ;       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?amng - ?mid  $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
  ;      (assert (added_group_end ?h))
   ;     (assert (added_group_end ?id))
 	(assert (group_ids-start_id-end_id ?id ?h - ?id ?h))
)
;------------------------------------------------------------------------
;Anu: yaha [vAwAvaraNa snehaSIla] IMXana baDAvA xene ke lie sarakAra UrjA surakRA prApwa karane ke lie PropN-bio-fuel-PropN peda/pOXA_ugAne vAle viBinna preraNAxAyaka Ora ArWika sahAyawAez xe rahI hE.
;Man: isa [paryAvaraNa-miwra] InXana ko baDZAvA xene ke lie sarakAra bAyo-InXana vqkRa / pedZa ugAne vAloM ko viBinna prowsAhana evaM sabsidI praxAna kara rahI hE wAki UrjA surakRA prApwa kI jA sake
(defrule add_punc_for_hyphen_word
(declare (salience 251))
(id-hyphen_word-vib ?mid - ?m ?m1 - ?)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp =(- ?aid 1) $?))
(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) ?am)
(database_info (components ?am) (group_ids ?aid1))
(database_info (components ?m) (group_ids ?aid1))
(not (added_group_end ?aid))
(not (added_group_end ?aid1))
?f1<-(hindi_id_order $?p ?aid1 $?p1)
=>
        (assert (hindi_id_order $?p $?p1))
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?am - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (added_group_end ?aid))
        (assert (added_group_end ?aid1))
 	(assert (group_ids-start_id-end_id ?aid1 ?aid - ?aid1 ?aid))
)
;------------------------------------------------------------------------

;However, you can massage with almond oil, castor oil, avocado oil and [vitamin E oil] also.
(defrule get_wsd_parser_group_ids
(declare (salience 65))
(id-HM-source-grp_ids ?h $? ? ?id $?a ?lid)
(test (eq (numberp ?id) TRUE))
(id-HM-source ?h ? NN_NN_NN_compound_rule|NN_NN_compound_rule)
(not (added_group_end ?h))
=>
	(bind $?ids (create$ ?id $?a ?lid))
        (assert (group_ids-start_id-end_id $?ids - ?id ?lid))
	(assert (got_grp_ids $?ids))
)

(defrule phrasal_vb_info
(declare (salience 66))
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
(id-HM-source-grp_ids ? $? ?h $? ?l)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?)
=>
	(assert (group_ids-start_id-end_id ?id ?h ?l - ?id ?l))
        (assert (got_grp_ids ?id ?h ?l))
)



(defrule get_mwe_group_ids
(declare (salience 70))
(ids-cmp_mng-head-cat-mng_typ-priority $?ids ?mng ? ? ? ?)
(id-HM-source ? ?mng ?)
(not (added_group_end ?aid))
(not (got_grp_ids $?ids))
(test (> (length $?ids) 1))
=>
        (bind ?s (nth$ 1 $?ids))
        (bind ?e (nth$ (length $?ids) $?ids))
        (assert (group_ids-start_id-end_id $?ids - ?s ?e))
	(assert (got_grp_ids $?ids))
)

(defrule get_mwe_grp_ids
(declare (salience 70))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a - ?mid ?m ?m1 $?v)
(score (anu_id ?aid) (man_id ?mid)(heuristics $? multi_dictionary_match $?))
(database_info (components ?m ?m1) (group_ids ?aid ?aid1&:(= (+ ?aid 1) ?aid1)))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (got_grp_ids ?aid ?aid1))
=>
	(bind $?ids (create$ ?aid ?aid1))
        (assert (group_ids-start_id-end_id $?ids - ?aid ?aid1))
	(assert (got_grp_ids $?ids))
)

(defrule get_pada_grp_ids
(declare (salience 69))
(pada_info (group_head_id ?h)(group_ids $?g) (preposition ?p&~0 $?p1))
(not (added_group_end ?h))
(not (conj_head-left_head-right_head $? ?h $?))
(test (<= (- (nth$ 1 $?g) ?p) 5))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?)
=>
	(bind $?ids (create$ ?p $?p1 $?g))
	(assert (group_ids-start_id-end_id $?ids - ?p ?h))
        (assert (got_grp_ids $?ids))
)
 
(defrule get_mwe_group_ids1
(declare (salience 63))
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng) 
    (score (anu_id ?aid)(man_id ?mid)(heuristics $? anu_exact_match|anu_exact_match_without_vib|anu_root_match $?))
)
(id-Apertium_output ?aid $?m)
;(or (ids-cmp_mng-head-cat-mng_typ-priority ?id $?a ?lid ? ? ? ? ?)
    (and (id-HM-source-grp_ids ? $? ?s ?id $?a ?lid)(test (eq (numberp ?id) TRUE)))
;)
(test (eq (integerp (member$ ?id (create$ $?m))) FALSE))
(test (member$ ?aid (create$ ?id $?a ?lid)))
(not (added_group_end ?aid))
(not (got_grp_ids ?id $?a ?lid))
=>
       (bind $?ids (create$ ?id $?a ?lid))
       (assert (group_ids-start_id-end_id $?ids - ?id ?lid))
)

(defrule add_mwe_punc
(declare (salience 45))
(group_ids-start_id-end_id $?ids - ?s ?e)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?s ?a $?am - ?mid $?mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?e ?a1 $?am1 - ?mid1 $?mng1)
(not (added_group_end ?s))
=>
	(retract ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s ?a $?am - ?mid @PUNCT-OpenParen@PUNCT-OpenParen $?mng))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e ?a1 $?am1 - ?mid1 $?mng1 @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (added_group_end ?s))
        (assert (added_group_end ?e))
	
)

(defrule add_mwe_punc1
(declare (salience 40))
(group_ids-start_id-end_id $?ids - ?s ?e)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?s ?a $?am - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e $?))
(not (added_group_end ?s))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s ?a $?am - ?mid @PUNCT-OpenParen@PUNCT-OpenParen $?mng))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e - - ?mid -@PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (added_group_end ?e))
        (assert (added_group_end ?s))
)

(defrule add_mwe_punc2
(declare (salience 40))
(group_ids-start_id-end_id $?ids - ?s ?e)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?e ?a $?am - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s $?))
(not (added_group_end ?s))
(not (added_group_end ?e))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e ?a $?am - ?mid $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
        (assert (added_group_end ?s))
        (assert (added_group_end ?e))
)

;But as destiny would have it, Rani Lakshmibai could not save Jhansi, and it [was taken over] by the British empire.
;lekina BAgya ke anurUpa hI huA , rAnI lakRmIbAI JAMsI ko nahIM bacA sakI Ora yaha britiSa sAmrAjya xvArA [kabjA kara liyA gayA]  .
(defrule add_mwe_punc3
(declare (salience 40))
(group_ids-start_id-end_id $?ids - ?s ?e)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e $?))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s $?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ?mid $?)
(test (member$ ?id $?ids))
(not (added_group_end ?s))
(not (added_group_end ?e))
=>
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?e - - ?mid @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?s - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen ))
        (assert (added_group_end ?s))
        (assert (added_group_end ?e))
)


(defrule add_punc_for_multi_prep
(declare (salience 21))
(pada_info (group_ids ?id) (preposition ?id2 $? ?id1&:(=(- ?id 1) ?id1)))  
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?am - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
(not (added_group_end ?id))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?am - ?mid $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id2 - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
        (assert (added_group_end ?id2))
        (assert (added_group_end ?id))
)


(defrule add_punc_for_prep_inf_verb
(declare (salience 20))
(or (and (pada_info (group_ids ?id) (preposition ?id1&:(=(- ?id 1) ?id1))) (test (neq ?id1 0)))
    (pada_info (group_ids ?id) (preposition ? ?id1&:(=(- ?id 1) ?id1))) 
    (pada_info (group_cat infinitive) (group_ids ?id1 ?id))
    (root-verbchunk-tam-chunkids ? ? ? ?id1 $? ?id)
)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?am - ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
(not (added_group_end ?id))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?am - ?mid $?mng @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
        (assert (added_group_end ?id1))
        (assert (added_group_end ?id))
)

(defrule add_punc_for_def_mwe
(declare (salience 15))
(left_over_ids)
(ids-cmp_mng-head-cat-mng_typ-priority ?id ?id1 $? ? ? ? ?)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid $?mmng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?))
(not (added_group_end ?id))
(not (added_group_end ?id1))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid $?mmng @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid @PUNCT-OpenParen@PUNCT-OpenParen -))
        (assert (added_group_end ?id1))
        (assert (added_group_end ?id))
)

(defrule add_punc_for_def_mwe1
(declare (salience 15))
(left_over_ids)
(or (ids-cmp_mng-head-cat-mng_typ-priority ?id ?id1 $? ? ? ? ?)
    (and (id-HM-source-grp_ids ? $? ?s ?id ?id1)(test (eq (numberp ?id) TRUE)))
)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?mng - ?mid $?mmng)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
(not (added_group_end ?id))
(not (added_group_end ?id1))
(not (group_ids-start_id-end_id $? ?id $? - ? ?))
=>
        (retract ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?mng - ?mid @PUNCT-OpenParen@PUNCT-OpenParen $?mmng))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 - - ?mid - @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (added_group_end ?id1))
        (assert (added_group_end ?id))
)       

(defrule add_punc_for_def_mwe2
(declare (salience 15))
;(left_over_ids)
(or (ids-cmp_mng-head-cat-mng_typ-priority ?id ?id1 $? ? ? ? ?)
    (and (id-HM-source-grp_ids ? $? ?s ?id ?id1)(test (eq (numberp ?id) TRUE)))
)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?a1 - ?mid $?m)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 ?a2 $?a3 - ?mid1 $?m1)
(not (added_group_end ?id))
(not (added_group_end ?id1))
(not (group_ids-start_id-end_id $? ?id $? - ? ?))
=>
        (retract ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?a $?a1 - ?mid @PUNCT-OpenParen@PUNCT-OpenParen $?m))
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 ?a2 $?a3 - ?mid1 $?m1 @PUNCT-ClosedParen@PUNCT-ClosedParen))
        (assert (added_group_end ?id1))
        (assert (added_group_end ?id))
)



(defrule rm_mwe_ids
(declare (salience 50))
(group_ids-start_id-end_id $? ?id $? - $?)
?f0<-(hindi_id_order $?p ?id $?p1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?)
=>
	(retract ?f0)
	(assert (hindi_id_order $?p $?p1))
)

;================== to print left over info in html ====================

(defglobal ?*lids* = (create$ ))
(defglobal ?*wcount* = 0)
(defglobal ?*amt_file* = a_p)

(defrule save_left_over_facts
(declare (salience 11))
(left_over_ids $?d)
(not (msg_printed))
=>
	(save-facts "left_over_ids1.dat" local left_over_ids)
;        (printout ?*lf-f* "  Alignment info :  " crlf )
;	(printout ?*lf-f* " -------------------  " crlf)
)

(defrule ctrl_fact_to_print_info
(declare (salience 11))
(hindi_id_order)
(left_over_ids)
=>
        (assert (dont_print))
)

(defrule print_heading
(declare (salience 10))
(not (dont_print))
=>

	(printout ?*lf-f* "  Alignment info :  " crlf )
        (printout ?*lf-f* " -------------------  " crlf)
)

;---------------------------------------------------------------------------------
(defrule print_info
(declare (salience 9))
(left_over_ids ?id $?)
(not (msg_printed))
=>
       ;(printout ?*lf-f* "  Alignment info:  " crlf )
       (printout ?*lf-f* " Un-assigned Hindi words:  " )
       (assert (msg_printed))
       (printout t "hnd_msg_printed")
)

(defrule get_wo_id_for_percent_info
(declare (salience 1))
;(hindi_id_order)
(left_over_ids ?id)
(manual_id-word ?id ?w)
(man_word-root-cat ?w ? prsg)
=>
	(assert (dont_count_id ?id))
)

(defrule get_left_over_eng_ct
(declare (salience -3))
(hindi_id_order $?ids)
(not (eng_msg_printed))
=>
	(assert (eng_left_over_ct (length $?ids)))
)


;---------------------------------------------------------------------------------
(defrule print_single_left_over_wrd
(declare (salience -1))
?f0<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib) )
(chunk_name-chunk_ids ?c $? ?id $?)
=>
	(retract ?f0)
	(bind ?*lids* (create$  ?*lids* ?id))
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF)(eq ?c VGNN)) then
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng))) crlf)
	else
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) crlf)
	)
)
;---------------------------------------------------------------------------------
(defrule print_left_over_wrd
(declare (salience -2))
?f0<-(left_over_ids ?id $?p ?lid)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi_components ?v $?vib))
(chunk_name-chunk_ids ?c $? ?id $?)
(not (left_over_ids ?))
=>
        (retract ?f0)
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF) (eq ?c VGNN)) then
		(printout ?*lf-f*  (str-cat (wx_utf8 (implode$ (create$ $?mng))) ", ") )
	else
		(printout ?*lf-f* (str-cat (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) ", "))
	)
	(assert (left_over_ids $?p ?lid))
	(bind ?*lids* (create$  ?*lids* ?id))
)
;---------------------------------------------------------------------------------
(defrule print_eng_info
(declare (salience -10))
(hindi_id_order ?id $?)
(not (eng_msg_printed))
=>
       (printout ?*lf-f* " Un-assigned English words:  " )
       (assert (eng_msg_printed))
       (printout t eng_msg_printed)
)
;---------------------------------------------------------------------------------
(defrule print_eng_left_over
(declare (salience -11))
?f0<-(hindi_id_order ?id )
(id-word ?id ?word)
=>
        (retract ?f0)
        (printout ?*lf-f* ?word crlf)
)
;---------------------------------------------------------------------------------
(defrule print_eng_left_over1
(declare (salience -12))
?f0<-(hindi_id_order ?id $?p ?lid)
(id-word ?id ?word)
=>
        (retract ?f0)
        (printout ?*lf-f* ?word ", " )
        (assert (hindi_id_order $?p ?lid))
)

;============================ generate alignment percent info =================
(defrule rm_id_from_lids
(declare (salience -615))
(dont_count_id ?id)
=>
	(bind ?*lids* (delete-member$ ?*lids* ?id))
	(printout t ?*lids* crlf)
)



(defrule get_wrd_count
(declare (salience -620))
(manual_word_info (head_id ?id))
;(msg_printed)
(not (got_count ?id))
(not (dont_count_id ?id))
=>
        (bind ?*wcount* (+  ?*wcount* 1))
	(assert (got_count ?id))
)
;---------------------------------------------------------------------------------
(defrule get_percent_info
(declare (salience -629))
(para_id-sent_id-no_of_words    ?para_id        ?sent_id  ?)
=>
;	(printout t  (length ?*lids*) " " ?*wcount* crlf)
	(bind ?percent (round (/ (* (- ?*wcount* (length ?*lids*) )100)?*wcount*)))
        (printout ?*amt_file* ?para_id"."?sent_id "       " ?percent " %			"?*wcount* )
)

(defrule eng_percent_info
(declare (salience -630))
(para_id-sent_id-no_of_words ?para_id ?sent_id  ?w)
;(eng_w_ct ?w)
(eng_left_over_ct ?l)
=>
;	(printout t ?w "  "?l " " (type ?l) crlf)
	(if (neq ?l 0) then
		(bind ?percent (round (/ (* (- ?w (length (create$ ?l)) )100) ?w)))
	else
		(bind ?percent 100)
	)
        (printout ?*amt_file*  "  	     " ?percent " %	        "?w crlf)
)

;======================= Add punctuations =================================

;Since momentum is a vector this implies three equations for the three directions {x, y, z}.
;cUzki saMvega eka saxiSa rASi hE, awaH yaha wIna xiSAoM [{@x], @y, @z} ke lie wIna samIkaraNa praxarSiwa karawA hE.
(defrule add_punct
(declare (salience -3))
?f<-(manual_id-word ?mid ?w&{|@PUNCT-OpenParen)
(manual_word_info (head_id ?h) (group_ids $? =(+ ?mid 1) $?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h $?mng)
 =>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h ?w $?mng))
)
;---------------------------------------------------------------------------------

(defrule add_punct1
(declare (salience -3))
?f<-(manual_id-word ?mid ?w&}|@PUNCT-ClosedParen|@PUNCT-Colon)
(manual_word_info (head_id ?h) (group_ids $? =(- ?mid 1) $?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h $?mng)
(test (eq (integerp (member$ - (create$ $?mng))) FALSE))
 =>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h $?mng ?w))
)

;===================== caution for hindi order ==================================

(defrule get_cautionary_fact_for_of
(declare (salience -12))
(pada_info (group_head_id ?h)(preposition ?pid) )
(id-word ?pid of)
=>
	(printout ?*catastrophe_file* "(sen_type-id-phrase hindi_order_for_of "?h"  prep)" crlf)
)

;=================== combine debug_info ==================================

(defrule combine_debug_fact
(declare (salience -13))
?f0<-(anu_id-man_id-source ?aid ?mid Oth_layer)
?f1<-(anu_id-man_id-source ?aid ?mid ?src)
(test (neq ?src Oth_layer))
=>
	(retract ?f0 ?f1)
	(bind ?ns (string-to-field (str-cat "Oth_layer,"?src)))
	(assert (anu_id-man_id-source ?aid ?mid ?ns))
)

