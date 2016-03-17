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
;-----------------------------------------------------------------------------------
