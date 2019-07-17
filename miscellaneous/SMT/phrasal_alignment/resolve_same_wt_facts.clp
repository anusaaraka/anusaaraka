;This file is written by Shirisha Manju

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
;======================= modify/remove wt facts ==============================================
(defrule rm_wrong_fact
(declare (salience 2010))
?f0<-(anu_id-wt-man_ids ?aid ?w)
=>
	(retract ?f0)
)
;----------------------------------------------------------------------------------------------
(defrule modify_a_wt_fact
(declare (salience 2000))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(anu_id-man_id-source ? ?mid ?)
=>
        (retract ?f0)
        (assert (anu_id-wt-man_ids ?aid ?w $?p $?p1))
)
;----------------------------------------------------------------------------------------------
(defrule modify_m_wt_fact
(declare (salience 2000))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(anu_id-man_id-source ?aid ? ?)
=>
	(retract ?f0)
	(assert (man_id-wt-anu_ids ?mid ?w $?p $?p1))
)
;----------------------------------------------------------------------------------------------
(defrule get_unaligned_verb_ids
(declare (salience 2001))
?f<-(man_verb_count-verbs ?c  $?m ?mid $?m1)
?f1<-(anu_verb_count-verbs ?c $?a ?aid $?a1)
(anu_id-man_id-source ?aid ?mid ?)
=>
        (retract ?f ?f1)
        (assert (man_verb_count-verbs ?c  $?m $?m1))
        (assert (anu_verb_count-verbs ?c $?a $?a1))
)
;============================== resolve same wt problem ===============================
(defrule resolve_neither
(declare (salience 1990))
?f0<-(anu_id-wt-man_ids ?neither ?w $?p ?mid $?p1)
(id-word ?neither neither)
(manual_word_info (head_id ?mid) (word na wo))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?neither $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (left_over_ids $?l $?l1))
        (assert (hindi_id_order $?h $?h1))
        (assert (anu_id-man_id-source ?neither ?mid resolve_neither))
)
;----------------------------------------------------------------------------------------------
(defrule resolve_with_viSeRya-of_saMbanXI
(declare (salience 1990))
?f<-(anu_id-wt-man_ids ?v ? $?p ?mid $?p1)
(prep_id-relation-anu_ids ? viSeRya-of_saMbanXI ?v ?s)
(id-Apertium_output ?s ?mng1 ?vib&ke|kI|kA)
(alignment (anu_id ?s) (man_id ?ms))
(manual_word_info (head_id ?ms)(vibakthi kA|ke)(group_ids $? ?lid))
(manual_word_info (head_id ?mid&:(= (+ ?lid 1)?mid)))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?v $?h1)
=>
        (retract ?f ?f1 ?f2)
        (assert (anu_id-man_id-source ?v ?mid resolve_with_viSeRya-of_saMbanXI))
        (assert (left_over_ids $?l $?l1))
        (assert (hindi_id_order $?h $?h1))
)
;----------------------------------------------------------------------------------------------
(defrule resolve_pronoun_using_rel_anu_id
(declare (salience 1990))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa|kriyA-subject ?v ?aid)
(alignment (anu_id ?v) (man_id ?mid1&:(= (+ ?mid 1) ?mid1)))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid RaRTI_viSeRaNa))
)
;----------------------------------------------------------------------------------------------
(defrule resolve_pronoun_using_rel_man_id
(declare (salience 1990))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa ?v ?aid) 
(alignment (anu_id ?v) (man_id ?mid1&:(= (+ ?mid 1) ?mid1)) (anu_meaning $?amng)(man_meaning $?mng))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid RaRTI_viSeRaNa))
)
;----------------------------------------------------------------------------------------------
(defrule resolve_pronoun_using_rel_and_chunk
(declare (salience 1980))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa ?v ?aid)
(alignment (anu_id ?v) (man_id ?mid1))
(chunk_name-chunk_ids ? ?fid&:(= (+ ?mid 1) ?fid) $? ?mid1)
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid RaRTI_viSeRaNa_and_chunk))
)
;----------------------------------------------------------------------------------------------
;yahAz XarmakRewre [waWA] kurukRewre SabxoM kI, unakI ewihAsika [waWA] vExika mahawwA ke awirikwa , yahI sArWakawA hE  .
;[waWA] vExika
(defrule resolve_with_conj
(declare (salience 1980))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(id-Apertium_output ?aid ?c&Ora|waWA|yA)
(score (anu_id ?aid1&:(= (+ ?aid 1) ?aid1)) (man_id ?mid1) (heuristics $? hindi_wordnet_match|anu_exact_match $?))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
	(retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid resolved_with_conj))
)

