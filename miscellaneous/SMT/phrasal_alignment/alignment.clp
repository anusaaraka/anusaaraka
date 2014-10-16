;This file is added by Shirisha Manju (9-10-14)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))


;================================= generate count ==================================
(defrule modify_score_fact
(declare (salience 200))
?f0<-(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?count)(heuristics $?hs)(rule_names $?rs))
?f1<-(anu_id-man_id-root-src-rule_name ?aid ?mid ? ?h ?r)
(test (eq (integerp (member$ ?r $?rs)) FALSE))
=>
	(retract ?f1)
	(bind ?count (+ ?count 1))
	(modify ?f0 (weightage_sum ?count)(heuristics $?hs ?h)(rule_names $?rs ?r ))
)
;-----------------------------------------------------------------------------------
(defrule get_count
(declare (salience 150))
?f0<-(anu_id-man_id-root-src-rule_name ?aid ?mid ? ?h ?r)
?f1<-(anu_id-man_id-root-src-rule_name ?aid ?mid ? ?h1 ?r1)
(test (neq ?h ?h1))
=>
	(retract ?f0 ?f1)
	(assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum 2)(heuristics ?h ?h1)(rule_names ?r ?r1)))
)
;-----------------------------------------------------------------------------------
(defrule get_count1
(declare (salience 100))
?f0<-(anu_id-man_id-root-src-rule_name ?aid ?mid ? ?h ?r)
=>
        (retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum 1)(heuristics ?h)(rule_names ?r)))
)
;;================================== alignment using score ============================
;Ex for Not: We see [leaves] falling from trees and water flowing down a dam. 
;Anu: hama bAzXa kama bahawe_hue pedoM Ora pAnI se girawe_hue pawwiyoM ko xeKawe hEM.
;Man: hama pedoM se girawe hue [pawwoM ko] waWA bAzXa se bahawe hue pAnI ko xeKawe hEM .
(defrule align_with_sum
(declare (salience 90))
(score (anu_id ?aid)(man_id ?mid)(weightage_sum ?score&~1))
(not (score (man_id ?mid)(weightage_sum ?score1&:(> ?score1 ?score))))
(id-Apertium_output ?aid $?a_mng)
?f0<-(manual_word_info (head_id ?mid) (group_ids $?ids))
(not (aligned_anu_id ?aid))
=>
        (retract ?f0)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?a_mng)(man_meaning $?ids)))
	(assert (aligned_anu_id ?aid))
)
;-----------------------------------------------------------------------------------
(defrule align_with_sum1
(declare (salience 40))
(score (anu_id ?aid)(man_id ?mid)(weightage_sum 1)(heuristics ?h&~no_heuristics_found))
(id-Apertium_output ?aid $?a_mng)
?f0<-(manual_word_info (head_id ?mid) (group_ids $?ids))
=>
        (retract ?f0)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?a_mng)(man_meaning $?ids)))
)
;-----------------------------------------------------------------------------------
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

