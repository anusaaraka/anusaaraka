;This file is added by Shirisha Manju (9-10-14)


(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;============================== modify score fact ======================================

;A man fallen in the ocean of nescience [can not be saved] simply [by rescuing] his outward dress SYMBOL-EMDASH the gross material body.
(defrule modify_score_with_nahIM
(declare (salience 150))
(root-verbchunk-tam-chunkids ? ? ? $? ?h)
(id-Apertium_output ?h nahIM $?)
?f0<-(score (anu_id ?h) (man_id ?mid) (weightage_sum ?w))
(manual_word_info (head_id ?mid) (word nahIM $?))
(not (modified_score ?h))
=>
	(bind ?w (+ ?w 1))
        (modify ?f0 (weightage_sum ?w))
	(assert (modified_score ?h))
)

;=============================== get facts for same weightage ===========================

(defrule get_same_wt_m_fact
(declare (salience 130))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w)(heuristics ?h&~0 $?))
?f1<-(score (anu_id ?aid1) (man_id ?mid) (weightage_sum ?w)(heuristics ?h&~0 $?))
(test (neq ?aid ?aid1))
=>
	(retract ?f0 ?f1)
	(assert (man_id-wt-anu_ids ?mid ?w ?aid ?aid1))
)

(defrule add_same_wt_m_fact
(declare (salience 140))
?f0<-(man_id-wt-anu_ids ?mid ?w $?ids)
?f1<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
(not (got_single_score_fact ?aid ?mid))
=>
	(retract ?f0 ?f1)
	(assert (man_id-wt-anu_ids ?mid ?w $?ids ?aid))
)

(defrule get_same_wt_a_fact
(declare (salience 135))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
?f1<-(score (anu_id ?aid) (man_id ?mid1) (weightage_sum ?w))
(test (neq ?mid ?mid1))
=>
        (retract ?f0 ?f1)
        (assert (anu_id-wt-man_ids ?aid ?w ?mid ?mid1))
)

(defrule add_same_wt_a_fact
(declare (salience 140))
?f0<-(anu_id-wt-man_ids ?aid ?w $?ids)
?f1<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
=>
        (retract ?f0 ?f1)
        (assert (anu_id-wt-man_ids ?aid ?w $?ids ?mid))
)

(defrule add_mid_with_diff_wt
(declare (salience 110))
?f0<-(anu_id-wt-man_ids ?aid ?w $?ids)
?f1<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w1))
(test (and (neq ?w ?w1)(< ?w1 ?w)))
=>
        (retract ?f0 ?f1)
        (assert (anu_id-wt-man_ids ?aid ?w $?ids ?mid))
)

(defrule add_aid_with_diff_wt
(declare (salience 110))
?f0<-(man_id-wt-anu_ids ?mid ?w $?ids)
?f1<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w1))
(test (and (neq ?w ?w1) (< ?w1 ?w)))
=>
        (retract ?f0 ?f1)
        (assert (man_id-wt-anu_ids ?mid ?w $?ids ?aid))
)


;=============================== modify/remove score fact for same weight ================

