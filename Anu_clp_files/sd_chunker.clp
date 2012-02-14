(defrule delete_phrases0
(declare (salience 102))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?child)
(Node-Category ?mot S|SBAR|ROOT|SBARQ|SQ)
=>
        (retract ?f)
)


(defrule print_chunk_fr_lwg
(declare (salience 101))
(root-verbchunk-tam-chunkids ? ? ? $?lwg_ids)
=>
;     (printout t "(chunk-ids  VP "(implode$ $?lwg_ids)")" crlf)
     (assert (chunk-ids  VP $?lwg_ids))
     (loop-for-count (?i 1 (length $?lwg_ids))
                     (bind ?val (nth$ ?i $?lwg_ids))
                     (assert (chunk_has_been_decided ?val)))

)

(defrule delete_lwg_facts
(declare (salience 100))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?id $?pos)
(chunk_has_been_decided ?id)
(Node-Category ?mot ?cat&VP)
=>
	(retract ?f)
)


(defrule delete_phrases1
(declare (salience 95))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?dau $?pos)
;(Node-Category ?mot VP|NP|PP)
(Node-Category ?mot ?cat&VP|NP|ADVP|PP|S|ADJP|SBARQ|SQ|SBAR)
(Node-Category ?dau ?cat1&VP|NP|ADVP|PP|S|ADJP|SBARQ|SQ|SBAR|CC|TO)
(test (neq ?cat ?cat1))
=>
        (retract ?f)
)

(defrule replace_dau
(declare (salience 90))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?dau $?pos)
?f1<-(Head-Level-Mother-Daughters  ?  ?  ?dau  $?child)
(Node-Category ?mot ~PP)
=>
	(retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre $?child $?pos))
)


(defrule print_chunk
(declare (salience 75))
?f<-(Head-Level-Mother-Daughters  ?  ?  ?mot  $?child)
(Node-Category ?mot ?cat&ADVP|VP|NP|ADJP|IN|TO|CC|WHNP)
=>
     (if (or (eq ?cat IN)(eq ?cat TO)) then
     (assert (chunk-ids  PP $?child))
     else (if (eq ?cat WHNP) then
     (assert (chunk-ids  NP $?child))
     else (if (eq ?cat JJ) then
     (assert (chunk-ids  ADJP $?child)))
     else
     (assert (chunk-ids  ?cat $?child))
     ))
     (loop-for-count (?i 1 (length $?child))
                     (bind ?val (nth$ ?i $?child))
                     (assert (chunk_has_been_decided ?val)))
)

(defrule rm_repeated_chunk
(declare (salience 74))
?f<-(chunk-ids ?cat $?pre ?id $?pos)
?f1<-(chunk-ids ?cat1 $?pre1 ?id $?pos1)
(test (or (neq $?pre $?pre1) (neq $?pos $?pos1)))
=>
  (retract ?f1)
  (assert (chunk-ids ?cat1 $?pre1 $?pos1))
)

(defrule default_chunk0
(declare (salience 72))
?f<-(Head-Level-Mother-Daughters  ?  ?  ?mot  ?id)
(Node-Category ?mot ?cat)
(not (chunk_has_been_decided ?id))
=>
   (if (or (eq ?cat VB)(eq ?cat VBG)) then 
   (assert (chunk-ids  VP $?id))
   else
   (assert (chunk-ids  ?cat $?id)))
                     (assert (chunk_has_been_decided ?id))
)

(defrule default_chunk1
(declare (salience 70))
(id-word ?id ?)
(not (chunk_has_been_decided ?id))
=>
  (assert (chunk-ids U ?id))
  (assert (chunk_has_been_decided ?id))
)


(defrule remove_cat
?f<-(chunk-ids ?cat $?pre ?node $?pos)
(test (eq (numberp ?node) FALSE))
=>
	(retract ?f)
        (assert (chunk-ids ?cat $?pre $?pos))
)
