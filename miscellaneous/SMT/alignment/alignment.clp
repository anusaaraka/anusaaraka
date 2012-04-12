(defglobal ?*alg_file* = alig_fp)

(deffunction match (?a_word ?m_word ?root)
        (bind ?rank1 0) (bind ?rank2 0); (bind ?rank3 0)
;	(printout t ?a_word "============" ?m_word"================" ?root crlf)
        (if (eq ?a_word ?m_word) then  (bind ?rank1 1))
        (bind ?new_mng "")
        (bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
        (bind ?slh_index (str-index "/" ?mng))
        (if (neq ?slh_index FALSE) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng (str-cat ?new_mng (sub-string 1 (- ?slh_index 1) ?mng) " "))
                        (bind ?mng (sub-string (+ ?slh_index 1) (length ?mng) ?mng))
                        (bind ?slh_index (str-index "/" ?mng))
                )
                (bind ?new_mng (str-cat ?new_mng ?mng))
        else
                (bind ?new_mng ?mng)
        )
        (bind $?default_mngs (explode$ ?new_mng))
 ;       (printout t $?default_mngs crlf ?a_word "------" ?m_word crlf)
        (if (and (member$ ?a_word $?default_mngs)  (member$ ?m_word $?default_mngs)) then
                (bind ?rank2 2)
        )
        (bind $?matches (create$ ?rank1 ?rank2))
)
;--------------------------------------------------------------------------------
(defrule same_grp_mng
(declare (salience 110))
?f<-(manual_id-node-word-root-tam ?m_id ? $?grp_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?grp_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?grp_mng $?post)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?grp_mng - ?m_id $?grp_mng))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" same_grp_mng "$?grp_mng" "$?grp_mng")" crlf)
)
;--------------------------------------------------------------------------------
(defrule vb_exact_mng
(declare (salience 100))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?w - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?tam)
?f0<-(manual_hin_sen $?pre $?w $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?w))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" vb_exact_mng "$?w1" "$?w")" crlf)
)
;--------------------------------------------------------------------------------
(defrule vb_with_same_tam
(declare (salience 90))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root1 - ?tam)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" vb_with_same_tam "$?w1" "$?word")" crlf)
)
;--------------------------------------------------------------------------------
(defrule vb_root_match
(declare (salience 85))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?word - ?rt - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?rt1 - ?tam1)
(id-root ?a_id ?root)
?f0<-(manual_hin_sen $?pre $?word $?post)
(not (modified_sen_with_ora))
=>
	(bind $?matches (match ?rt1 ?rt ?root ))
	(if (eq (nth$ 1 $?matches) 1) then
		(retract ?f0 ?f ?f1)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
		(assert (manual_hin_sen $?pre $?post))
		(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id"  vb_with_same_root "$?w1" "$?word")" crlf)
	else 	(if (eq (nth$ 2 $?matches) 2) then
			(retract ?f0 ?f ?f1)
			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
			(assert (manual_hin_sen $?pre $?post))
		        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" vb_with_same_root "$?w1" "$?word")" crlf)
		)
	)
) 
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_match_for_wx
(declare (salience 80))
?f0<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a_word - ?head&~Ora - ?)
(id-HM-source ?id ?head Original_word)
(E_word-wx_word  ?head ?wx_wrd)
?f1<-(manual_id-node-word-root-tam ?m_id ?n $?m_word - ?wx_wrd  - ?)
?f2<-(manual_hin_sen $?pre $?m_word $?post)
 =>
	(retract ?f0 ?f1 ?f2)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
	(assert (manual_hin_sen $?pre $?post))
	(assert (modified_manual_sen))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?m_id" "?a_id"  get_match_for_wx  "$?a_word" "$?m_word")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
 ;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
 ;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
 (defrule get_match_for_np_head
 (declare (salience 65))
 ?f0<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a_word - ?head&~Ora - ?)
 ?f1<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m_word - ?h&~Ora&~waWA&~evaM  - ?)
 (id-root ?a_id ?root)
 ?f2<-(manual_hin_sen $?pre $?m_word $?post)
 (not (modified_sen_with_default))
 =>
        (bind $?matches (match ?head ?h ?root))
        (printout t (implode$ $?matches) crlf)
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f0 ?f1 ?f2)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
		(assert (manual_hin_sen $?pre $?post))
		(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?m_id" "?a_id"  get_match_for_np_head  "$?a_word" "$?m_word")" crlf)
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f0 ?f1 ?f2)
			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
			(assert (manual_hin_sen $?pre $?post))
			(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?m_id" "?a_id"  get_match_for_np_head  "$?a_word" "$?m_word")" crlf)
                )
        )
	(assert (modified_manual_sen))
 )