(defrule modify_score_with_punct
(declare (salience 102))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?sum))
?f1<-(id-right_punctuation  ?aid PUNCT-ClosedParen)
(manual_id-word =(+ ?mid 1) @PUNCT-ClosedParen)
=>
        (retract ?f1)
        (bind ?sum (+ ?sum 1))
        (modify ?f0 (weightage_sum ?sum))
)
;-----------------------------------------------------------------------------------
(defrule modify_score_with_prev_word_align
(declare (salience 102))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
(score (anu_id ?aid1) (man_id ?mid) (weightage_sum ?w))
(test (neq ?aid ?aid1))
(score_fact =(- ?aid 1) =(- ?mid 1) ? $?)
=>
        (bind ?sum (+ ?w 3))
        (modify ?f0 (weightage_sum ?sum))
)
;-----------------------------------------------------------------------------------
; ... [BArawa ke loga],  BArawa ko eka sampUrNa praBuwva-sampanna ...  
; ... THE [PEOPLE OF INDIA], having solemnly resolved ...
(defrule modify_score_with_prep_of
(declare (salience 120))
?f0<-(man_id-wt-anu_ids ?mid ?w $? ?aid $?)
(manual_word_info (head_id ?mid)(group_ids $? ?lid))
(manual_id-word ?lid ke|kA|kI)
(score_fact ?aid1 =(+ ?lid 1) ? $?)
(id-word =(+ ?aid1 1) of)
(id-word ?aid&:(= (+ ?aid1 2) ?aid) ?)
(not (aligned_anu_id ?aid))
=>
	(retract ?f0)
        (bind ?sum (+ ?w 3))
	(assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?sum)))
)
;-----------------------------------------------------------------------------------
;Gurudev, I see the eye of the bird. Just the eye! 
;guruxeva , muJe sirPa cidiyA kI AfKa xiKa rahI hE . sirPa AfKa .
;(defrule modify_score_with_prep_anu
;(declare (salience 80))
;?f0<-(anu_id-wt-man_ids ?aid ?w $? ?id $?)
;(manual_word_info (head_id ?mid)(group_ids $? =(- ?id 1)))
;(manual_id-word =(- ?id 1) ke|kA|kI)
;(score_fact ?aid1 ?mid  ? $?)
;(pada_info (group_head_id ?aid1) (group_ids ?lid $?))
;(id-word =(- ?lid 1) of)
;(id-word ?aid2&:(= (- ?lid 2) ?aid2) ?)
;(not (aligned_anu_id ?aid2))
;=>
;        (retract ?f0)
;        (bind ?sum (+ ?w 3))
;        (assert (score (anu_id ?aid2) (man_id ?id) (weightage_sum ?sum)))
;)
;-----------------------------------------------------------------------------------
;Lord Indra gave him [mighty weapons], including the [powerful Vajrayudh].
;BagavAna iMxra ne arjuna ko [SakwiSAlI Saswra] xie, jisameM [SakwiSAlI vajarAyuXa] BI SAmila WA 
(defrule modify_score_with_det_or_adj
(declare (salience 80))
?f0<-(anu_id-wt-man_ids ?aid ?w $? ?id $?)
(pada_info (group_head_id ?lid) (group_ids ?aid ?lid))
(score_fact ?lid ?mid  ? $?)
(manual_word_info (head_id ?mid)(group_ids =(+ ?id 1) $?))
(not (aligned_anu_id ?aid))
=>
        (retract ?f0)
        (bind ?sum (+ ?w 3))
        (assert (score (anu_id ?aid) (man_id ?id) (weightage_sum ?sum)))
)
;-----------------------------------------------------------------------------------
;- eka Piksda pletaPArama ko gArda [yA] hEMdarela ke sAWa upayoga kiyA jAwA hE jise eka eka sakRama vyakwi xvArA veriPAI kiyA jAwA hE @PUNCT-Comma [yA]  ...
;- A fixed platform is used with guard [or] handrails, verified by a competent person, [or]...
(defrule modify_score_for_conj
(declare (salience 120))
?f0<-(man_id-wt-anu_ids ?mid ?w $? ?aid $?)
(manual_id-word ?mid yA|Ora)
(score_fact =(- ?aid 1) =(- ?mid 1)  $? anu_exact_match|hindi_wordnet_match|dictionary_match $?)
=>
	(retract ?f0)
        (bind ?sum (+ ?w 3))
	(assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?sum)))
)
;-----------------------------------------------------------------------------------
;It is a Short [Service Commission] Entry wherein suitable candidates can opt for [Permanent Commission].
;yaha eka laGu [sevA Ayoga kI] praviRti hE jisameM upayukwa ummIxavAra [sWAyI Ayoga kA] cunAva kara sakawe hEM
(defrule get_a_scope_with_std_and_man
(declare (salience 120))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(chunk_name-chunk_ids NP $? ?pid ?mid $?)
(alignment (anu_id ?aid1) (man_id ?pid))
(pada_info (group_ids $? ?aid1 ?aid))
=>
	(retract ?f0)
	(bind ?sum (+ ?w 3))	
	(assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?sum)))
)
;-----------------------------------------------------------------------------------

