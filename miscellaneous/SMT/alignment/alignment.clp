(defglobal ?*alg_file* = alig_fp)

(deffunction match (?a_word ?m_word ?root)
        (bind ?rank1 0) (bind ?rank2 0); (bind ?rank3 0)
;	(printout t ?a_word "============" ?m_word"================" ?root crlf)
        (if (eq ?a_word ?m_word) then  (bind ?rank1 1))
        (bind ?new_mng "")
	(if (not (numberp ?root)) then
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
	)
        (bind $?matches (create$ ?rank1 ?rank2))
)
;--------------------------------------------------------------------------------
(defrule same_grp_mng
(declare (salience 110))
?f<-(manual_id-node-word-root-tam ?m_id ? $?grp_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?grp_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?grp_mng $?post)
(test (and (eq (member$ Ora $?grp_mng) FALSE)(eq (member$ yA $?grp_mng) FALSE)))
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?grp_mng - ?m_id $?grp_mng))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" same_grp_mng "$?grp_mng" "$?grp_mng")" crlf)
)
;--------------------------------------------------------------------------------
(defrule vb_exact_mng
(declare (salience 100))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?w - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?tam)
?f0<-(manual_hin_sen $?pre $?w $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?w))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" vb_exact_mng "$?w1" "$?w")" crlf)
)
;--------------------------------------------------------------------------------
(defrule vb_root_match
(declare (salience 90))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?word - ?rt - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?rt1 - ?tam1)
(id-root ?a_id ?root)
?f0<-(manual_hin_sen $?pre $?word $?post)
(not (modified_sen_with_ora))
(not (modified_manual_sen))
(not (default_Ora_grp))
=>
        (bind $?matches (match ?rt1 ?rt ?root ))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f0 ?f ?f1)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
                (assert (manual_hin_sen $?pre $?post))
                (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id"  vb_with_same_root "$?w1" "$?word")" crlf)
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f0 ?f ?f1)
                        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
                        (assert (manual_hin_sen $?pre $?post))
                        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" vb_with_same_root "$?w1" "$?word")" crlf)
                )
        )
)
;--------------------------------------------------------------------------------
(defrule vb_with_same_tam
(declare (salience 85))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root1 - ?tam)
?f0<-(manual_hin_sen $?pre $?word $?post)
=>
	(retract ?f0 ?f ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
        (assert (manual_hin_sen $?pre $?post))
	(printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng	"?a_id" "?m_id" vb_with_same_tam "$?w1" "$?word")" crlf)
)
;--------------------------------------------------------------------------------
(defrule get_Ora_exact_match
(declare (salience 75))
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
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_exact_match "$?a_mng" "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule get_Ora_wx_lt_match
(declare (salience 70))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a - Ora|yA - ?)
(eng_word-man_wx_word ?w ?wx_word)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wx_word $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?wx_word $?m1 ?h $?post)
=>
        (retract ?f1 ?f2 )
        (bind $?m_mng (create$ $?m ?wx_word $?m1))
	(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w $?m_mng ?id ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_wx_lt_match  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_fact
(declare (salience 69))
(anu_id-node-word-root-tam  $? - Ora|yA - ?)
=>
	(assert (left_Ora_fact))
)

