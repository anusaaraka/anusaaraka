;Retract facts whose mothers are (S|SBAR|ROOT|SBARQ|SQ|FRAG|SINV)
(defrule delete_phrases0
(declare (salience 103))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?child)
(Node-Category ?mot ?cat&S|SBAR|ROOT|SBARQ|SQ|FRAG|SINV)
=>
        (retract ?f)
)

;Removes the phrase from the fact if it has daughter as again as a another phrase.
(defrule delete_phrases1
(declare (salience 102))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?dau $?pos)
(Node-Category ?mot ?cat&VP|NP|ADVP|PP|S|ADJP|SBARQ|SQ|SBAR|WHADVP)
(Node-Category ?dau ?cat1&VP|NP|ADVP|PP|S|ADJP|SBARQ|SQ|SBAR|CC|TO|WHADVP)
(test (neq ?cat ?cat1))
=>
        (retract ?f)
        (assert (Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre $?pos))
)
     
;Print finite-verb chunk information.
(defrule print_chunk_fr_lwg
(declare (salience 101))
(root-verbchunk-tam-chunkids ? ? ? $?lwg_ids)
=>
     (assert (chunk-ids  VP $?lwg_ids))
     (loop-for-count (?i 1 (length $?lwg_ids))
                     (bind ?val (nth$ ?i $?lwg_ids))
                     (assert (chunk_has_been_decided ?val)))

)

;delete lwg related facts whose chunk information have been decided.
(defrule delete_lwg_facts
(declare (salience 100))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?id $?pos)
(chunk_has_been_decided ?id)
(Node-Category ?mot ?cat&VP)
=>
	(retract ?f)
)

;Replace all the daughter nodes.
(defrule replace_dau
(declare (salience 90))
?f<-(Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre ?dau $?pos)
?f1<-(Head-Level-Mother-Daughters  ?  ?  ?dau  $?child)
;(Node-Category ?mot ~PP)
=>
	(retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters  ?h  ?l  ?mot  $?pre $?child $?pos))
)

;print chunker information.
(defrule print_chunk
(declare (salience 75))
?f<-(Head-Level-Mother-Daughters  ?  ?  ?mot  $?child)
(Node-Category ?mot ?cat&ADVP|VP|NP|ADJP|IN|TO|CC|WHNP|VB|VBG|PRT|WHADVP|PP)
=>
     (if (or (eq ?cat IN)(eq ?cat TO)) then
     (assert (chunk-ids  PP $?child))
     else (if (eq ?cat WHNP) then
     (assert (chunk-ids  NP $?child))
     else (if (eq ?cat WHADVP) then
     (assert (chunk-ids  ADVP $?child))
     else (if (eq ?cat JJ) then
     (assert (chunk-ids  ADJP $?child))
     else (if (or (eq ?cat VB)(eq ?cat VBG)) then
     (assert (chunk-ids  VP $?child))
     else
     (assert (chunk-ids  ?cat $?child))
     )))))
     (loop-for-count (?i 1 (length $?child))
                     (bind ?val (nth$ ?i $?child))
                     (assert (chunk_has_been_decided ?val)))
)

;He may drink milk or eat apples.
;[word 'may' is repeated in both the chunks may_eat and may_drink so, removing 'may' id in one of the fact randomly]
(defrule rm_repeated_chunk
(declare (salience 74))
?f<-(chunk-ids ?cat $?pre ?id $?pos)
?f1<-(chunk-ids ?cat1 $?pre1 ?id $?pos1)
(test (or (neq $?pre $?pre1) (neq $?pos $?pos1)))
=>
  (retract ?f1)
  (assert (chunk-ids ?cat1 $?pre1 $?pos1))
)

;If any chunk is not decided for any word from the above rules , give chunk-mark as 'U'[undefined]
(defrule default_chunk1
(declare (salience 70))
(id-word ?id ?)
(not (chunk_has_been_decided ?id))
=>
  (assert (chunk-ids U ?id))
  (assert (chunk_has_been_decided ?id))
)

;;removing the nodes from the 'ids' field [i.e; (chunk-ids 1 2 VBG 3) ==> (chunk-ids 1 2 3)] 
;(defrule remove_cat
;?f<-(chunk-ids ?cat $?pre ?node $?pos)
;(test (eq (numberp ?node) FALSE))
;=>
;	(retract ?f)
;        (assert (chunk-ids ?cat $?pre $?pos))
;)
