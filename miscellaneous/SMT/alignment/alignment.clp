(defrule same_grp_mng
(declare (salience 110))
?f<-(manual_id-node-word-root-tam ?m_id ? $?grp_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?grp_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?grp_mng $?post)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?grp_mng - $?grp_mng))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
(defrule vb_exact_mng
(declare (salience 100))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?w - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?tam)
?f0<-(manual_hin_sen $?pre $?w $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?w))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
(defrule vb_with_same_tam
(declare (salience 90))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root1 - ?tam)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?word))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
(defrule vb_with_same_root
(declare (salience 90))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?tam1)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?word))
        (assert (manual_hin_sen $?pre $?post))
) 
;--------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
(defrule np_with_same_head
(declare (salience 80))
?f<-(manual_id-node-word-root-tam ?m_id ?n $?word - ?head&~Ora - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ? $?w1 - ?head&~Ora - ?tam1)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
        (retract ?f0 ?f ?f1)
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?word))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
(defrule get_wx_match_for_org_wrd_for_head
(declare (salience 70))
?f<-(anu_id-node-word-root-tam  ?a_id ?n $?w1 - ?head&~Ora - ?tam1)
(id-HM-source ?a_id $? Original_word)
(E_word-wx_word ?head  ?wx_word)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $?word - ?wx_word - ?tam)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
        (retract ?f0 ?f ?f1)
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?word))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
(defrule get_Ora_exact_match
(declare (salience 69))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora - ?tam)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - Ora - ?tam1)
?f2<-(manual_id-node-word-root-tam ? ? $? ?w $? - $? - ?)
?f3<-(manual_id-node-word-root-tam ? ? $? ?v - $? - ?)
?f0<-(manual_hin_sen $?pre ?w $?word ?v $?post)
=>
        (retract ?f0 ?f ?f1 ?f2 ?f3)
	(bind $?a_mng (create$ ?w $?a ?v))
	(bind $?m_mng (create$ ?w $?word ?v))
        (assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id $?a_mng - $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
)

;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule get_Ora_match1
(declare (salience 69))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora - ?tam)
(E_word-wx_word ?w ?wx)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM - ?tam1)
?f2<-(manual_id-node-word-root-tam ? ? $? ?wx $? - $? - ?)
?f3<-(manual_id-node-word-root-tam ? ? $? ?v - $? - ?)
?f0<-(manual_hin_sen $?pre ?wx $?word ?v $?post)
=>
        (retract ?f0 ?f ?f1 ?f2 ?f3)
        (bind $?a_mng (create$ ?w $?a ?v))
        (bind $?m_mng (create$ ?wx $?word ?v))
        (assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?a_mng - $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
)

;--------------------------------------------------------------------------------
;This beacon resonates the image of gustave eiffel's tower itself as a universal and symbolic landmark.
(defrule get_Ora_lt_match
(declare (salience 68))
(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora $?v - Ora - ?tam)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? ?h&Ora|waWA|evaM - Ora|waWA|evaM - -) 
?f2<-(manual_id-node-word-root-tam  ?id  ? ?w $? - ? - ?t)
(test (neq ?id ?m_id))
?f0<-(manual_hin_sen $?pre ?w $?word ?h $?post)
=>
	(retract ?f2)
        (bind $?m_mng (create$ ?w $?word ?h))
	(assert (manual_id-Ora_grp ?m_id  $?m_mng - ?h))
)

;This beacon resonates the image of gustave eiffel's tower itself as a universal and symbolic landmark.
(defrule get_Ora_rt_match
(declare (salience 67))
?f<-(anu_id-node-word-root-tam  ?a_id ?n $?a ?wrd $?a1 Ora $?w ?wrd1 $?w1 - Ora - ?tam1)
?f1<-(manual_id-Ora_grp ?m_id  $?d ?wrd $?d1 ?h&Ora|waWA|evaM - Ora|waWA|evaM)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?wrd1 $?m1  - ? - ?t)
?f0<-(manual_hin_sen $?pre $?d ?wrd $?d1 ?h $?m ?wrd1 $?m1 $?post)
=>
        (retract ?f ?f1 ?f0 ?f2)
        (bind $?a_mng (create$ $?a ?wrd $?a1 Ora $?w ?wrd1 $?w1))
        (bind $?m_mng (create$ $?d ?wrd $?d1 ?h $?m ?wrd1 $?m1 ))
	(assert (manual_hin_sen $?pre $?post))
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?a_mng - $?m_mng))
)