(defrule get_m_scope_with_std_and_man
(declare (salience 120))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(chunk_name-chunk_ids NP $? ?pid ?mid $?)
(alignment (anu_id ?aid1) (man_id ?pid))
(pada_info (group_ids $? ?aid1 ?aid))
=>
        (retract ?f0)
        (bind ?sum (+ ?w 3))
        (assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?sum)))
)
;-----------------------------------------------------------------------------------
;I wish I could see Satyavati [once more]. kASa mEM [eka bAra Pira] sawyavAwI ko xeKa sakawA  .
(defrule same_wt_for_mwe
(declare (salience 120))
?f0<-(man_id-wt-anu_ids ?mid ?w ?aid ?aid1)
(ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)
(test (and (eq (integerp (member$ ?aid $?ids)) TRUE)
           (eq (integerp (member$ ?aid1 $?ids)) TRUE)))
(id-Apertium_output ?aid $?a)
(id-Apertium_output ?aid1 $?a1)
=>
	(retract ?f0)
        (bind ?sum (+ ?w 3))
	(if (eq (length $?a) 0) then
        	(assert (score (anu_id ?aid1) (man_id ?mid)(weightage_sum ?sum)))
	else
        	(assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?sum)))
	)
)		


(defrule get_single_m_score_fact
(declare (salience 110))
?f0<-(man_id-wt-anu_ids ?mid ?w ?aid)
=>
	(retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w)))
	(assert (got_single_score_fact ?aid ?mid))
)
;-----------------------------------------------------------------------------------
(defrule get_single_a_score_fact
(declare (salience 110))
?f0<-(anu_id-wt-man_ids ?aid ?w ?mid)
=>
        (retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w)))
	(assert (got_single_score_fact ?aid ?mid))
)

;-----------------------------------------------------------------------------------
(defrule modify_m_score_fact
(declare (salience 110))
?f0<-(man_id-wt-anu_ids ?mid ?w $?p ?aid $?p1)
(aligned_anu_id ?aid)
=>
	(retract ?f0)
	(assert (man_id-wt-anu_ids ?mid ?w $?p $?p1))
)	
;-----------------------------------------------------------------------------------
(defrule modify_a_score_fact
(declare (salience 110))
?f0<-(anu_id-wt-man_ids ?aid ?w $?p ?mid $?p1)
(aligned_man_id ?mid)
=>
        (retract ?f0)
        (assert (anu_id-wt-man_ids ?aid ?w $?p $?p1))
)

;======================== remove extra score facts for aligned ids =================
(defrule rm_wrong_score_fact_same_wt
(declare (salience 110))
?f0<-(man_id-wt-anu_ids ?mid $?p)
(aligned_man_id ?mid)
=>
	(retract ?f0)
)
;-----------------------------------------------------------------------------------
(defrule get_m_fact_for_same_wt_for_diff_id
(declare (salience 110))
(anu_id-wt-man_ids ?aid ?w $? ?mid $?)
?f0<-(score (anu_id ?aid1) (man_id ?mid) (weightage_sum ?w))
(not (got_single_score_fact ?aid1 ?mid))
=>
	(retract ?f0)
	(assert (man_id-wt-anu_ids ?mid ?w ?aid ?aid1))
)


