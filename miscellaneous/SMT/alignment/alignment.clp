; This file is written by Shirisha Manju
; Generates group alignment  (anusaaraka and manual group alignment)

(defglobal ?*alg_file* = alig_fp)

;------------------------------------------------------------------------------------------------------------------
(defrule same_grp_mng
(declare (salience 500))
?f<-(manual_id-node-word-root-tam ?m_id ? $?grp_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?grp_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?grp_mng $?post)
(test (and (eq (member$ Ora $?grp_mng) FALSE)(eq (member$ yA $?grp_mng) FALSE)))
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?grp_mng - ?m_id $?grp_mng))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng	same_grp_mn " ?a_id"  "$?grp_mng ?m_id" "$?grp_mng")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_with_same_root
(declare (salience 450))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?w - ?root - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?)
?f0<-(manual_hin_sen $?pre $?w $?post)
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?w))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_with_same_root " ?a_id"  "$?w1 ?m_id" "$?w")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_root_match_with_word
(declare (salience 400))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?m_mng - ?m_rt - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?a_rt - ?)
(id-org_wrd-root-dbase_name-mng ?a_id ?word ?root Physics_dictionary_gdbm  ?default_mng)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
(not (modified_sen_with_ora))
(not (modified_manual_sen))
(not (default_Ora_grp))
=>
        (if (eq ?m_rt ?default_mng) then
                (retract ?f0 ?f ?f1)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?m_mng))
                (assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_root-man_root ?root ?a_rt ?m_rt))
		(printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_root_match_with_org_wrd " ?a_id"  "$?w1 ?m_id" "$?m_mng")" crlf)
        )
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_root_match_with_root
(declare (salience 390))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?m_mng - ?m_rt - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?a_rt - ?)
(id-org_wrd-root-dbase_name-mng ?a_id ?word ?root iit-bombay_and_old_wsd_gdbms  $?default_mngs)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
(not (modified_sen_with_ora))
(not (modified_manual_sen))
(not (default_Ora_grp))
=>
        (if (member$ ?m_rt $?default_mngs) then
                (retract ?f0 ?f ?f1)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?m_mng))
                (assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_root-man_root ?root ?a_rt ?w1 ?m_rt))
                (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_root_match_with_org_wrd " ?a_id"  "$?w1 ?m_id" "$?m_mng")" crlf)
        )
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_with_same_tam
(declare (salience 380))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root1 - ?tam)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_with_same_tam " ?a_id"  "$?w1 ?m_id" "$?word")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_exact_match
(declare (salience 370))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a ?v - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA  - ?)
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
	(printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      get_Ora_exact_match " ?a_id"  "$?a_mng ?m_id" "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_lt_match
(declare (salience 360))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?w $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?w $?m1 ?h $?post)
=>
        (retract ?f1 ?f2 )
        (bind $?m_mng (create$ $?m ?w $?m1))
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w $?m_mng ?id ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_match  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; Here we remark on two principal thrusts in physics : unification and reduction.
(defrule get_left_match_for_Ora_with_word_head
(declare (salience 351))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora|yA $?a1 - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
(id-Apertium_output ?wid ?w $?d)
(id-HM-source ?wid ?a_root ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root Physics_dictionary_gdbm  ?default_mng)
?f2<-(manual_id-node-word-root-tam  ?id  ?node $?m ?w1 $?m1 - ?m_root - ?v)
(id-node-word-root ? ? ?w1 ?m_root)
=>
        (if (eq ?m_root ?default_mng) then
                (retract ?f1 ?f2)
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w  ?w1 $?m1 ?id ?h))
                (assert (manual_id-node-word-root-tam  ?id ?node $?m $?m1 - ?m_root - ?v))
                (assert (eng_root-anu_mng-man_mng ?root  ?w ?w1))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
