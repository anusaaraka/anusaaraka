(load-facts "rasp_constituents_info.dat")
(load-facts "rasp_node_category_info.dat")
(defglobal ?*id* = 999)


;(defrule add_NP_phrase0
;(declare (salience 1000))
;?f<-(Mother-Daughters     ?Mot   $?child)
;;(Node-Category  ?pos0  DD1|NN1|AT1|NP1)
;(test (> (length $?child) 1))
;(not (node-rule ?Mot add_NP_phrase0))
;(not (node-rule1 ?Mot add_NP_phrase0))
;=>
;(retract ?f)
;(bind ?str (create$ ))
;(bind ?str1 (create$ ))
;(bind ?flag 0)
;(loop-for-count (?i 1 (length $?child))
;                (bind ?mem (nth$ ?i $?child))
;                (bind ?index (str-index "-" ?mem))
;                (bind ?cat (sub-string  1  (- ?index 1)  ?mem))
;                ;PPHS1|NP1|DD1|PPIS1|PPHS2|DB2|PPIS2|NN2|NN1|EX|PPY|PPH1
;                (if (or (eq ?cat "PPHS1")(eq ?cat "NP1")(eq ?cat "DD1")(eq ?cat "PPIS1")(eq ?cat "DB2")(eq ?cat "PPIS2")(eq ?cat "NN2")(eq ?cat "NN1")(eq ?cat "EX")(eq ?cat "PPY")(eq ?cat "PPH1")(eq ?cat "AT1")(eq ?cat "JJ")) then
;                    (printout t "In FIRST IF" ?i crlf)
;                    (bind ?flag 1)
;                    (bind ?str (create$ ?str ?mem))
;                else
;                    (if (eq ?flag 1) then 
;                        (printout t "In SECOND IF" ?i crlf)
;                        (bind ?*id* (+ ?*id* 1))
;                        (bind ?NP_phrase (explode$ (str-cat "NP-" ?*id* )))
;                        (assert (Mother-Daughters  ?NP_phrase ?str))
;                        (assert (Node-Category ?NP_phrase NP))
;                        (assert (node-rule1 ?NP_phrase add_NP_phrase0))
;                        (bind ?str1 (create$ ?str1 ?NP_phrase ?mem))
;                        (bind ?str (create$ ))
;                        (bind ?flag 0)
;                     else  (printout t "In THIRD IF" ?i " "?str  " "?mem crlf)
;                           (bind ?str1 (create$ ?str1 ?mem))
;                           (printout t "In THIRD IF-------" ?i " "?str  " "?mem crlf)
;                            (bind ?flag 0))
;                )) 
;
; (if (eq ?flag 1)
;            then
;            (bind ?*id* (+ ?*id* 1))
;            (bind ?NP_phrase (explode$ (str-cat "NP-" ?*id*)))
;            (assert (Mother-Daughters ?NP_phrase ?str))
;            (assert (Node-Category ?NP_phrase NP))
;            (assert (node-rule1 ?NP_phrase add_NP_phrase0))
;            (bind ?str1 (create$ ?str1 ?NP_phrase))
;            (bind ?str (create$))
; )
;
;                (assert (Mother-Daughters      ?Mot ?str1))
; (assert (node-rule ?Mot add_NP_phrase0))
;)


(defrule add_NP_phrase0
(declare (salience 1000))
?f<-(Mother-Daughters     ?Mot   $?pre ?PP $?pos)
(Node-Category  ?PP  PP)
(Node-Category  ?Mot  ~VP)
(not (node-rule ?Mot add_NP_phrase0))
=>
(retract ?f)
	(bind ?*id* (+ ?*id* 1))
            (bind ?NP_phrase (explode$ (str-cat "NP-" ?*id*)))
            (assert (Mother-Daughters ?NP_phrase $?pre))
            (assert (Node-Category ?NP_phrase NP))
            (assert (Mother-Daughters ?Mot   ?NP_phrase ?PP $?pos))
            (assert (node-rule ?NP_phrase add_NP_phrase0))
            (assert (node-rule ?Mot add_NP_phrase0))
)

(defrule add_NP_phrase
(declare (salience 900))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  PPHS1|NP1|DD1|PPIS1|PPHS2|DB2|PPIS2|NN2|NN1|EX|PPY|PPH1)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
(not (Node-Category  ?Mot  NP))
(not (node-rule1 ?Mot add_NP_phrase0))
=>
(retract ?f ?f1)
;(bind ?index (str-index "-" ?pos))
;(bind ?id (sub-string (+ ?index 1) (length ?pos) ?pos))
(bind ?*id* (+ ?*id* 1))
(bind ?NP_phrase (explode$ (str-cat "NP-" ?*id*))) 
(assert (Mother-Daughters      ?Mot  $?pre ?NP_phrase $?post))
(assert (Mother-Daughters      ?NP_phrase ?pos))
(assert (Node-Category ?NP_phrase NP))
(assert (Mother-Daughters      ?pos ?child)))