;We see leaves falling from trees and water flowing down a dam.
;hama pedoM se girawe hue pawwoM ko waWA bAzXa se bahawe hue pAnI ko xeKawe hEM .
(defrule rm_wrong_score_fact
(declare (salience 110))
?f0<-(score (anu_id ?aid))
(or (aligned_anu_id ?aid) (removed_aid ?aid))
(not (got_score ?aid ?))
=>
        (retract ?f0)
)
;-----------------------------------------------------------------------------------
;I hope I can remember the words.
;mEM una SabxoM ko yAxa kara sakawA hUM.
(defrule rm_wrong_score_fact1
(declare (salience 110))
?f0<-(score (man_id ?mid))
(aligned_man_id ?mid)
(not (got_score ? ?mid))
=>
        (retract ?f0)
)
(defrule rm_parser_wrong_score_fact
(declare (salience 110))
?f0<-(score (man_id ?id))
(manual_word_info (head_id ?mid) (group_ids $? ?id $?))
(aligned_man_id ?mid)
(not (got_score ? ?mid))
=>
        (retract ?f0)
)

;-----------------------------------------------------------------------------------
;Taking diet rich in vitamin-A can also be helpful in keeping eyes healthy. 
;vitAmina-e se BarapUra AhAra lenA BI AzKoM ko svasWa banAe raKane meM maxaxagAra sAbiwa ho sakawA hE.
(defrule rm_aux_score
(declare (salience 110))
(score (anu_id ?aid) (man_id ?mid)(heuristics $? anu_exact_match  $?))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?aid)
?f0<-(score (anu_id ?id) )
=>
	(retract ?f0)
)
;-------------------------- get parenthesis grp info ---------------------
(defrule get_punct_grp_ids
(declare (salience 115))
(manual_id-word ?mid @PUNCT-OpenParen)
(manual_id-word =(+ ?mid 1) ?w)
=>
	(assert (punt_ids ?mid =(+ ?mid 1)))
)

(defrule add_gids
(declare (salience 115))
?f0<-(punt_ids ?mid $?ids ?mid1)
(test (eq (numberp ?mid1) TRUE))
(manual_id-word =(+ ?mid1 1) ?w&~@PUNCT-ClosedParen)
=>
	(retract ?f0)
	(assert (punt_ids ?mid $?ids ?mid1 =(+ ?mid1 1)))
)

(defrule get_punt_grp_wrds_fact
(declare (salience 114))
?f0<-(punt_ids ?p $?ids)
=>
	(assert (punct_gids-punct_gwrds ?p $?ids - $?ids))
)	

(defrule get_punt_grp_wrds
(declare (salience 113))
?f0<-(punct_gids-punct_gwrds ?p $?ids - $?p1 ?id $?p2)
(manual_id-word ?id ?w)
=>
	(retract ?f0)
	(if (eq (numberp ?w) TRUE) then
		(bind ?h (string-to-field (str-cat @ ?w)))
	else
		(bind ?h ?w)
	)
        (assert (punct_gids-punct_gwrds ?p $?ids - $?p1 ?h $?p2))
)


;Work-life Balance.  kArya sanwulana (Work-life Balance).
(defrule rm_fact_if_punct_inconsistency
(declare (salience 110))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
(punct_gids-punct_gwrds ?p $? ?mid $? - $?)
(not (id-left_punctuation ? PUNCT-OpenParen))
(not (id-right_punctuation ?  PUNCT-OpenParen))
=>
	(retract ?f0)
)


;================================== alignment using score ============================