(defrule get_left_match_for_Ora
(declare (salience 69))
(left_Ora_fact)
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?a Ora|yA $?a1 - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA - ?)
(id-Apertium_output ?wid ?w)
(id-HM-source   ?wid   ?h_root ?)
(id-root ?wid ?root)
?f2<-(manual_id-node-word-root-tam  ?id  ? $?m ?w1 $?m1 - ? - ?)
(id-node-word-root ? ? ?w1 ?m_root)
(test (and (< ?id ?m_id)(neq ?id ?m_id)))
=>
;        (bind $?matches (match ?w ?w1 ?root))
        (bind $?matches (match ?h_root ?m_root ?root))
        (bind $?m_mng (create$ $?m ?w1 $?m1))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f1 ?f2)
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w  $?m_mng ?id ?h))
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f1 ?f2)
                        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?w  $?m_mng ?id ?h))
                )
        )
)
;-------------------------------------------------------------------------------------------------------------------------
;lagaBaga saba buddhist vAswukalA saMbaXI rUpa stupa chaitya maMxiroM Ora maTa kA
;(anu)chaitya ==> cEwyA(wx) ----- cEwya(man)
(defrule default_Ora_wx_lt_match
(declare (salience 68))
?f<-(anu_id-node-word-root-tam  ?a_id ? $? ?w $? ?a_h&Ora|yA $? - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_h ? $? - ?h&Ora|waWA|evaM|yA - ?)
(eng_word-man_wx_word ?w ?wx_word)
?f2<-(manual_id-node-word-root-tam ?id ? $?m ?wx_word $?m1 - ? - ?)
=>
	(bind $?m_mng (create$ $?m ?wx_word $?m1))
	(retract ?f1 ?f2)
	(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng ?id ?h))		
)
;-------------------------------------------------------------------------------------------------------------------------
;lagaBaga saba buddhist vAswukalA saMbaXI rUpa stupa chaitya maMxiroM Ora maTa kA
;(anu)stupa  ===> swupa(wx) ----- swUpa(man)
(defrule get_Ora_lt_grp
(declare (salience 68))
(or (anu_id-node-word-root-tam  ?a_id ? $? ?w $? ?a_w $? ?a_h&Ora|yA $? - Ora|yA - ?)(anu_id-node-word-root-tam  ?a_id ? $? ?a_w $? ?w $? ?a_h&Ora|yA $? - Ora|yA - ?))
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?a_w $?m_mng ?id ?h)
(eng_word-man_wx_word ?w ?wx_word) 
?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?wx_word $?m1 - ? - ?)
(not (default_Ora_grp))
=>
	(retract ?f1 ?f2)
	(if (< ?id1 ?id) then
		(bind $?m_mng (create$ $?m ?wx_word $?m1 $?m_mng))
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng ?id1 ?h))
	else
		(bind $?m_mng (create$ $?m_mng $?m ?wx_word $?m1))
                (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng ?id1 ?h))
	)
)
;-------------------------------------------------------------------------------------------------------------------------
;(defrule get_ora_lt_fact
;(declare (salience 67))
;(man_head-anu_word-Ora_grp-Ora_grp_id-Ora $?)
;=>
;	(assert (ora_fact))
;)
;
;(defrule get_Ora_lt_grp1
;(declare (salience 67))
;(ora_fact)
;(anu_id-node-word-root-tam  ?a_id ? $? ?w $? ?a_w $? ?a_h&Ora|yA $? - Ora|yA - ?)
;?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?a_w $?m_mng ?id ?h)
;(id-Apertium_output ?wid ?w)
;(id-root ?wid ?root)
;?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?word $?m1 - ? - ?)
;(id-node-word-root ? ? ?word ?h_rt)
;(not (default_Ora_grp))
;=>
;	(bind $?matches (match ?w ?h_rt ?root))
;        (if (eq (nth$ 1 $?matches) 1) then
;        	(bind $?m_mng (create$ $?m ?word $?m1 $?m_mng))
;                (retract ?f1 ?f2)
;		(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w $?m_mng ?id1 ?h))
;        else    (if (eq (nth$ 2 $?matches) 2) then
;	                (bind $?m_mng (create$ $?m ?word $?m1 $?m_mng))
;                        (retract ?f1 ?f2)
;			(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_h ?w  $?m_mng ?id1 ?h))
;                )
;        )
;)



;lagaBaga saba buddhist vAswukalA saMbaXI rUpa stupa chaitya "maMxiroM" Ora maTa kA
(defrule default_Ora_lt_match
(declare (salience 66))
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
(declare (salience 66))
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
(declare (salience 65))
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd - Ora|yA - ?)
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?mng  ? ?h&Ora|waWA|evaM|yA)
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
(defrule default_Ora_rt_match
(declare (salience 64))
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?a_h&Ora|yA $?a2 ?wrd $?a3 - Ora|yA - ?)
?f1<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id  ?w $?mng  ? ?h&Ora|waWA|evaM|yA)
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
(declare (salience 63))
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