(defrule add_ADVP_phrase
(declare (salience 800))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  RR|RL)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
=>
(retract ?f ?f1)
(bind ?*id* (+ ?*id* 1))
(bind ?ADVP_phrase (explode$ (str-cat "ADVP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?ADVP_phrase $?post))
(assert (Mother-Daughters      ?ADVP_phrase ?pos))
(assert (Node-Category ?ADVP_phrase ADVP))
(assert (Mother-Daughters      ?pos ?child)))

(defrule add_WHNP_phrase
(declare (salience 700))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  DDQ)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
=>
(retract ?f ?f1)
(bind ?*id* (+ ?*id* 1))
(bind ?WHNP_phrase (explode$ (str-cat "WHNP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?WHNP_phrase $?post))
(assert (Mother-Daughters      ?WHNP_phrase ?pos))
(assert (Node-Category ?WHNP_phrase WHNP))
(assert (Mother-Daughters      ?pos ?child)))


(defrule add_VP_phrase0
(declare (salience 600))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
(Node-Category  ?Mot  VP)
(Node-Category  ?pos  ADVP)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
(not (node-rule ?Mot add_VP_phrase0))
=>
(retract ?f )
(bind ?*id* (+ ?*id* 1))
(bind ?VP_phrase (explode$ (str-cat "VP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?VP_phrase))
(assert (Mother-Daughters      ?VP_phrase ?pos $?post))
(assert (Node-Category ?VP_phrase VP))
(assert (node-rule ?VP_phrase add_VP_phrase0))
)

(defrule add_VP_phrase1
(declare (salience 600))
?f<-(Mother-Daughters      ?Mot     ?fir_ch $?pre ?pos $?post)
(Node-Category  ?Mot  VP)
(Node-Category  ?pos  VVG)
;(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
(not (node-rule ?Mot add_VP_phrase1))
=>
(retract ?f )
(bind ?*id* (+ ?*id* 1))
(bind ?VP_phrase (explode$ (str-cat "VP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  ?fir_ch $?pre ?VP_phrase))
(assert (Mother-Daughters      ?VP_phrase ?pos $?post))
(assert (Node-Category ?VP_phrase VP))
(assert (node-rule ?VP_phrase add_VP_phrase1))
)


(defrule add_PRT_phrase
(declare (salience 500))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
(Node-Category  ?pos  RP)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
(not (node-rule ?Mot add_PRT_phrase))
=>
(retract ?f )
(bind ?*id* (+ ?*id* 1))
(bind ?PRT_phrase (explode$ (str-cat "PRT-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?PRT_phrase $?post))
(assert (Mother-Daughters      ?PRT_phrase ?pos))
(assert (Node-Category ?PRT_phrase PRT))
(assert (node-rule ?PRT_phrase add_PRT_phrase))
)

;What is your name? 
(defrule change_constituents_of_WHNP
(declare (salience 500))
?f1<-(Mother-Daughters ?Mot1 $?pre1 ?Mot $?post1)
?f2<-(Mother-Daughters ?Mot $?pre ?pos ?VP $?post)
?f0<-(Mother-Daughters ?VP $?child)
?f3<-(Node-Category  ?pos  WHNP)
?f4<-(Node-Category  ?Mot  S)
?f5<-(Node-Category  ?VP  ?)
=>
(retract ?f0 ?f1 ?f2 ?f4 ?f5)
(bind ?*id* (+ ?*id* 1))
(bind ?SBARQ_phrase (explode$ (str-cat "SBARQ-" ?*id*)))
(bind ?SQ_phrase (explode$ (str-cat "SQ-" ?*id*)))
(assert (Mother-Daughters      ?Mot1  $?pre1 ?SBARQ_phrase $?post1))
(assert (Mother-Daughters      ?SBARQ_phrase  $?pre ?pos ?SQ_phrase $?post))
(assert (Mother-Daughters      ?SQ_phrase $?child))  
(assert (Node-Category ?SBARQ_phrase SBARQ))
(assert (Node-Category ?SQ_phrase SQ))
)

(defrule change_constituents_of_VDD
(declare (salience 500))
?f0<-(Mother-Daughters ?Mot $?pre ?Mot1 $?post)
?f1<-(Mother-Daughters ?Mot1 $?pre1 ?dat1 ?dat2 $?post1)
?f4<-(Mother-Daughters ?dat2 $?child)
?f2<-(Node-Category ?dat1 VDD)
?f3<-(Node-Category ?dat2 S)
(not (node-rule ?dat1 change_constituents_of_VDD))
=>
(retract ?f0 ?f1 ?f3 ?f4)
(bind ?*id* (+ ?*id* 1))
(bind ?SQ_phrase (explode$ (str-cat "SQ-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?SQ_phrase $?post))
(assert (Mother-Daughters      ?SQ_phrase  $?pre1 ?dat1 $?child $?post1))
(assert (Node-Category ?SQ_phrase SQ))
(assert (node-rule ?dat1 change_constituents_of_VDD))
)


(watch facts)
(watch rules)
(run)
(save-facts  "rasp_constituents.dat" local Mother-Daughters)
(save-facts  "rasp_node_category.dat" local Node-Category)
(exit)