;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning. 
;68 Kms from bhopal, sanchi has the distinction of having the finest specimens of almost all buddhist architectural forms, stupa, chaitya, temples and monasteries dating from 3rd century bcABBR-Dot.
(defrule get_default_Ora_match
(declare (salience 66))
?f<-(anu_id-node-word-root-tam  ?aid ?n $?a Ora $?w ?wrd1 $?w1 - Ora - ?tam1)
?f1<-(manual_id-node-word-root-tam ?mid ? ?h&Ora|waWA|evaM - ?h&Ora|waWA|evaM - -)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?wrd1 $?m1  - ? - ?t)
?f0<-(manual_hin_sen $?pre ?word ?h $?m ?wrd1 $?m1 $?post)
=>
	(retract ?f ?f1 ?f0 ?f2)
        (bind $?a_mng (create$ $?a Ora $?w ?wrd1 $?w1))
        (bind $?m_mng (create$ ?word ?h $?m ?wrd1 $?m1 ))
        (assert (manual_hin_sen $?pre $?post))
        (assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?aid ?mid $?a_mng - $?m_mng))
)

(defrule np_with_some_same_mng
(declare (salience 60))
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m ?wrd $?m1 - ?head - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a ?wrd $?a1 - ?head1 - ?tam1)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
(test (neq ?wrd Ora))
=>
        (retract ?f0 ?f ?f1)
        (bind $?word (create$ $?m ?wrd $?m1))
	(bind $?a_word (create$ $?a ?wrd $?a1))
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?a_word - $?word))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
;Ayodhya during ancient times was known as kaushaldesa.
;Places where a tourist can whiz past his worries include gulmarg in "jammu" and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule np_with_some_same_mng_with_wx
(declare (salience 55))
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a ?word $?a1 - ?head1 - ?tam1)
(E_word-wx_word   ?word	?wrd)
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m ?wrd $?m1 - ?head - ?tam)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
=>
        (retract ?f0 ?f ?f1)
        (bind $?word (create$ $?m ?wrd $?m1))
	(bind $?a_word (create$ $?a ?wrd $?a1))
	(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?a_word - $?word))
        (assert (manual_hin_sen $?pre $?post))
)
;--------------------------------------------------------------------------------
;(defrule np_with_some_same_mng_with_dic
;(declare (salience 54))
;?f1<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a ?word $?a1 - ? - ?)
;?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m ?wrd $?m1 - ? - ?tam)
;(id-HM-source ?id ?word ?)
;(id-root ?id ?root)
;?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?pos)
;=>
;	(bind ?new_mng "")
;;	(printout t ?word " " ?wrd crlf)
;	(bind ?mng (gdbm_lookup "default-iit-bombay-shabdanjali-dic_smt.gdbm" ?root))
;	(bind ?slh_index (str-index "/" ?mng))
;	(if (neq ?slh_index FALSE) then
;		(while (neq ?slh_index FALSE)
;               		(bind ?new_mng (str-cat ?new_mng (sub-string 1 (- ?slh_index 1) ?mng) " "))
;	                (bind ?mng (sub-string (+ ?slh_index 1) (length ?mng) ?mng))
;	                (bind ?slh_index (str-index "/" ?mng))
;     		)
;  		(bind ?new_mng (str-cat ?new_mng ?mng))
;	else
;		(bind ?new_mng ?mng)
;	)
;	(bind $?default_mngs (explode$ ?new_mng))
;	(printout t $?default_mngs crlf ?word "------" ?wrd crlf)
; 	(if (and (member$ ?word $?default_mngs)  (member$ ?wrd $?default_mngs)) then
;		(retract ?f1 ?f ?f0)
;		(bind $?m_word (create$ $?m ?wrd $?m1))
;	       	(bind $?a_word (create$ $?a ?word $?a1))
;		(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?a_word - $?m_word))
;	        (assert (manual_hin_sen $?pre $?pos))
;	)
;)
;--------------------------------------------------------------------------------
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
;			(assert (anu_id-manual_id-anu_grp_mng-man_grp_mng  ?a_id ?m_id $?w1 - $?word))
;	                (assert (manual_hin_sen $?pre $?post))
;			(assert (id_modified ?a_id))
;        	) 
;	)
;	(close fp)
; )
;--------------------------------------------------------------------------------