(defrule default_Ora_rt_match2
(declare (salience 62))
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
(defrule get_wx_match_for_np_head
(declare (salience 60))
?f0<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a_word - ?head&~Ora - ?)
(eng_word-man_wx_word ?head ?wx_wrd)
?f1<-(manual_id-node-word-root-tam ?m_id ?n $?m_word - ?wx_wrd  - ?)
?f2<-(manual_hin_sen $?pre $?m_word $?post)
 =>
        (retract ?f0 ?f1 ?f2)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
        (assert (manual_hin_sen $?pre $?post))
        (assert (modified_manual_sen))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?m_id" "?a_id"  get_wx_match_for_np_head  "$?a_word" "$?m_word")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
 (defrule get_fact_for_np_head
 (declare (salience 56))
 =>
	(assert (np_head_match))
 )
 ;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
 ;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
 (defrule get_match_for_np_head
 (declare (salience 55))
 (np_head_match)
 ?f0<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a_word - ?head&~Ora&~yA - ?)
 ?f1<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m_word - ?h&~Ora&~waWA&~evaM&~yA  - ?)
 (id-root ?a_id ?root)
 ?f2<-(manual_hin_sen $?pre $?m_word $?post)
 (not (modified_sen_with_default))
 (not (modified_sen_with_np))
 (not (modified_sen_with_wx))
 (not (modified_sen_rem_grp))
 =>
        (bind $?matches (match ?head ?h ?root))
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
;-------------------------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
(defrule default_verb_rule
(declare (salience 52))
?f<-(anu_id-node-word-root-tam ?a_id VP $?a_mng - ? - ?)
(id-root ?a_id ?root)
?f1<-(manual_id-node-word-root-tam ?m_id VGF|VGNF $?m_mng - ?m_root - ?)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
(not (modified_sen_with_wx))
=>
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
        (if (member$ ?m_root $?default_mngs) then
                (retract ?f ?f1 ?f0)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
                (assert (manual_hin_sen $?pre $?post))
                (assert (modified_sen_with_default))
        )
)
;-------------------------------------------------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
(defrule default_verb_rule1
(declare (salience 51))
?f<-(anu_id-node-word-root-tam ?a_id VP $?a_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam ?m_id VGF|VGNF $?m_mng - ? - ?)
?f0<-(manual_hin_sen $?pre $?m_mng $?post)
=>
        (retract ?f ?f1 ?f0)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_default))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule np_with_some_same_mng_with_wx
(declare (salience 51))
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1&~VP $?a ?word $?a1 - ? - ?)
(eng_word-man_wx_word ?word ?wx_word)
?f<-(manual_id-node-word-root-tam ?m_id ?n&~VGF&~VGNN $?m ?wx_word $?m1 - ? - ?)
?f0<-(manual_hin_sen $?pre $?m ?wx_word $?m1 $?post)
=>
        (retract ?f0 ?f ?f1)
        (bind $?m_word (create$ $?m ?wx_word $?m1))
        (bind $?a_word (create$ $?a ?word $?a1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
        (assert (manual_hin_sen $?pre $?post))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng     "?a_id" "?m_id" np_with_some_same_mng_with_wx "$?a_word" "$?m_word")" crlf)
	(assert (modified_sen_with_wx))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_some_match_fact
(declare (salience 51))
=>
	(assert (match_for_some_mng))
)