;--------------------------------------------------------------------------------
(defrule get_Ora_exact_match
(declare (salience 71))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM  - ?)
?f2<-(manual_id-node-word-root-tam ? ? $? ?w $? - $? - ?)
?f3<-(manual_id-node-word-root-tam ? ? $? ?v - $? - ?)
?f0<-(manual_hin_sen $?pre ?w $?word ?v $?post)
=>
        (retract ?f0 ?f ?f1 ?f2 ?f3)
	(bind $?a_mng (create$ ?w $?a ?v))
	(bind $?m_mng (create$ ?w $?word ?v))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_with_ora))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" get_Ora_exact_match "$?a_mng" "$?m_mng")" crlf)
)

(defrule get_Ora_wx_lt_match
(declare (salience 70))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a - Ora - ?)
(id-HM-source ?id ?w Original_word)
(E_word-wx_word  ?w ?wx_wrd)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM - ?)
?f2<-(manual_id-node-word-root-tam ? ? $?m ?wx_wrd $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?wx_wrd $?m1 ?h $?post)
=>
        (retract ?f1 ?f2 )
        (bind $?m_mng (create$ $?m ?wx_wrd $?m1 ?h))
	(assert (manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_wx_lt_match  "$?m_mng")" crlf)
)


(defrule get_Ora_wx_rt_match
(declare (salience 70))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora $?w1 ?wrd - Ora - ?)
?f1<-(manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h&Ora|waWA|evaM)
(id-HM-source ?id ?wrd Original_word)
(E_word-wx_word  ?wrd ?wx_wrd)
?f2<-(manual_id-node-word-root-tam ? ? $?m ?wx_wrd $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m_mng $?m ?wx_wrd $?m1 $?post)
=>
        (retract ?f ?f1 ?f2 ?f0)
 	(bind $?a_mng (create$ ?w $?a Ora $?w1 ?wrd))
        (bind $?m_mng (create$ $?m_mng $?m ?wx_wrd $?m1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
	(assert  (manual_hin_sen $?pre $?post))
	(assert (modified_sen_with_ora))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_wx_rt_match  " $?a_mng " "$?m_mng")" crlf)
)

;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule get_Ora_rt_match
(declare (salience 69))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora $?w1 ?wrd - Ora - ?)
?f1<-(manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h&Ora|waWA|evaM)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?wrd $?m1 - ? - ?t)
(test (and (> ?id ?m_id)(neq ?id ?m_id)))
?f0<-(manual_hin_sen $?pre $?m_mng $?m ?wrd $?m1 $?post)
=>
	(retract ?f ?f1 ?f2 ?f0)
        (bind $?a_mng (create$ ?w $?a Ora $?w1 ?wrd))
        (bind $?m_mng (create$ $?m_mng $?m ?wrd $?m1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
	(assert  (manual_hin_sen $?pre $?post))
	(assert (modified_sen_with_ora))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_wx_rt_match  " $?a_mng " "$?m_mng")" crlf)
)



