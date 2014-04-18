(defglobal ?*align-file* = align_fp)

(defrule get_manual_ids
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
  (bind $?man_ids (create$))
  (bind ?id 0)
  (loop-for-count (?i 1 (length  $?man_sen))
                   (bind ?word (nth$ ?i $?man_sen))
  ;                 (if (eq (sub-string (- (lenght ?word) 2) (length ?word) ?word) "'s") then
                       
                   (if (eq (numberp ?word) TRUE) then
                   (bind ?id (+ ?id 1))
                   (bind $?man_ids (create$ $?man_ids ?id))
                   (assert (manual_id-mng ?id ?word))
                   else
                   (bind ?str (sub-string 1 7 ?word))
                   (printout t ?str "   " ?word crlf)
                   (if (neq ?str "@PUNCT-") then
                   (bind ?id (+ ?id 1))
                   (bind $?man_ids (create$ $?man_ids ?id))
                   (assert (manual_id-mng ?id ?word))))
  )

  (assert (manual_ids $?man_ids))
)


 (defrule id-man_id_map
 (declare (salience 1000))
 ?f0<-(current_id ?m_id)
 ?f1<-(manual_id-mng ?m_id ?man_mng)
 ?f2<-(anu_id-anu_mng-man_mng ?a_id ?wrd ?man_mng)
 (not (anu_id-anu_mng-man_mng ?a_id1&:(> ?a_id ?a_id1) ?wrd ?man_mng))
 (id-Apertium_output ?a_id $?anu_mng)
 =>
        (retract ?f0 ?f1 ?f2)
        (if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ $?anu_mng -)))
        (printout t $?anu_mng "---" (implode$ $?anu_mng) crlf)
        (printout  ?*align-file* "(anu_id-anu_mng-sep-man_id-man_mng  " ?a_id" "(implode$ $?anu_mng)" - "?m_id" "?man_mng")" crlf)
        (bind ?m_id (+ ?m_id 1))
        (assert (current_id ?m_id))
 )
                                      
 (defrule id-man_id_map1
 (declare (salience 999))
 ?f0<-(current_id ?m_id)
 ?f1<-(manual_id-mng ?m_id ?man_mng)
 =>
        (retract ?f0 ?f1)
        (printout ?*align-file* "(anu_id-anu_mng-sep-man_id-man_mng  -   -  - "?m_id" "?man_mng")" crlf)
        (bind ?m_id (+ ?m_id 1))
        (assert (current_id ?m_id))
 )