; unification  === eka ho jAnA -- ekIkaraNa
(defrule get_left_match_for_Ora_with_word
(declare (salience 350))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora|yA $?a1 - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
(id-Apertium_output ?wid ?w $?d)
(id-HM-source ?wid ?a_root ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root Physics_dictionary_gdbm  ?default_mng)
?f2<-(manual_id-node-word-root-tam  ?id  ?node $?m ?w1 $?m1 - ?head - ?v)
(id-node-word-root ? ? ?w1 ?m_root)
=>
        (if (eq ?m_root ?default_mng) then
		(retract ?f1 ?f2)
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w  ?w1 ?id ?h))
		(assert (manual_id-node-word-root-tam  ?id ?node $?m $?m1 - ?head - ?v))
		(assert (eng_root-anu_mng-man_mng ?root  ?w ?w1)) 
        )
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_left_match_for_Ora_with_root
(declare (salience 340))
(left_Ora_fact)
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora|yA $?a1 - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
(id-Apertium_output ?wid ?w)
(id-HM-source   ?wid   ?a_root ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root iit-bombay_and_old_wsd_gdbms  $?default_mngs)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?w1 $?m1 - ? - ?)
(id-node-word-root ? ? ?w1 ?m_root)
(test (and (< ?id ?m_id)(neq ?id ?m_id)))
=>
	(bind $?m_mng (create$ $?m ?w1 $?m1))
        (if (or (and (member$ ?m_root $?default_mngs)(member$ ?a_root $?default_mngs))(member$ ?m_root $?default_mngs)) then
		(retract ?f1 ?f2)
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w  $?m_mng ?id ?h))
		(assert (eng_root-anu_mng-man_mng ?root  ?w ?w1))
        )        
)
;-------------------------------------------------------------------------------------------------------------------------
;lagaBaga saba buddhist vAswukalA saMbaXI rUpa stupa chaitya "maMxiroM" Ora maTa kA
(defrule default_Ora_lt_match
(declare (salience 330))
?f<-(anu_id-node-word-root-tam  ?a_id ?n $?a ?w $?a1 - Ora|yA - ?)
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng ?id ?h)
?f2<-(manual_id-node-word-root-tam =(- ?m_h 1)  ? $?m ?w1 $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?w1 $?m1 ?h $?post)
=>
        (retract ?f1 ?f2 )
        (bind $?m_mng (create$ $?m_mng $?m ?w1 $?m1))
	(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng =(- ?m_h 1) ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_h" default_Ora_lt_match  "$?m_mng")" crlf)
	(assert (default_Ora_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
;buxXimawwA Ora  ===> buXxi evaM
(defrule default_Ora_lt_match1
(declare (salience 320))
?f<-(anu_id-node-word-root-tam  ?a_id ? ?w $?a - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ? $? - ?h&Ora|waWA|evaM|yA - ?)
?f2<-(manual_id-node-word-root-tam =(- ?m_id 1)  ? $?m - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?h $?post)
=>
        (retract ?f1 ?f2 )
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w $?m =(- ?m_id 1) ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" default_Ora_lt_match1  "$?m")" crlf)
        (assert (default_Ora_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
;Places where a tourist can whiz past his worries include gulmarg in jammu and "kashmir", auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule get_Ora_rt_match
(declare (salience 310))
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?mng  ? ?h&Ora|waWA|evaM|yA)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd - Ora|yA - ?)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wrd $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?mng ?h $?m ?wrd $?m1 $?post)
(test (> ?id ?m_id))
=>
	(retract ?f ?f1 ?f2 ?f0)
	(bind $?a_mng (create$ $?a ?w $?a1 ?a_h $?a2 ?wrd))
        (bind $?m_mng (create$ $?mng ?h $?m ?wrd $?m1))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id $?a_mng - ?m_id $?m_mng))
	(assert  (manual_hin_sen $?pre $?post))
)
;-------------------------------------------------------------------------------------------------------------------------
; reduction ===> katOwI - nyUnIkaraNa para hI
(defrule get_Ora_rt_match_with_org_word
(declare (salience 300))
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?lt_mng  ? ?h&Ora|waWA|evaM|yA)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd - Ora|yA - ?)
(id-Apertium_output ?wid ?wrd)
;(id-HM-source   ?wid   ?a_root ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root Physics_dictionary_gdbm ?mng)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wrd1 $?m1 - ?m_rt - ?)
?f0<-(manual_hin_sen $?pre $?lt_mng ?h $?m ?wrd1 $?m1 $?post)
(id-node-word-root ? ? ?wrd1 ?m_root)
=>
        (if (eq ?m_rt ?mng) then
                (retract ?f ?f1 ?f2 ?f0)
		(bind $?a_mng (create$ $?a ?w $?a1 ?a_h $?a2 ?wrd))
		(bind $?m_mng (create$ $?lt_mng ?h $?m ?wrd1 $?m1))
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id $?a_mng - ?m_id $?m_mng))
	        (assert  (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_mng-man_mng ?root  ?wrd ?wrd1))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_rt_match_with_root
