(defglobal ?*id* = 1)
(defglobal ?*dic_fp2*  = dic_fp)


(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )


(defrule rm_punct
(declare (salience 1001))
?f<-(anu_id-anu_mng-man_mng     ?aid $?pre PUNCT-Comma|PUNCT-Colon|PUNCT-Dot $?post)
=>
        (retract ?f)
        (assert (anu_id-anu_mng-man_mng     ?aid $?pre $?post))
)

(defrule rm_underscore
(declare (salience 1000))
?f<-(anu_id-anu_mng-man_mng ?aid ?word ?man_mng)
(not (underscore_removed ?aid))
(test (neq ?man_mng @PUNCT-Comma))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
  (bind ?new_mng (remove_character "." (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "," (implode$ ?new_mng) " "))
;  (bind ?new_mng (remove_character "@" (implode$ ?new_mng) " "))
  (assert (anu_id-anu_mng-man_mng ?aid ?word ?new_mng))
  (assert (underscore_removed ?aid))
)

(defrule cp_manual_sen
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
       (assert (manual_hin_sen_tmp $?man_sen))
       (assert (manual_hin_sen1))
)

(defrule get_id
(declare (salience 900))
?f<-(manual_hin_sen_tmp ?wrd $?remaining_sen)
?f1<-(manual_hin_sen1 $?sen)
=>
	(retract ?f)
        (assert (manual_id-word ?*id* ?wrd))
        (assert (manual_hin_sen_tmp $?remaining_sen))
        (if (and (neq ?wrd @PUNCT-Comma)(neq ?wrd @PUNCT-Colon)(neq ?wrd @PUNCT-Dot)) then
	    (retract ?f1)
	    (assert (manual_hin_sen1 $?sen ?wrd))
        )
        (bind ?*id* (+ ?*id* 1))
)

(defrule get_id1
(declare (salience 850))
?f<-(anu_id-anu_mng-man_mng	?aid ?a_wrd ?man_wrd)
?f1<-(manual_id-word ?mid ?man_wrd)
=>
	(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
;        (assert (fact_modified_id ?mid)) 
) 

(defrule get_id2
(declare (salience 800))
?f<-(anu_id-anu_mng-man_mng     ?aid ?a_wrd ?man_wrd ?man_wrd1 $?mng)
?f1<-(manual_id-word ?mid ?man_wrd)
?f2<-(manual_id-word =(+ ?mid 1) ?man_wrd1)
=>
        (bind $?ids (create$ ))
        (bind ?length (length $?mng))
        (printout t ?length crlf)
        (bind ?new_id (+ ?mid 1))
        (if (> ?length 0) then
        (loop-for-count (?i 1 ?length)
                        (bind ?new_id (+ ?new_id 1))
                        (bind $?ids (create$ $?ids ?new_id))
                        (assert (mng_has_been_grouped ?new_id)) 
        ))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd ?man_wrd1 $?mng - - - - - ?mid =(+ ?mid 1) $?ids))
;        (assert (fact_modified_id ?mid)) 
        (assert (mng_has_been_grouped =(+ ?mid 1))) 
        
)


(defrule get_id3
(declare (salience 600))
?f1<-(manual_id-word ?mid ?man_wrd)
(not (manual_id_en_hi-word-root-vib-grp_ids $? - $? ?mid $?))
(not (mng_has_been_grouped ?mid))
=>

	(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
)

;(defrule delete_fact
;(declare (salience 700))
;?f<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?)
;(mng_has_been_grouped ?mid)
;=>
;	(retract ?f)
;)

(defrule single_vib
(declare (salience 70))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - - - $?grp_ids)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle - - - - - $?grp_ids1)
=>
        (retract ?f1 ?f2)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids $?grp_ids1))
)


(defrule single_vib1
(declare (salience 70))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - - - $?grp_ids)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle $?r_wrd - - - - - ?id1 $?grp_ids1)
(test (neq (length $?r_wrd) 0))
=>
        (retract ?f1 ?f2)
        (bind ?new_id (nth$ 1 $?grp_ids1))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids ?id1))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?new_id $?r_wrd - - - - - $?grp_ids1))
)


(defrule single_vib2
(declare (salience 60))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle - - - - - $?grp_ids)
(test (neq (length $?noun) 0))
=>
        (retract ?f1)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids))
)

(defrule verb_rule1
(declare (salience 50)) 
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (or (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa") (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "rpa") ))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe - - - - - ?id1)
?f3<-(manual_id_en_hi-word-root-vib-grp_ids ?id2&:(=(+ ?id1 1) ?id2) ?tam1&hE|hEM - - - - - ?id2)
(man_word-root-cat ?tam ?root&kara|ho v)
=>
        (retract ?f1 ?f2 ?f3)
 ;       (bind ?root (string-to-field (str-cat (implode$ $?noun)  "_" ?root)))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
)


(defrule verb_rule2
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe ?tam1&hE|hEM - - - - - ?id1 ?id2) 
(man_word-root-cat ?tam ?root&kara|ho v)
=>
        (retract ?f1 ?f2)
 ;       (bind ?root (string-to-field (str-cat (implode$ $?noun)  "_" ?root)))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
)

(defrule verb_rule3
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
=>
        (retract ?f1)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam ?wrd  - ?root - nA ?wrd -  $?grp_ids ))
)
;
(defrule verb_rule4
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - - - $?grp_ids)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1)  ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids1)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
=>
        (retract ?f1 ?f2)
 ;       (bind ?root (string-to-field (str-cat (implode$ $?noun)  "_" ?root)))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?tam ?wrd - $?noun ?root - nA ?wrd - $?grp_ids $?grp_ids1))

)







;
;
;(defrule verb_rule2
;(declare (salience 50)) 
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?verb_mng - $?root - ?tam&karawA|howA|karawI|howI|karawe|howe -  $?grp_ids ?id)
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id 1) ?id1) ?wrd&hE - $? - $? -  ?id1)
;(man_word-root-cat ?tam ?root1&kara|ho v)
;=>
;        (retract ?f1 ?f2)
;;        (bind ?root1 (string-to-field (str-cat ?tam "_" ?wrd)))
;        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?verb_mng - $?root - ?tam ?wrd - $?grp_ids ?id ?id1))
;)





