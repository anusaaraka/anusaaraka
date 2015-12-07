;This file is added by Shirisha Manju (9-10-14)


(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

;================================== alignment using score ============================
;Ex for Not: We see [leaves] falling from trees and water flowing down a dam. 
;Anu: hama bAzXa kama bahawe_hue pedoM Ora pAnI se girawe_hue pawwiyoM ko xeKawe hEM.
;Man: hama pedoM se girawe hue [pawwoM ko] waWA bAzXa se bahawe hue pAnI ko xeKawe hEM .
(defrule align_with_max_sum
(declare (salience 90))
?f1<-(score (anu_id ?aid)(man_id ?mid)(weightage_sum ?score))
(not (score (weightage_sum ?score1&:(> ?score1 ?score))))
(id-Apertium_output ?aid $?a_mng)
?f0<-(manual_word_info (head_id ?mid) (group_ids $?ids))
(not (aligned_anu_id ?aid))
=>
        (retract ?f0 ?f1)
        (assert (alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?a_mng)(man_meaning $?ids)))
	(assert (aligned_anu_id ?aid))
	(assert (aligned_man_id ?mid))
)
;-----------------------------------------------------------------------------------
;Ex: if aper output not present then consider hindi meaning
; According to this model, the positive charge of the atom is uniformly distributed [throughout] the volume of the atom and the negatively charged electrons are embedded in it like seeds in a watermelon.
;isa moYdala ke anusAra, paramANu kA Xana AveSa paramANu meM [pUrNawayA] ekasamAna rUpa se viwariwa hE waWA qNa AveSiwa ilektroYna isameM TIka usI prakAra anwaHsWApiwa hEM jEse kisI warabUja meM bIja.
(defrule align_with_max_sum1
(declare (salience 80))
?f1<-(score (anu_id ?aid)(man_id ?mid)(weightage_sum ?score))
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
)
;-----------------------------------------------------------------------------------
;We see leaves falling from trees and water flowing down a dam.
;hama pedoM se girawe hue pawwoM ko waWA bAzXa se bahawe hue pAnI ko xeKawe hEM .
(defrule rm_wrong_score_fact
(declare (salience 40))
?f0<-(score (anu_id ?aid))
(aligned_anu_id ?aid)
=>
        (retract ?f0)
)
;-----------------------------------------------------------------------------------
;I hope I can remember the words.
;mEM una SabxoM ko yAxa kara sakawA hUM.
(defrule rm_wrong_score_fact1
(declare (salience 40))
?f0<-(score (man_id ?mid))
(aligned_man_id ?mid)
=>
        (retract ?f0)
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

;==================== to get left over ids info =======================================

(defglobal ?*lids* = (create$ )) 

(defrule get_left_over_ids
(declare (salience -502))
?f0<-(manual_id-word ?id ?mng)
(manual_word_info (head_id ?id)) 
;(test (eq (integerp (member$ ?mng (create$ @PUNCT-QuestionMark @PUNCT-Comma .))) FALSE))
=>
	(retract ?f0)
	(bind ?*lids* (create$  ?*lids* ?id))
)

(defrule print_left_over_ids
(declare (salience -503))
=>
	(assert (left_over_ids  ?*lids*))
)

