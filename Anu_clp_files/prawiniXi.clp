; This file is written by Mahalaxmi

(deffunction find_head_count(?praw_id $?grp)
             (bind ?flag 0) (bind ?new_cnt 0)
             (loop-for-count (?i 1 (length $?grp))
                             (bind ?id (implode$ (create$ (nth$ ?i $?grp))))
                             (if (neq (str-index "." ?id) FALSE) then
                             (bind ?index (str-index "." ?id))
                             (bind ?new_str_pre  (string-to-field (sub-string 1 (- ?index 1) ?id)))
                             (if (eq ?praw_id ?new_str_pre) then
                             (bind ?new_str_post (string-to-field (sub-string (+ ?index 1) (length ?id) ?id)))
                             (bind ?new_cnt (string-to-field (str-cat ?new_str_pre "." ( + ?new_str_post 1))))
                             (bind ?flag 1)
                             )
                             else
                             (if (eq ?praw_id (string-to-field ?id)) then
                             (bind ?new_cnt (string-to-field (str-cat ?id ".0"))) (bind ?flag 1)
                              ))
                             (if (eq ?flag 1) then (break))
             )
 (bind ?new ?new_cnt)
)
;---------------------------------------------------------------------------------------------------------------
(defrule find_highest_level
(declare (salience 998))
?f<-(Head-Level-Mother-Daughters ? ?lvl $?ids)
(not (Head-Level-Mother-Daughters ? ?lvl1&:(< ?lvl ?lvl1) $?pid1))
=>
      (assert (get_prawiniXi_id_for_level ?lvl))
)
;---------------------------------------------------------------------------------------------------------------
(defrule get_prawiniXi_id
(declare (salience 997))
?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pid1 ?id)
(get_prawiniXi_id_for_level ?lvl)
(or (id-word   ?id   ?) (prw-id-hid ?id ?))
(not (prawiniXi_id-Node ?Mot ?))
=>
   (retract ?f)
   (bind $?grp (create$ $?pid1 ?id))
   (bind ?praw_id (find_head_count ?h $?grp))
   (assert (prw-id-hid ?praw_id ?h))
   (assert (prawiniXi_id-Node ?praw_id ?Mot))
   (assert (Head-Level-Mother-Daughters ?h ?lvl ?praw_id $?pid1 ?id))
)
;---------------------------------------------------------------------------------------------------------------
(defrule replace_node_with_prawiniXi_id
(declare (salience 999))
(prawiniXi_id-Node ?praw_id ?Mot)
?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot1 $?pre ?Mot $?pos)
(not (Mot_replaced ?Mot1 ?Mot))
=>
	(retract ?f)
        (assert (Mot_replaced ?Mot1 ?Mot))
	(assert (Head-Level-Mother-Daughters ?h ?lvl  ?Mot1 $?pre ?praw_id $?pos))
)
;---------------------------------------------------------------------------------------------------------------
(defrule find_next_level
?f<-(get_prawiniXi_id_for_level ?lvl)
(test (> ?lvl 1))
=>
        (bind ?lvl (- ?lvl 1))
        (assert (get_prawiniXi_id_for_level ?lvl))
)
;---------------------------------------------------------------------------------------------------------------
(defrule print_to_user
(declare (salience -100))
?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?dau)
=>
	(retract ?f)
        (assert (head_id-prawiniXi_id-grp_ids ?h ?Mot $?dau))
)
;---------------------------------------------------------------------------------------------------------------
(defrule print_to_user1
(declare (salience -200))
(prawiniXi_id-Node ?praw_id ?node)
(Node-Category ?node ?cat)
=>
        (assert (prawiniXi_id-node-category ?praw_id ?node ?cat))
)
;---------------------------------------------------------------------------------------------------------------
