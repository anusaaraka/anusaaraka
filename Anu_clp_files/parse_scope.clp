
(defrule rm_repeated_VP
(declare (salience 2002))
?f<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?pre ?dat $?pos)
?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?dat ?child)
(Node-Category ?dat VP)
(Node-Category ?child VP)
=>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?pre ?child $?pos))
)

(defrule replace-daughters
(declare (salience 1500))
?used2<-(Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre ?mother $?post)
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother $?daughters)
=>
        (retract ?used2)
        (assert (Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre $?daughters $?post))
)

(defrule replace_aux_word_with_head_word
(declare (salience 1400))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre1 ?h $?pos1)
(root-verbchunk-tam-parser_chunkids ? ? ? $?aux ?h)
(id-word ?ph ?head)
(id-word ?h ?h_wrd)
(test (member$ ?ph $?aux))
=>
        (retract ?f)
        (assert (Head-Level-Mother-Daughters ?h_wrd ?lvl ?Mot $?pre1 ?h $?pos1))
)

(defrule replace_head_word_with_id
(declare (salience 1300))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre1 ?ph $?pos1)
(id-word  ?ph  ?head)
(not (Mot-head_replaced ?Mot ?ph))
=>
        (retract ?f)
        (assert (Mot-head_replaced ?Mot ?ph))
        (assert (Head-Level-Mother-Daughters ?ph ?lvl ?Mot $?pre1 ?ph $?pos1))
)

(defrule remove_leaf_nodes
(declare (salience 1200))
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother ?daughter)
(not (Node-Category ?mother ?))
=>
	(retract ?used1)
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
