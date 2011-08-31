;Added by Arpana, Neha and Sonal.
;This programme is to get all ids missing in different tran level.
(defglobal ?*miss_fp* = miss_fp)
;(defglobal ?*all_tran* = tran_tmp)
(defglobal ?*tran1_list* = (create$ ))
(defglobal ?*tran2_list* = (create$ ))
(defglobal ?*tran3_list* = (create$ ))

;--------------------------------------------------------------------------------------------------------------------------
(defrule print
(declare (salience 9))
=>
   (assert (Pada_tran 1 ?*tran1_list*))
   (assert (Pada_tran 2 ?*tran2_list*))
   (assert (Pada_tran 3 ?*tran3_list*))
)
;---------------------------------------------------------------------------------------------------------------------------
;Getting pada ids for tran1
(defrule createpadalist1
(declare (salience 10))
?f <-(tran-word-wc-typ-form-h_id-comp  1 ?wrd ?wc ?typ ?frm ?hid $?lst)
=>
   (retract ?f)
   (bind ?*tran1_list* (sort > (create$ ?*tran1_list* $?lst)))
   (assert (Pada_tid_list1 ?*tran1_list*))
)
;---------------------------------------------------------------------------------------------------------------------------
;Getting pada ids for tran2
(defrule createpadalist2
(declare (salience 10))
?f <-(tran-word-wc-typ-form-h_id-comp  2 ?wrd ?wc ?typ ?frm ?hid $?lst)
=>
   (retract ?f)
   (bind ?*tran2_list* (sort > (create$ ?*tran2_list* $?lst)))
   (assert (Pada_tid_list2 ?*tran2_list*))
)
;---------------------------------------------------------------------------------------------------------------------------
;Getting pada ids for tran3
(defrule createpadalist3
(declare (salience 10))
?f <-(tran-word-wc-typ-form-h_id-comp  3 ?wrd ?wc ?typ ?frm ?hid $?lst)
=>
   (retract ?f)
   (bind ?*tran3_list* (sort > (create$ ?*tran3_list* $?lst)))
   (assert (Pada_tid_list3 ?*tran3_list*))
)
;---------------------------------------------------------------------------------------------------------------------------
;Getting missing ids in all trans
;(defrule missingpada
;(declare (salience 8))
;?f1<-(Pada_tran ?tran_list $?padalist)
;?f2<-(Res_id-WC-Word-Anu_id    ?rid   ?wc  ?word ?anuid)
;=>
;   (retract ?f1)
;   (bind ?len (length$ $?padalist))
;   (loop-for-count (?i 1 (nth$ ?len $?padalist))
;       (if (eq (member$ ?i $?padalist) FALSE) then   ;If the id already present in the list it should'nt be taken again
;           (assert (tran_level-missing_id ?tran_list  ?i )) 
;       )
;   )
;)
; Modified by Shirisha Manju (06-08-11) : used Sentence range instead length of padalist
(defrule missingpada
(declare (salience 8))
?f1<-(Pada_tran ?tran_list $?padalist)
?f <-(Sentence range is ?range)
=>
   (retract ?f1)
   (bind ?len (length$ $?padalist))
   (loop-for-count (?i 1 (- ?range 1))
       (if (eq (member$ ?i $?padalist) FALSE) then   ;If the id already present in the list it should'nt be taken again
           (assert (tran_level-missing_id ?tran_list  ?i )) 
       )
   )
)
;---------------------------------------------------------------------------------------------------------------------------
;Printing missing ids in all trans
(defrule missingwc
(declare (salience 8))
?f1<-(Res_id-WC-Word-Anu_id    ?rid   ?wc  ?word ?anuid )
?f2<-(tran_level-missing_id ?tran ?i)
=>
   (if (eq ?rid ?i) then  ;If the id already present in the list it should'nt be taken again
      (assert (tran_level-missing_id-wc-word ?tran  ?i ?wc ?word))
      (printout ?*miss_fp* "(tran_level-missing_id-wc-word "?tran " "?i " "?wc "  " ?word")" crlf)
   )
)
;---------------------------------------------------------------------------------------------------------------------------