;Ex for Not: We see [leaves] falling from trees and water flowing down a dam. 
;Anu: hama bAzXa kama bahawe_hue pedoM Ora pAnI se girawe_hue pawwiyoM ko xeKawe hEM.
;Man: hama pedoM se girawe hue [pawwoM ko] waWA bAzXa se bahawe hue pAnI ko xeKawe hEM .
(defrule align_with_max_sum
(declare (salience 90))
?f1<-(score (anu_id ?aid)(man_id ?mid)(weightage_sum ?score)(heuristics $?h)(rule_names $?r))
(not (score (weightage_sum ?score1&:(> ?score1 ?score))))
(id-Apertium_output ?aid $?a_mng)
?f0<-(manual_word_info (group_ids $?d ?mid $?d1))
(not (aligned_anu_id ?aid))
=>
        (retract ?f1)
;        (retract ?f0 ?f1)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?a_mng)(man_meaning $?d ?mid $?d1)))
	(assert (aligned_anu_id ?aid))
	(assert (aligned_man_id ?mid))
	(assert (score_fact ?aid ?mid ?score $?h - $?r))
)
;-----------------------------------------------------------------------------------
;Ex: if aper output not present then consider hindi meaning
; According to this model, the positive charge of the atom is uniformly distributed [throughout] the volume of the atom and the negatively charged electrons are embedded in it like seeds in a watermelon.
;isa moYdala ke anusAra, paramANu kA Xana AveSa paramANu meM [pUrNawayA] ekasamAna rUpa se viwariwa hE waWA qNa AveSiwa ilektroYna isameM TIka usI prakAra anwaHsWApiwa hEM jEse kisI warabUja meM bIja.
(defrule align_with_max_sum1
(declare (salience 80))
?f1<-(score (anu_id ?aid)(man_id ?mid)(weightage_sum ?score)(heuristics $?h)(rule_names $?r))
(not (score (weightage_sum ?score1&:(> ?score1 ?score))))
(not (id-Apertium_output ?aid $?))
(id-HM-source ?aid $?amng ?)
?f0<-(manual_word_info (head_id ?mid) (group_ids $?ids))
(not (aligned_anu_id ?aid))
=>
        (retract ?f1)
;        (retract ?f0 ?f1)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning $?ids)))
        (assert (aligned_anu_id ?aid))
        (assert (aligned_man_id ?mid))
	(assert (score_fact ?aid ?mid ?score $?h - $?r))
)

;================================= replace id with word ==============================
(defrule replace_id_with_word
(declare (salience -500))
?f0<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_word_info (head_id ?mid) (word $?mng) (vibakthi_components ?v $?vib))
=>
	(retract ?f0 ?f1)
	(if (eq ?v 0) then
		(modify ?f0 (man_meaning $?mng))
	else
		(modify ?f0 (man_meaning $?mng ?v $?vib))
	)
)


;(defrule replace_id_with_word_for_nos
;(declare (salience -500))
;?f<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
;?f1<-(manual_id-word ?id ?h_mng)
;(test (numberp ?h_mng))
;=>
;        (retract ?f1)
;        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
;        (modify ?f (man_meaning $?pre ?h_mng  $?pos))  
;)
;;-----------------------------------------------------------------------------------
;(defrule replace_id_with_word
;(declare (salience -501))
;?f<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
;?f1<-(manual_id-word ?id $?h_mng)
;=>
;        (retract ?f ?f1)
;        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
;        (modify ?f (man_meaning $?pre $?pos))  
;        else
;        (modify ?f (man_meaning $?pre $?h_mng  $?pos))  
;        )
;)

(defrule save_new_score_fact
(declare (salience -501))
(score_fact ?aid ?mid ?sc $?h - $?r)
(not (got_score ?aid ?mid))
=>
	(assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?sc) (heuristics $?h)(rule_names $?r)))
	(assert (got_score ?aid ?mid))
)

;==================== get left over ids info =======================================

(defglobal ?*lids* = (create$ )) 

(defrule get_left_over_ids
(declare (salience -503))
?f0<-(manual_id-word ?id ?mng)
(manual_word_info (head_id ?id)) 
=>
	(retract ?f0)
	(bind ?*lids* (create$  ?*lids* ?id))
)

(defrule print_left_over_ids
(declare (salience -504))
=>
	(bind $?ids (sort > ?*lids*))
	(assert (left_over_ids  $?ids))
	(save-facts "align_score_new.dat" local score)
)