(defrule get_Ora_rt_match1
(declare (salience 68))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora $?w1 ?wrd - Ora - ?)
?f1<-(manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h&Ora|waWA|evaM)
(id-HM-source ?wid ?wrd ?s)
(id-root ?wid ?root)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?wrd1 $?m1 - ? - ?t)
(test (and (> ?id ?m_id)(neq ?id ?m_id)))
?f0<-(manual_hin_sen $?pre $?m_mng $?m ?wrd1 $?m1  $?post)
=>
        (bind $?matches (match ?w ?w1 ?root))
        (bind $?m_mng (create$ $?m_mng $?m ?wrd1 $?m1))
	(bind $?a_mng (create$ ?w $?a Ora $?w1 ?wrd))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f ?f0 ?f1 ?f2)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
                (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_rt_match1 "$?a_mng" "$?m_mng")" crlf)
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f ?f0 ?f1 ?f2)
			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
	                (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_rt_match1 "$?a_mng" "$?m_mng")" crlf)
                )
        )
	(assert (modified_sen_with_ora))
 )

(defrule get_default_Ora_rt_match
(declare (salience 67))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora $?w1 ?wrd $?w2 - Ora - ?)
?f1<-(manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h&Ora|waWA|evaM)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?wrd $?m1 - ? - ?t)
(test (and (> ?id ?m_id)(neq ?id ?m_id)))
?f0<-(manual_hin_sen $?pre $?m_mng $?m ?wrd $?m1 $?post)
=>
        (retract ?f ?f1 ?f2 ?f0)
        (bind $?a_mng (create$ ?w $?a Ora $?w1 ?wrd $?w2))
        (bind $?m_mng (create$ $?m_mng $?m ?wrd $?m1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert  (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_ora))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_wx_rt_match  " $?a_mng " "$?m_mng")" crlf)
)




(defrule get_left_match_for_Ora
(declare (salience 67))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora - ?tam)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM - ?)
(id-Apertium_output ?wid ?w)
(id-root ?wid ?root)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?w1 $?m1 - ? - ?t)
(test (and (< ?id ?m_id)(neq ?id ?m_id)))
?f0<-(manual_hin_sen $?pre $?m ?w1 $?m1 ?h $?post)
=>
	(bind $?matches (match ?w ?w1 ?root))
	(bind $?m_mng (create$ $?m ?w1 $?m1 ?h))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f1 ?f2)
		(assert (manual_id-anu_word-Ora_grp ?m_id ?w  $?m_mng - ?h))
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f1 ?f2)
			(assert (manual_id-anu_word-Ora_grp ?m_id  ?w $?m_mng - ?h))
                )
        )
)
(defrule default_Ora_lt_match
(declare (salience 66))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora - ?tam)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM - ?)
?f2<-(manual_id-node-word-root-tam =(- ?m_id 1)  ? $?m ?w1 $?m1 - ? - ?t)
?f0<-(manual_hin_sen $?pre $?m ?w1 $?m1 ?h $?post)
=>
	(retract ?f1 ?f2 )
        (bind $?m_mng (create$ $?m ?w1 $?m1 ?h))
        (assert (manual_id-anu_word-Ora_grp ?m_id ?w $?m_mng - ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" default_Ora_lt_match  "$?m_mng")" crlf)
)
;--------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital. 
(defrule default_verb_rule
(declare (salience 60))
?f<-(anu_id-node-word-root-tam ?a_id VP $?a_mng - ? - ?)
(id-root ?a_id ?root)
?f1<-(manual_id-node-word-root-tam ?m_id VGF $?m ?word $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?word $?m1 $?post)
=>
	(bind $?m_mng (create$ $?m ?word $?m1))
	(bind ?new_mng "")
        (bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
        (bind ?slh_index (str-index "/" ?mng))
        (if (neq ?slh_index FALSE) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng (str-cat ?new_mng (sub-string 1 (- ?slh_index 1) ?mng) " "))
                        (bind ?mng (sub-string (+ ?slh_index 1) (length ?mng) ?mng))
                        (bind ?slh_index (str-index "/" ?mng))
                )
                (bind ?new_mng (str-cat ?new_mng ?mng))
        else
                (bind ?new_mng ?mng)
        )
        (bind $?default_mngs (explode$ ?new_mng))
        (if (member$ ?word $?default_mngs) then
		(retract ?f ?f1 ?f0)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
                (assert (manual_hin_sen $?pre $?post))
		(assert (modified_sen_with_default))
        )
)
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
(defrule default_verb_rule1
(declare (salience 59))
?f<-(anu_id-node-word-root-tam ?a_id VP $?a_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam ?m_id VGF $?m_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
=>
	(retract ?f ?f1 ?f0)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_with_default))
)