;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
(defrule np_with_some_same_mng
(declare (salience 50))
(match_for_some_mng)
?f<-(manual_id-node-word-root-tam ?m_id ?n $?m ?wrd $?m1 - ?head - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id ?n1 $?a ?wrd1 $?a1 - ?head1 - ?tam1)
(id-Apertium_output ?wid ?wrd1)
(id-root ?wid ?root)
?f0<-(manual_hin_sen $?pre $?m ?wrd $?m1 $?post)
(not (modified_sen_default))
(not (modified_sen_rem_grp))
=>
        (bind $?m_word (create$ $?m ?wrd $?m1))
        (bind $?a_word (create$ $?a ?wrd1 $?a1))
        (bind $?matches (match ?wrd1 ?wrd ?root))
        (if (eq (nth$ 1 $?matches) 1) then
                (retract ?f ?f1 ?f0)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
                (assert (manual_hin_sen $?pre $?post))
		(assert (modified_sen_with_np))	
                (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" np_with_some_same_mng "$?a_word" "$?m_word")" crlf)
        else    (if (eq (nth$ 2 $?matches) 2) then
                        (retract ?f ?f1 ?f0)
                        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
                        (assert (manual_hin_sen $?pre $?post))
			(assert (modified_sen_with_np))
                        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" np_with_some_same_mng "$?a_word" "$?m_word")" crlf)
                )
        )
)
;-------------------------------------------------------------------------------------------------------------------------
;Places where a tourist can whiz past his worries include gulmarg in jammu and kashmir, auli in grawhal, kufri and narkanda in himachal pradesh.
;usakI(8) == usakI cinwAoM ko pICe ,  ciMwAoM ke pare(9)
(defrule get_rem_group_of_anu_from_man
(declare (salience 49))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  ?a - ?m_id ?a $?m)
(test (neq (length $?m) 0))
?f1<-(anu_id-node-word-root-tam =(+ ?a_id 1) ? $?w - ? - ?)
=>
        (retract ?f1 ?f0)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id ?a $?w - ?m_id ?a $?m))
	(assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
;Young children are taken to the temples and are introduced to the letters of the alphabet in front of saraswati, the goddess of wisdom and learning.
;paricaya kie gaye hEM(anu) == karavAyA jAwA hE(man) ===> paricaya kie gaye hEM(anu) ==  unakA paricaya karavAyA jAwA hE(man)
(defrule get_rem_group_of_man_from_anu_first
(declare (salience 46))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid  $?mng)
?f0<-(manual_id-node-word-root-tam ?id ?n&~VGF $?m ?w $?m1 - ?h - ?v)
?f2<-(manual_hin_sen $?pre $?m ?w $?m1 $?post)
=>
        (retract ?f1 ?f0 ?f2)
	(bind ?m_mng (create$ $?m ?w $?m1 $?mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid  $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
;Prayag Sangeet Samiti - saMgIwa samiwi  ==> Prayag Sangeet Samiti - prayAga saMgIwa samiwi
(defrule get_rem_group_of_man_from_anu_wx_first
(declare (salience 46))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid  $?mng)
(eng_word-man_wx_word ?w ?wx_word)
?f0<-(manual_id-node-word-root-tam ?id ? $?m ?wx_word $?m1 - ?h - ?v)
?f2<-(manual_hin_sen $?pre $?m ?wx_word $?m1 $?post)
=>
        (retract ?f1 ?f0 ?f2)
        (bind ?m_mng (create$ $?m ?wx_word $?m1 $?mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w $?a - ?mid  $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------

;Mandi is comparatively hotter than other hill stations of himachal pradesh.
;anya pahAdI steSanoM kI apekRA == anya pahAdI steSanoM kI
;anya pahAdI steSanoM kI apekRA == anya pahAdI steSanoM kI apekRA
(defrule get_rem_group_of_man_from_anu_last
(declare (salience 46))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w - ?mid  $?mng)
?f0<-(manual_id-node-word-root-tam ?id ? $?m ?w $?m1 - ?h - ?v&0|-)
?f2<-(manual_hin_sen $?pre $?m ?w $?m1 $?post)
=>
        (retract ?f1 ?f0 ?f2)
        (bind ?m_mng (create$ $?mng $?m ?w $?m1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w - ?mid  $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------
;yaha AkASaxIpa - yaha  ==> yaha AkASaxIpa - yaha  sAMkewika jvAlA
(defrule get_rem_group_of_man_from_anu_last1
(declare (salience 45))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?a ?w - ?mid ?a)
(id-node-word-root ? ? ?a ?rt)
(id-node-root-cat-gen-num-per-case-tam ?id ? ?rt $?)
?f0<-(manual_id-node-word-root-tam =(+ ?id 1) ? $?w1 - ?h - ?v)
?f2<-(manual_hin_sen $?pre $?m $?w1 $?m1 $?post)
=>
        (retract ?f1 ?f0 ?f2)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?a ?w - ?mid  ?a $?w1))
        (assert (manual_hin_sen $?pre $?post))
	(assert (modified_sen_rem_grp))
)
;bhopal sanchi se - BopAla se ==> bhopal sanchi se -  BopAla sAMcI se
(defrule get_rem_group_of_man_from_anu
(declare (salience 44))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid ?w ?w1 $?a - ?mid ?mng $?m)
(eng_word-man_wx_word ?w1 ?wx_word)
?f0<-(manual_id-node-word-root-tam ?id ?node $?n ?wx_word $?n1 - ?h - ?v)
?f2<-(manual_hin_sen $?pre ?wx_word $?post)
=>
        (retract ?f1 ?f0 ?f2)
	(bind $?a_mng (create$ ?w ?w1 $?a))
        (bind $?m_mng (create$ ?mng ?wx_word $?m))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a_mng - ?mid  $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
	(assert (manual_id-node-word-root-tam ?id ?node $?n $?n1 - ?h - ?v))
        (assert (modified_sen_rem_grp))
)
;-------------------------------------------------------------------------------------------------------------------------


;(defrule get_rem_grp_fact
;(declare (salience 44))
;(manual_hin_sen $?sen .)
;(test (neq (length $?sen) 0))
;=>
;	(assert (get_rem_grp))
;)
;
;
;(defrule get_rem_grp_of_man_frm_anu_with_root
;(declare (salience 44))
;(get_rem_grp)
;?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w  $?a1 - ?mid $?mng)
;(id-Apertium_output ?id ?w)
;(id-root ?id ?root)
;?f0<-(manual_id-node-word-root-tam ?id1  ? $?m ?w1 $?m1  - ?h - ?v)
;(id-node-word-root ? ? ?w1 ?rt)
;?f2<-(manual_hin_sen $?pre $?m ?w1 $?m1 $?post)
;=>
;	(bind $?matches (match ?w ?rt ?root))
;	(if (eq (nth$ 1 $?matches) 1) then
;                (retract ?f2 ?f1 ?f0)
;                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a ?w  $?a1 - ?mid $?mng $?m ?w1 $?m1))
;                (assert (manual_hin_sen $?pre $?post))
;                (assert (modified_sen_rem_grp))
;        else    (if (eq (nth$ 2 $?matches) 2) then
;                        (retract ?f2 ?f1 ?f0)
;                        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a ?w  $?a1 - ?mid $?mng $?m ?w1 $?m1))
;                        (assert (manual_hin_sen $?pre $?post))
;                        (assert (modified_sen_rem_grp))
;                )
;        )
;)


