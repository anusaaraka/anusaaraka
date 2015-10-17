;This file is added by Shirisha Manju (17-10-14)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(defrule modify_score_fact
(declare (salience 200))
?f0<-(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?count)(heuristics $?hs)(rule_names $?rs))
?f1<-(anu_id-man_id-src-rule_name ?aid ?mid ?h ?r)
(test (eq (integerp (member$ ?r $?rs)) FALSE))
(heuristic-weightage ?h ?w)
=>
        (retract ?f1)
        (bind ?count (+ ?count ?w))
        (modify ?f0 (weightage_sum ?count)(heuristics $?hs ?h)(rule_names $?rs ?r ))
)
;-----------------------------------------------------------------------------------
(defrule get_count
(declare (salience 150))
?f0<-(anu_id-man_id-src-rule_name ?aid ?mid  ?h ?r)
?f1<-(anu_id-man_id-src-rule_name ?aid ?mid  ?h1 ?r1)
(test (neq ?h ?h1))
(heuristic-weightage ?h ?w)
(heuristic-weightage ?h1 ?w1)
=>
        (retract ?f0 ?f1)
        (bind ?sum (+ ?w ?w1))
        (assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?sum)(heuristics ?h ?h1)(rule_names ?r ?r1)))
)
;-----------------------------------------------------------------------------------
(defrule get_count1
(declare (salience 100))
?f0<-(anu_id-man_id-src-rule_name ?aid ?mid ?h ?r)
(heuristic-weightage ?h ?w)
=>
        (retract ?f0)
        (assert (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics ?h)(rule_names ?r)))
)
;------------------------------------  Modifying weight ------------------------------------
;same wt and same man_id , one from phrasal data and one from dic then increase wt for dic
;8. Critically appraise some of the shortfalls of the industrial [policy] pursued by the British colonial administration.
;8. britiSa OpaniveSika praSAsana xvArA apanAI gaI Oxyogika [nIwiyoM] kI kamiyoM kI AlocanAwmaka vivecanA kareM .
(defrule modify_count_for_same_wt
(declare (salience -1))
(or (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics M_layer_pharasal_match L_layer_pharasal_match))(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics L_layer_pharasal_match))(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics M_layer_pharasal_match )))
?f<-(score (anu_id ?aid1) (man_id ?mid)(weightage_sum ?w)(heuristics $? hindi_wordnet|dictionary|dictionary_without_vib|kriyA_mUla_with_dic $?))
(test (neq ?aid ?aid1))
=>
	(bind ?wt (+ ?w 1))
	(modify ?f (weightage_sum ?wt))
)
;-----------------------------------------------------------------------------------
; same wt and same anu_id ,  one from phrasal data and one from dic then increase wt for dic
;The lengths of the line segments representing these vectors are proportional to the magnitude of the vectors. 
;ina saxiSoM ko [vyakwa karane vAlI] [reKA-KaNdoM kI] lambAiyAz saxiSoM ke parimANa ke samAnupAwI hEM .
(defrule modify_count_for_same_wt1
(declare (salience -1))
(or (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics M_layer_pharasal_match L_layer_pharasal_match))(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics L_layer_pharasal_match))(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics M_layer_pharasal_match )))
?f<-(score (anu_id ?aid) (man_id ?mid1)(weightage_sum ?w)(heuristics $? hindi_wordnet|dictionary|dictionary_without_vib|kriyA_mUla_with_dic $?))
(test (neq ?mid ?mid1))
=>
        (bind ?wt (+ ?w 1))
        (modify ?f (weightage_sum ?wt))
)
;-----------------------------------------------------------------------------------
;if same wt and same anu_id then check the neighbour
;If the consensus is negative, then what measures would you think should be taken to banish it and why?
;yaxi ApakA sAmAnya mawa nakArAwmaka hE, wo [Apake] [vicAra se] ise samApwa karane ke lie kyA kaxama uTAe jAne cAhie Ora kyoM ?
(defrule modify_count_for_same_wt2
(declare (salience -2))
?f<-(score (anu_id ?aid) (man_id ?mid)(weightage_sum ?w)(heuristics $?))
(score (anu_id ?aid) (man_id ?mid1)(weightage_sum ?w)(heuristics $?))
(test (neq ?mid ?mid1))
(score (anu_id =(+ ?aid 1)) (man_id =(+ ?mid 1)))
=>
	(bind ?wt (+ ?w 1))
        (modify ?f (weightage_sum ?wt))
)
;-----------------------------------------------------------------------------------
