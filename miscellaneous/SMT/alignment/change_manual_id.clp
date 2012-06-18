(defglobal ?*id_count* = 1)

(defrule change_id
(declare (salience 1000))
?f<-(man_id-word-cat	?id	?word	?cat)
(not (man_id-word-cat	?id1&:(> ?id ?id1) ? ?))
=>
	(retract ?f)
	(assert (manual_id-word-cat ?*id_count* ?word ?cat))
        (assert (old_id-new_id ?id ?*id_count*))
        (bind ?*id_count* (+ ?*id_count* 1))
)


(defrule change_id1
(declare (salience 1000))
?f<-(head_id-grp_ids    ?h   $?pre ?id $?pos)
(old_id-new_id ?id ?new_id)
=>
        (retract ?f)
        (assert (head_id-grp_ids ?h $?pre ?new_id $?pos))
)

(defrule change_id2
(declare (salience 1000))
?f<-(id-node-word-root ?id ?node ?word ?root)
(old_id-new_id ?id ?new_id)
=>
        (retract ?f)
        (assert (id-node-word-root ?new_id ?node ?word - ?root))
)