;-------------------------------------------------------------------------------------------------------------------------
(defrule last_fact
(manual_hin_sen $?sen ?)
(test (neq (length $?sen) 0))
=>
	(assert (run_default_rules))
)
;This beacon resonates the image of gustave eiffel's tower itself as a universal and symbolic landmark.
;(8 gustave eiffel's kI - 8 gesteva ePila toYvara kI)
(defrule default_rule
(declare (salience 10))
(run_default_rules)
?f<-(manual_id-node-word-root-tam  ?id   ?  $?m_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam   ?id   ?   $?a_mng - ? - ?)
?f2<-(manual_hin_sen $?pre $?m_mng $?post)
=>
        (retract ?f ?f1 ?f2 )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id  $?a_mng - ?id $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_default))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_rule1
(declare (salience 5))
(run_default_rules)
?f<-(manual_id-node-word-root-tam  ?id   ?  $?m_mng - ? - ?v&0|-)
?f1<-(anu_id-node-word-root-tam   ?id1   ?   $?a_mng - ? - ?v1&0|-)
?f2<-(manual_hin_sen $?pre $?m_mng $?post)
=>
        (retract ?f ?f1 ?f2 )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id  $?a_mng - ?id1 $?m_mng))
        (assert (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_default))
)

(defrule default_rule2
(declare (salience 4))
(run_default_rules)
?f<-(manual_id-node-word-root-tam  ?id   ?  $?m_mng - ? - ?v)
?f1<-(anu_id-node-word-root-tam   ?id1   ?   $?a_mng - ? - ?v1)
;?f2<-(manual_hin_sen $?pre $?m_mng $?post)
=>
 ;       (retract ?f ?f1 ?f2 )
        (retract ?f ?f1 )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id1  $?a_mng - ?id))
;        (assert (manual_hin_sen $?pre $?post))
        (assert (modified_sen_with_default))
)
(defrule last_fact1
(manual_hin_sen ?)
=>
        (assert (run_def_rule))
)


;1.1 What is physics? 
(defrule default_rule3
(declare (salience 1))
(run_def_rule)
?f1<-(anu_id-node-word-root-tam   ?id1   ?   $?a_mng - ? - ?v1)
=>
        (retract ?f1 )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?id1  $?a_mng - ?id1))
)


