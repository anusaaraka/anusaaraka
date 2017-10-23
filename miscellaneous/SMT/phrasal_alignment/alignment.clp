;This file is added by Shirisha Manju (9-10-14)


(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))


;=============================== get facts for same weightage ===========================

(defrule get_same_wt_m_fact
(declare (salience 130))
?f0<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
?f1<-(score (anu_id ?aid1) (man_id ?mid) (weightage_sum ?w))
(test (neq ?aid ?aid1))
=>
	(retract ?f0 ?f1)
	(assert (man_id-wt-anu_ids ?mid ?w ?aid ?aid1))
)

(defrule add_same_wt_m_fact
(declare (salience 140))
?f0<-(man_id-wt-anu_ids ?mid ?w $?ids)
?f1<-(score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w))
=>
	(retract ?f0 ?f1)
	(assert (man_id-wt-anu_ids ?mid ?w $?ids ?aid))
)

(defrule get_same_wt_a_fact
(declare (salience 130))
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
(manual_id-word ?lid ke|kA)
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
(defrule get_single_m_score_fact
(declare (salience 110))
?f0<-(man_id-wt-anu_ids ?mid ?w ?aid)
=>
	(retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w)))
)
;-----------------------------------------------------------------------------------
(defrule get_single_a_score_fact
(declare (salience 110))
?f0<-(anu_id-wt-man_ids ?aid ?w ?mid)
=>
        (retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid) (weightage_sum ?w)))
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
        (retract ?f0 ?f1)
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
        (retract ?f0 ?f1)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?amng)(man_meaning $?ids)))
        (assert (aligned_anu_id ?aid))
        (assert (aligned_man_id ?mid))
	(assert (score_fact ?aid ?mid ?score $?h - $?r))
)

;================================= replace id with word ==============================

(defrule replace_id_with_word_for_nos
(declare (salience -500))
?f<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id ?h_mng)
(test (numberp ?h_mng))
=>
        (retract ?f1)
        (bind ?h_mng (string-to-field (str-cat @ ?h_mng)))
        (modify ?f (man_meaning $?pre ?h_mng  $?pos))  
)
;-----------------------------------------------------------------------------------
(defrule replace_id_with_word
(declare (salience -501))
?f<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?anu_mng)(man_meaning $?pre ?id $?pos))
?f1<-(manual_id-word ?id $?h_mng)
=>
        (retract ?f ?f1)
        (if (member$ ?h_mng (create$ @PUNCT-Comma @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-DoubleQuote @PUNCT-DoubleQuote @PUNCT-Semicolon @PUNCT-Colon @PUNCT-SingleQuote @PUNCT-OpenParen @PUNCT-ClosedParen @PUNCT-Exclamation @SYM-Dollar)) then
        (modify ?f (man_meaning $?pre $?pos))  
        else
        (modify ?f (man_meaning $?pre $?h_mng  $?pos))  
        )
)

(defrule save_new_score_fact
(declare (salience -502))
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

