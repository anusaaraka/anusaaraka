; This file is written by Mahalaxmi

(defrule replace-daughters
(declare (salience 1500))
?used2<-(Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre ?mother $?post)
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother $?daughters)
=>
        (retract ?used2)
        (assert (Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre $?daughters $?post))
)
;---------------------------------------------------------------------------------------------------------
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
;---------------------------------------------------------------------------------------------------------
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
;---------------------------------------------------------------------------------------------------------
(defrule largest_scope
(declare (salience 50))
(mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ?Mot ?cat&PP|NP ?head ?lvl ?praw_id ?f_id ?l_id ?l_p ?r_p)
(not (mot-cat-head-level-praW_id-first_id-last_id-l_punc-r_punc ?Mot1 PP|NP ?head1 ?lvl1&:(> ?lvl ?lvl1) ?praw_id1 ?f_id1 ?l_id ?l_p1 ?r_p1))
(not (id-grouped ?f_id))
(not (id-grouped ?l_id))
=>
        (bind $?grp (create$ ))
        (loop-for-count (?i ?f_id ?l_id)
                        (assert (id-grouped ?i))
                        (bind $?grp (create$ $?grp ?i))
        )
        (assert (mot-cat-praW_id-largest_group ?Mot ?cat ?praw_id $?grp))
)
;---------------------------------------------------------------------------------------------------------
