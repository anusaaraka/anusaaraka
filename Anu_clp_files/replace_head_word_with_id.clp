
;(defrule modify_conjunction_fact
;(declare (salience 2002))
;?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?CC $?pos)
;(Node-Category	?Mot	VP)
;?f1<-(Node-Category	?CC	CC)
;(not (conjunction_cat_modified  ?Mot))
;=>
;	;(retract ?f ?f1)
;	(retract ?f)
;	;(assert (Node-Category  ?Mot VP-and))
;	;(assert (Node-Category  ?Mot VP))
;        (assert (conjunction_cat_modified  ?Mot))
;	(assert (Head-Level-Mother-Daughters and ?lvl ?Mot $?pre ?CC $?pos))
;)

(defrule cp_fact
(declare (salience 2001))
?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre)
(not (Mother_modified ?Mot))
(not (prawiniXi_id-Node ?Mot ?))
=>
        (assert (Mother_modified ?Mot))
        (assert (Head-Level-Mother-Daughters_new_fact ?h ?lvl ?Mot $?pre))
)


(defrule replace-daughters
(declare (salience 1500))
?used2<-(Head-Level-Mother-Daughters_new_fact ?head1 ?level ?mother1 $?pre ?mother $?post)
?used1<-(Head-Level-Mother-Daughters_new_fact ?head ?lvl ?mother $?daughters)
=>
        (retract ?used2)
        (assert (Head-Level-Mother-Daughters_new_fact ?head1 ?level ?mother1 $?pre $?daughters $?post))
)

(defrule replace_head_word_with_id
(declare (salience 1001))
?f<-(Head-Level-Mother-Daughters_new_fact ?head ?lvl ?Mot $?pre1 ?ph $?pos1)
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?dau)
(parserid-word ?ph ?head)
=>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters ?ph ?lvl ?Mot $?dau))
)

;(defrule replace_head_word_for_conj
;(declare (salience 100))
;?f<-(Head-Level-Mother-Daughters ?head_id ?lvl ?Mot $?pre1 ?dat $?pos1)
;?f1<-(Head-Level-Mother-Daughters ?conj_id ?lvl1 ?dat $?dau)
;(parserid-word ?conj_id ?word&and|or)
;(not (head_modified ?Mot))
;=>
;        (retract ?f)
;        (assert (head_modified ?Mot))
;        (assert (Head-Level-Mother-Daughters ?conj_id ?lvl ?Mot $?pre1 ?dat $?pos1))
;)