(declare (salience 290))
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?lt_mng  ? ?h&Ora|waWA|evaM|yA)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd - Ora|yA - ?)
(id-Apertium_output ?wid ?wrd)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root iit-bombay_and_old_wsd_gdbms $?mngs)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wrd1 $?m1 - ?m_rt - ?)
?f0<-(manual_hin_sen $?pre $?lt_mng ?h $?m ?wrd1 $?m1 $?post)
=>
        (if (member$ ?m_rt $?mngs) then
                (retract ?f ?f1 ?f2 ?f0)
                (bind $?a_mng (create$ $?a ?w $?a1 ?a_h $?a2 ?wrd))
                (bind $?m_mng (create$ $?lt_mng ?h $?m ?wrd1 $?m1))
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id $?a_mng - ?m_id $?m_mng))
                (assert  (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_mng-man_mng ?root  ?wrd ?wrd1))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_Ora_rt_match
(declare (salience 280))
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?mng  ? ?h&Ora|waWA|evaM|yA)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd $?a3 - Ora|yA - ?)
(id-Apertium_output ?wid ?wrd $?w1)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wrd $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?mng ?h $?m ?wrd $?m1 $?post)
=>
        (retract ?f ?f1 ?f2 ?f0)
        (bind $?a_mng (create$ $?a ?w $?a1 ?a_h $?a2 ?wrd $?a3))
        (bind $?m_mng (create$ $?mng ?h $?m ?wrd $?m1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert  (manual_hin_sen $?pre $?post))
)
;-------------------------------------------------------------------------------------------------------------------------
;68 Kms from bhopal, sanchi has the distinction of having the finest specimens of almost all buddhist architectural forms, stupa, chaitya, temples and monasteries dating from 3rd century bcABBR-Dot.
(defrule default_Ora_rt_match1
(declare (salience 270))
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd $?a3 - Ora|yA - ?)
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w  ?mng $?mng1  ? ?h&Ora|waWA|evaM|yA)
(id-Apertium_output ?wid ?wrd $?w1)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wrd $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre ?mng $? ?h $?m ?wrd $?m1 $?post)
=>
        (retract ?f ?f1 ?f2 ?f0)
        (bind $?a_mng (create$ $?a ?w $?a1 ?a_h $?a2 ?wrd $?a3))
        (bind $?m_mng (create$ ?mng $?mng1 ?h $?m ?wrd $?m1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert  (manual_hin_sen $?pre $?post))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_Ora_rt_match2
(declare (salience 260))
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 - Ora|yA - ?)
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?mng  ? ?h&Ora|waWA|evaM|yA)
?f2<-(manual_id-node-word-root-tam =(+ ?m_id 1) ? $?m  - ? - ?t)
?f0<-(manual_hin_sen $?pre $?mng ?h $?m  $?post)
=>
        (retract ?f ?f1 ?f2 ?f0)
        (bind $?a_mng (create$ $?a ?w $?a1))
        (bind $?m_mng (create$ $?mng ?h $?m ))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert  (manual_hin_sen $?pre $?post))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_default_Ora_rt_match  " $?a_mng " "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
 (defrule get_match_for_np_head
 (declare (salience 250))
 ?f0<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a_word - ?head&~Ora&~yA - ?)
 ?f1<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m_word - ?head&~Ora&~waWA&~evaM&~yA  - ?)
 ?f2<-(manual_hin_sen $?pre $?m_word $?post)
 =>
         (retract ?f0 ?f1 ?f2)
         (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
         (assert (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_np))
 )
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_org_wrd_match_for_np_head
(declare (salience 240))
?f0<-(anu_id-node-word-root-tam  ?aid ?n1 $?a_word - ?a_head&~Ora - ?)
(id-org_wrd-root-dbase_name-mng ?aid ?word ?root Physics_dictionary_gdbm  ?mng)
?f1<-(manual_id-node-word-root-tam ?m_id ?n $?m_word - ?m_head&~Ora|waWA|evaM|yA  - ?)
?f2<-(manual_hin_sen $?pre $?m_word $?post)
(not (modified_sen_with_np))
(not (modified_sen_for_np_word))
=>
        (if (eq ?m_head ?mng) then
                (retract ?f0 ?f1 ?f2)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a_word - ?m_id $?m_word))
                (assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_root-man_root ?root ?a_head ?m_head))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_fact_for_np_head
 (declare (salience 230))
 =>
        (assert (np_head_match))
 )