(defrule resolve_with_conj1
(declare (salience 1980))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(manual_word_info (head_id ?mid) (word ?c&Ora|waWA|yA))
(score (anu_id ?aid1&:(= (+ ?aid 1) ?aid1))(man_id ?mid1&:(= (+ ?mid 1) ?mid1)) (heuristics $? hindi_wordnet_match|anu_exact_match $?))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid resolved_with_conj))
)

;----------------------------------------------------------------------------------------------
;[kisI praxeSa ke] iwihAsa ke nirmANa yA/Ora punarnirmANa meM purAwAwwvika srowoM kI [eka mahawvapUrNa] BUmikA howI hE  .
(defrule resolve_using_pada
(declare (salience 1980))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(pada_info (group_ids $? ?aid ?aid1 $?))
(alignment (anu_id ?aid1) (man_id =(+ ?mid 1)))
(not (alignment (anu_id ?aid)))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
 	(retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid resolved_with_pada))
)

(defrule resolve_using_pada1
(declare (salience 1980))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(pada_info (group_ids $? ?aid ?aid1 $?))
(alignment (anu_id ?aid1) (man_id =(+ ?mid 1)))
(not (alignment (anu_id ?aid)))
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid resolved_with_pada))
)

;----------------------------------------------------------------------------------------------
;will be asked to sign == haswAkRara karane ke lie kahA jAegA
(defrule resolve_kriyA_with_rel
(declare (salience 1980))
?f0<-(man_id-wt-anu_ids ?mid ? $?p ?kriyA $?p1)
(prep_id-relation-anu_ids - kriyA-kqxanwa_karma ?kriyA ?k)
(prep_id-relation-anu_ids - to-infinitive =(+ ?kriyA 1) ?k)
?f2<-(hindi_id_order $?h ?kriyA $?h1)
?f1<-(left_over_ids $?l ?mid $?l1)
(alignment (anu_id ?k) (man_id ?mid1))
(manual_word_info (head_id ?mid1) (group_ids $? ?lid&:(=(- ?mid 1) ?lid)))
=>
 	(retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?kriyA ?mid kriyA_with_rel))
)	
;----------------------------------------------------------------------------------------------
(defrule resolve_kriyA_with_count
(declare (salience 1980))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?kriyA $?p1)
(man_verb_count-verbs ?c ?kriyA $?)
(anu_verb_count-verbs ?c ?aid $?)
?f1<-(left_over_ids $?l ?kriyA $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
(not (and (alignment (anu_id ?aid)) (score (anu_id ?aid)(heuristics $? dictionary_match|hindi_wordnet_match $?))))
=>
	(retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
	(assert (anu_id-man_id-source ?aid ?kriyA resolve_with_vcount))
)
;----------------------------------------------------------------------------------------------
;Our strength [is] immeasurable, and we are perfectly protected by Grandfather Bhisma, whereas the strength of the Pandavas, carefully protected by Bhima, [is] limited.
;hamArI Sakwi aparimeya [hE] Ora hama saba piwAmaha xvArA BalIBAzwi saMrakRiwa hEM , jabaki pANdavoM kI Sakwi BIma xvArA BalIBAzwi saMrakRiwa hokara BI sImiwa [hE] .
(defrule get_single_a_wt_align
(declare (salience 2001))
?f0<-(anu_id-wt-man_ids ?aid ?w ?mid)
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
(not (anu_id-man_id-source ?aid $?))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid left_over_same_wt_align))
)
;----------------------------------------------------------------------------------------------
(defrule get_single_m_wt_align
(declare (salience 2001))
?f0<-(man_id-wt-anu_ids ?mid ?w ?aid)
?f1<-(left_over_ids $?l ?mid $?l1)
?f2<-(hindi_id_order $?h ?aid $?h1)
(not (anu_id-man_id-source ?aid $?))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (hindi_id_order $?h $?h1))
        (assert (left_over_ids $?l $?l1))
        (assert (anu_id-man_id-source ?aid ?mid left_over_same_wt_align))
)

;============================== assert alignment fact ================
(defrule align_fact
(declare (salience 100))
(anu_id-man_id-source ?aid ?mid ?)
(not (alignment (anu_id ?aid)))
(id-Apertium_output ?aid $?am)
(manual_word_info (head_id ?mid)(word $?m)(vibakthi_components ?v $?vib))
=>
	(if (eq ?v 0) then
		(assert (alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?am) (man_meaning $?m)))
	else
		(assert (alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?am) (man_meaning $?m ?v $?vib)))
	)
)

