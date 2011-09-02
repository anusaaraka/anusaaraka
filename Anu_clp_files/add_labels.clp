(load-facts "rasp_constituents_info.dat")
(load-facts "rasp_node_category_info.dat")
(defglobal ?*id* = 999)


;These are children's books. 
(defrule add_NP_phrase_POS
(declare (salience 1001))
?f<-(Mother-Daughters      ?Mot     $?pre ?NP ?pos $?post)
(Node-Category  ?NP  NN2)
(Node-Category  ?pos  POS)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
=>
	(retract ?f)
        (bind ?*id* (+ ?*id* 1))
        (bind ?NP_phrase (explode$ (str-cat "NP-" ?*id*)))
        (assert (Mother-Daughters ?NP_phrase ?NP ?pos))
        (assert (Node-Category ?NP_phrase NP))
	(assert (Mother-Daughters ?Mot $?pre ?NP_phrase $?post))
        (assert (node-rule ?Mot add_NP_phrase_POS))
)


;He heard the sound of rain from the kitchen. 
(defrule add_NP_phrase0
(declare (salience 1000))
?f<-(Mother-Daughters     ?Mot   $?pre ?PP $?pos)
(Node-Category  ?PP  PP)
(Node-Category  ?Mot  ~VP)
(Node-Category  ?Mot  ~AP)
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

;She is sleeping. 
(defrule add_NP_phrase
(declare (salience 900))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  PPHS1|NP1|DD1|DD2|PPIS1|PPHS2|DB2|PPIS2|NN2|NN1|EX|PPY|PPH1|NN)
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

;He has been frequently coming. 
(defrule add_ADVP_phrase
(declare (salience 800))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  RR|RL)
(Node-Category  ?Mot  ~AP)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
=>
(retract ?f ?f1)
(bind ?*id* (+ ?*id* 1))
(bind ?ADVP_phrase (explode$ (str-cat "ADVP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?ADVP_phrase $?post))
(assert (Mother-Daughters      ?ADVP_phrase ?pos))
(assert (Node-Category ?ADVP_phrase ADVP))
(assert (Mother-Daughters      ?pos ?child)))

;What is your name? 
(defrule add_WHNP_phrase
(declare (salience 700))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  DDQ)
(test (or (neq (length $?pre) 0)(neq (length $?post) 0)))
=>
(retract ?f)
(bind ?*id* (+ ?*id* 1))
(bind ?WHNP_phrase (explode$ (str-cat "WHNP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?WHNP_phrase $?post))
(assert (Mother-Daughters      ?WHNP_phrase ?pos))
(assert (Node-Category ?WHNP_phrase WHNP))
)

;Where did you put the milk? 
(defrule add_WHADVP_phrase
(declare (salience 700))
?f<-(Mother-Daughters      ?Mot     $?pre ?pos $?post)
?f1<-(Mother-Daughters     ?pos     ?child)
(Node-Category  ?pos  RRQ)
(not (node-rule ?Mot add_WHADVP_phrase))
=>
(retract ?f )
(bind ?*id* (+ ?*id* 1))
(bind ?WHADVP_phrase (explode$ (str-cat "WHADVP-" ?*id*)))
(assert (Mother-Daughters      ?Mot  $?pre ?WHADVP_phrase $?post))
(assert (Mother-Daughters      ?WHADVP_phrase ?pos))
(assert (Node-Category ?WHADVP_phrase WHADVP))
(assert (node-rule ?Mot add_WHADVP_phrase))
(assert (node-rule ?WHADVP_phrase add_WHADVP_phrase))
)


;He has been frequently coming. 
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

;The Moon is shining. 
(defrule add_VP_phrase1
(declare (salience 600))
?f<-(Mother-Daughters      ?Mot     ?fir_ch $?pre ?pos $?post)
(Node-Category  ?Mot  VP)
(Node-Category  ?pos  VVG|VV0)
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


;I will give up smoking. 
;If you use that strategy, he will wipe you out. 
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
?f3<-(Node-Category  ?pos  WHNP|WHADVP)
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

;Did you take your breakfast? 
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

;He wasted his golden opportunity to play in the national team. 
(defrule add_S_phrase
?f<-(Mother-Daughters ?Mot $?pre ?NP $?post)
?f1<-(Mother-Daughters ?NP $?pre1 ?VP $?post1)
?f2<-(Mother-Daughters ?VP ?TO ?VP1)
?f3<-(Node-Category ?NP NP)
?f4<-(Node-Category ?VP VP)
?f5<-(Node-Category ?TO TO)
?f6<-(Node-Category ?VP1 VP)
=>
(retract ?f ?f1)
(bind ?*id* (+ ?*id* 1))
(bind ?S_phrase (explode$ (str-cat "S-" ?*id*)))
(assert (Mother-Daughters ?Mot $?pre ?NP ?S_phrase $?post))
(assert (Mother-Daughters ?NP $?pre1 $?post1))
(assert (Mother-Daughters ?S_phrase ?VP)) 
(assert (Node-Category ?S_phrase S))
)

;This is the way to go. 
(defrule add_S_phrase1
?f<-(Mother-Daughters ?Mot $?pre ?VP $?post)
?f2<-(Mother-Daughters ?VP ?TO ?VP1)
?f4<-(Node-Category ?VP VP)
?f5<-(Node-Category ?TO TO)
?f6<-(Node-Category ?VP1 VP|V)
(not (node-rule ?VP add_S_phrase1))
=>
(retract ?f)
(bind ?*id* (+ ?*id* 1))
(bind ?S_phrase (explode$ (str-cat "S-" ?*id*)))
(assert (Mother-Daughters ?Mot $?pre ?S_phrase $?post))
(assert (Mother-Daughters ?S_phrase ?VP))
(assert (Node-Category ?S_phrase S))
(assert (node-rule ?VP add_S_phrase1))
)


(watch facts)
(watch rules)
(run)
(save-facts  "rasp_constituents.dat" local Mother-Daughters)
(save-facts  "rasp_node_category.dat" local Node-Category)
(exit)
