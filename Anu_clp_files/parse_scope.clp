(defrule replace-daughters
(declare (salience 1500))
?used2<-(Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre ?mother $?post)
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother $?daughters)
=>
        (retract ?used2)
        (assert (Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre $?daughters $?post))
)

(defrule find_scope_for_single_word
(declare (salience 1100))
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother ?first_id)
(prawiniXi_id-node-category ?praw_id ?mother ?cat&NP|VP|ADJP|S|ROOT|WHADVP|WHADJP|PP|ADVP)
(Node-Category ?mother ?cat)
(id-left_punctuation   ?first_id        ?l_punc)
(id-right_punctuation  ?first_id         ?r_punc)
=>
        (if (eq ?l_punc NONE) then (bind ?l_punc -))
        (if (eq ?r_punc NONE) then (bind ?r_punc -))
        (assert (mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ?mother ?cat ?head ?lvl ?praw_id ?first_id ?first_id ?l_punc ?r_punc))
)


(defrule find_scope
(declare (salience 1100))
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother ?first_id $?child ?last_id)
(prawiniXi_id-node-category ?praw_id ?mother ?cat&NP|VP|ADJP|S|ROOT|WHADVP|WHADJP|PP|ADVP)
(Node-Category ?mother ?cat)
(id-left_punctuation   ?first_id	?l_punc)
(id-right_punctuation  ?last_id 	?r_punc)
=>
        (if (eq ?l_punc NONE) then (bind ?l_punc -))
        (if (eq ?r_punc NONE) then (bind ?r_punc -))
	(assert (mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ?mother ?cat ?head ?lvl ?praw_id ?first_id ?last_id ?l_punc ?r_punc))
)