;-------------------------------------------------------------------------------------------------------------------------
;Physics meM - BOwikI ke aMwargawa
(defrule get_root_match_for_np_head
(declare (salience 230))
(np_head_match)
?f0<-(anu_id-node-word-root-tam  ?aid ?n1 $?a_word - ?a_head&~Ora - ?)
(not (numberp ?a_head))
(id-Apertium_output ?aid $?a_word)
?f1<-(manual_id-node-word-root-tam ?m_id ?n $?m_word - ?m_head&~Ora|waWA|evaM|yA  - ?)
(id-org_wrd-root-dbase_name-mng ?aid ?word ?root iit-bombay_and_old_wsd_gdbms $?default_mngs)
?f2<-(manual_hin_sen $?pre $?m_word $?post)
(not (modified_sen_with_np))
=>
	(if (member$ ?m_head $?default_mngs) then
		(retract ?f0 ?f1 ?f2)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a_word - ?m_id $?m_word))
		(assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_root-man_root ?root ?a_head ?m_head))
		(assert (modified_sen_for_np_word))
	)
)
;-------------------------------------------------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
(defrule default_verb_rule
(declare (salience 220))
(default_verb_fact)
?f<-(anu_id-node-word-root-tam ?a_id VP $?a_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam ?m_id VGF|VGNF|VGNN $?m_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_some_match_fact
(declare (salience 210))
=>
        (assert (match_for_some_mng))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule np_with_some_same_mng
(declare (salience 210))
(match_for_some_mng)
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGNN $?m ?wrd $?m1 - ? - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a ?wrd $?a1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
=>
	(bind $?m_mng (create$ $?m ?wrd $?m1))
        (bind $?a_mng (create$ $?a ?wrd $?a1))
	(retract ?f ?f1 ?f0)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule np_with_some_same_mng_with_word
(declare (salience 200))
(match_for_some_mng)
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGNN $?m ?wrd $?m1 - ?head - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a ?wrd1 $?a1 - ?head1 - ?tam1)
(id-Apertium_output ?wid $? ?wrd1 $?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root Physics_dictionary_gdbm  ?mng)
(id-node-word-root ? ? ?wrd ?m_rt)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
(not (modified_sen_with_np_rt))
=>
        (if (eq ?m_rt ?mng) then
	        (bind $?m_mng (create$ $?m ?wrd $?m1))
        	(bind $?a_mng (create$ $?a ?wrd1 $?a1))
                (retract ?f ?f1 ?f0)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
                (assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_mng-man_mng ?root ?wrd1 ?wrd))
                (assert (modified_sen_with_np))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule np_with_some_same_mng_with_root
(declare (salience 190))
(match_for_some_mng)
?f<-(manual_id-node-word-root-tam ?m_id ?n $?m ?wrd $?m1 - ?head - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a ?wrd1 $?a1 - ?head1 - ?tam1)
(id-Apertium_output ?wid $? ?wrd1 $?)
(id-HM-source ?wid ?a_rt ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root iit-bombay_and_old_wsd_gdbms $?default_mngs)
(id-node-word-root ? ? ?wrd ?m_rt)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
(not (modified_sen_with_np_rt1))	
=>
	(bind $?m_mng (create$ $?m ?wrd $?m1))
        (bind $?a_mng (create$ $?a ?wrd1 $?a1))
 	(if (member$ ?m_rt $?default_mngs) then
		(retract ?f ?f1 ?f0)
		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
	        (assert (manual_hin_sen $?pre $?post))
		(assert (eng_root-anu_mng-man_mng ?root ?wrd1 ?wrd))
		(assert (modified_sen_with_np_rt))
	)
)
;-------------------------------------------------------------------------------------------------------------------------
;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
;usakI(8) == usakI cinwAoM ko pICe ,  ciMwAoM ke pare(9)
(defrule get_rem_group_of_anu_from_man
(declare (salience 180))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  ?a - ?m_id ?a $?m)
(test (neq (length $?m) 0))
?f1<-(anu_id-node-word-root-tam =(+ ?a_id 1) ? $?w - ? - ?)
=>
        (retract ?f1 ?f0)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id ?a $?w - ?m_id ?a $?m))
        (assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule last_fact
(declare (salience 170))
(manual_hin_sen $?sen ?)
(test (neq (length $?sen) 0))
=>
        (assert (run_default_rules))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_rule
(declare (salience 160))
(run_default_rules)
?f<-(manual_id-node-word-root-tam  ?id   ?  $?m_mng - ? - ?v)
?f1<-(anu_id-node-word-root-tam   ?id1   ?   $?a_mng - ? - ?v1)
=>
        (retract ?f ?f1 )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id1  $?a_mng - ?id))
        (assert (modified_sen_with_default))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_rule1
?f<-(anu_id-node-word-root-tam   ?id   ?   $?a_mng - ? - ?v1)
(manual_hin_sen ?)
=>
	(retract ?f)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id  $?a_mng - ?id))
)