;Ayodhya during ancient times was known as kaushaldesa.
(defrule np_with_some_same_mng_with_wx
(declare (salience 55))
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a ?word $?a1 - ?head1 - ?tam1)
(id-HM-source ? ?word Original_word)
(E_word-wx_word   ?word        ?wrd)
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m ?wrd $?m1 - ?head - ?tam)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
=>
        (retract ?f0 ?f ?f1)
        (bind $?m_word (create$ $?m ?wrd $?m1))
        (bind $?a_word (create$ $?a ?word $?a1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
        (assert (manual_hin_sen $?pre $?post))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng     "?a_id" "?m_id" np_with_some_same_mng_with_wx "$?a_word" "$?m_word")" crlf)
)

;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule np_with_some_same_mng
(declare (salience 50))
?f<-(manual_id-node-word-root-tam ?m_id ?n $?m ?wrd $?m1 - ?head - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a ?wrd1 $?a1 - ?head1 - ?tam1)
(id-Apertium_output ?wid ?wrd1)
(id-root ?wid ?root)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
(test (neq ?wrd Ora))
=>
        (bind $?m_word (create$ $?m ?wrd $?m1))
	(bind $?a_word (create$ $?a ?wrd1 $?a1))
	(bind $?matches (match ?wrd1 ?wrd ?root))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f ?f1 ?f0)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
	        (assert (manual_hin_sen $?pre $?post))
		(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" np_with_some_same_mng "$?a_word" "$?m_word")" crlf)
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f ?f1 ?f0)
			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
	                (assert (manual_hin_sen $?pre $?post))
			(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" np_with_some_same_mng "$?a_word" "$?m_word")" crlf)
                )
        )
)
;;--------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
(defrule get_rem_group
(declare (salience 45))
?f0<-(anu_id-manual_id-a_grp_mng-m_grp_mng ?a_id ?m_id $?a ?wrd $?a1 - $?w)
?f<-(manual_id-node-word-root-tam ? ? $?m ?wrd $?m1 - ? - ?)
?f1<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
=>
	(retract ?f1 ?f ?f0)
	(bind $?a_word (create$ $?a ?wrd $?a1))
	(bind $?m_word (create$ $?m ?wrd $?m1 $?w))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
        (assert (manual_hin_sen $?pre $?post))
)

;(defrule agrep_match
;(declare (salience 50))
;?f<-(manual_hin_sen $?pre $?word $?post)
;?f1<-(manual_id-node-word-root-tam ?m_id ?n $?word - ?head - ?tam)
;?f0<-(anu_id-node-word-root-tam  ?a_id ?n1 $?w1 - ?head1 - ?tam1)
;(test (neq ?head1 -))
;(not (id_modified ?a_id))
;=>
;	(system "echo " ?head ">agrep_jnk")
; 	(system "agrep -B -y " ?head1 " agrep_jnk > agrep_match 2> agrep_error") 
;	(system "cut -d ' ' -f6 < agrep_error > agrep_count")
;	(open "agrep_count" fp "r")
;	(bind ?err (read fp))
;	(if (neq ?err EOF) then
;		(bind ?w_len (length ?head1))
;		(bind ?agrep_len (length ?head))
;        	(if (> ?w_len ?agrep_len) then
;			(bind ?min (- ?w_len ?agrep_len))
;        	else
;        		(bind ?min (- ?agrep_len ?w_len))
;		)
;	(printout t "min  "?min "  err" ?err crlf)
;        	(if (and (< ?min ?err) (<= ?err 2)) then
;			(retract ?f0 ?f ?f1)
;			(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
;	                (assert (manual_hin_sen $?pre $?post))
;			(assert (id_modified ?a_id))
;        	) 
;	)
;	(close fp)
; )
;--------------------------------------------------------------------------------
;(defrule close_align
;(declare (salience -10))
;=>
;	(close ?*alg_file*)
;)


