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
?f<-(anu_id-anu_mng-man_mng ?mid ?word ?man_mng)
(not (underscore_removed ?mid))
(test (neq ?man_mng @PUNCT-Comma))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
  (bind ?new_mng (remove_character "." (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "," (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "@" (implode$ ?new_mng) " "))
  (assert (anu_id-anu_mng-man_mng ?mid ?word ?new_mng))
  (assert (underscore_removed ?mid))
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
        (assert (fact_modified_id ?mid)) 
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
                        (assert (fact_modified_id ?new_id)) 
        ))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd ?man_wrd1 $?mng - - - - - ?mid =(+ ?mid 1) $?ids))
        (assert (fact_modified_id ?mid)) 
        (assert (fact_modified_id =(+ ?mid 1))) 
        
)

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
=>
        (retract ?f1)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids))
)

;;(to ===> se ko)
;(defrule get_id3
;(declare (salience 700))
;?f<-(anu_id-anu_mng-man_mng     ?aid ?a_wrd ?man_wrd ?man_wrd1 $?mng)
;?f1<-(manual_id-word ?mid ?man_wrd)
;?f2<-(manual_id-word ?mid1 ?man_wrd1)
;(test (neq ?mid1 (+ ?mid 1)))
;(not (fact_modified_id ?mid)) 
;(not (fact_modified_id ?mid1)) 
;=>
;;        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
;;        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid1 ?man_wrd1 - - - - - ?mid1))
;;        (assert (fact_modified_id ?mid)) 
;;        (assert (fact_modified_id ?mid1)) 
;        (assert (Error Wrong_alignment ?aid ?a_wrd ?man_wrd ?man_wrd1 $?mng))
;)
;
;;(that ===> vAlA)
;(defrule look_up_in_dic
;(declare (salience 700))
;?f<-(anu_id-anu_mng-man_mng ?aid ?a_wrd $?man_mng)
;(manual_id_en_hi-word-root-vib-grp_ids $?man_mng - $?man_root_mng - - - $?)
;(man_word-root-cat $?man_mng $?man_root_mng ?)
;(test (neq (implode$ $?man_mng) "-"))
;(id-root ?aid ?root)
;(not (id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_root_mng))
;=>
;        (assert (Error No_dic_entry ?aid ?a_wrd $?man_mng))
;)
;
;
;;(line ===> reKA samAna)
;(defrule look_up_in_dic1
;(declare (salience 700))
;?f<-(anu_id-anu_mng-man_mng ?aid ?a_wrd $?man_mng $?other_wrd_mng)
;(manual_id_en_hi-word-root-vib-grp_ids $?man_mng - $?man_root_mng - $?vib - $?)
;(man_word-root-cat $?man_mng $?man_root_mng ?)
;(test (neq  $?vib $?other_wrd_mng))
;(test (neq (implode$ $?man_mng) "-"))
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_root_mng)
;(test (and (neq (length $?other_wrd_mng) 0)(neq (length $?man_mng) 0)))
;=>
;        (assert (Error Wrong_alignment ?aid ?a_wrd $?man_mng $?other_wrd_mng))
;)
;
;(defrule look_up_in_dic11
;(declare (salience 700))
;?f<-(anu_id-anu_mng-man_mng ?aid ?a_wrd $?man_mng $?vib)
;(manual_id_en_hi-word-root-vib-grp_ids $?man_mng - $?man_root_mng - $?vib1 - $?)
;(man_word-root-cat $?man_mng $?man_root_mng ?)
;(test (eq  $?vib $?other_wrd_mng))
;(test (neq (implode$ $?man_mng) "-"))
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_root_mng)
;(id-org_wrd-root-dbase_name-mng ? ? ? ? $?)
;(test (and (neq (length $?other_wrd_mng) 0)(neq (length $?man_mng) 0)))
;=>
;        (assert (Error Wrong_alignment ?aid ?a_wrd $?man_mng $?other_wrd_mng))
;)
;
;;(equal ===> samAna kRewraPala)
;(defrule look_up_in_dic2
;(declare (salience 700))
;?f<-(anu_id-anu_mng-man_mng ?aid ?a_wrd $?other_wrd_mng $?man_mng)
;(man_word-root-cat $?man_mng $?man_root_mng ?)
;(test (neq (implode$ $?man_mng) "-"))
;(id-root ? ?root)
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_root_mng)
;(test (and (neq (length $?other_wrd_mng) 0)(neq (length $?man_mng) 0)))
;=>
;        (assert (Error Wrong_alignment ?aid ?a_wrd $?other_wrd_mng $?man_mng))
;)
;
;;(sweep ===> prasarpa karawI hE)
;(defrule suggestion1
;(declare (salience 600))
;(anu_id-anu_mng-man_mng ?aid ?a_wrd $?man_mng)
;(id-Apertium_output ?aid1 $?man_mng)
;(id-root ?aid1 ?root)
;(test (neq ?aid ?aid1))
;=>
;        (assert (suggestion suggestion ?aid1 ?root $?man_mng))
;)
;
;;(line ===> reKA)
;(defrule suggestion2
;(declare (salience 500))
;(anu_id-anu_mng-man_mng ?aid ?a_wrd $?man_mng $?other_wrd_mng)
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_mng)
;(id-root ?aid ?root)
;(test (neq (length $?other_wrd_mng) 0))
;=>
;        (assert (suggestion suggestion ?aid ?root $?man_mng))
;)
;
;;(equal ===> samAna)
;(defrule suggestion3
;(declare (salience 500))
;(anu_id-anu_mng-man_mng ?aid ?a_wrd $?other_wrd_mng $?man_mng)
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?man_mng)
;(id-root ?aid ?root)
;(test (neq (length $?other_wrd_mng) 0))
;=>
;        (assert (suggestion suggestion ?aid ?root $?man_mng))
;)
;
;(defrule print_error
;(declare (salience 1))
;(Error ?etype ?id ?root $?error)
;=>
;(printout ?*dic_fp2* ?etype " :: (anu_id-anu_wrd-man_mng  " ?id" "?root"  ===> "(implode$ $?error)")" crlf)
;)
;
;(defrule print_sug
;(suggestion ?etype ?id ?root $?sug)
;=>
;(printout ?*dic_fp2* ?etype " :: (anu_id-anu_wrd-man_mng  " ?id" "?root"  ===> "(implode$ $?sug)")" crlf)
;)
;


