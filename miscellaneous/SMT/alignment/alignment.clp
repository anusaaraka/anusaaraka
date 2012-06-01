; This file is written by Shirisha Manju
; Generates group alignment  (anusaaraka and manual group alignment)

(defglobal ?*alg_file* = alig_fp)

;------------------------------------------------------------------------------------------------------------------
(defrule same_grp_mng
(declare (salience 1000))
?f<-(manual_id-node-word-root-tam ?m_id ? $?grp_mng - ? - ?)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?grp_mng - ? - ?)
(test (neq (length $?grp_mng ) 1))
=>
        (retract ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?grp_mng - ?m_id $?grp_mng))
        (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      same_grp_mn " ?a_id"  "$?grp_mng ?m_id" "$?grp_mng")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_with_same_root
(declare (salience 950))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?w - ?root - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root - ?)
=>
        (retract ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?w))
        (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_with_same_root " ?a_id"  "$?w1 ?m_id" "$?w")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_root_match_with_word
(declare (salience 900))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?m_mng - ?m_rt - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?a_rt - ?)
(id-org_wrd-root-dbase_name-mng ?a_id ?word ?root Physics_dictionary_gdbm  ?default_mng)
=>
        (if (eq ?m_rt ?default_mng) then
                (retract ?f ?f1)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?m_mng))
                (assert (eng_root-anu_root-man_root ?root ?a_rt ?m_rt))
                (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_root_match_with_org_wrd " ?a_id"  "$?w1 ?m_id" "$?m_mng")" crlf)
        )
)
;------------------------------------------------------------------------------------------------------------------
;manwramugXa kara cukA hE -  sammohiwa karawe rahe hEM
(defrule vb_root_match_with_root
(declare (salience 850))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?m_mng - ?m_rt - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?a_rt - ?)
(id-org_wrd-root-dbase_name-mng ?a_id ?word ?root root_gdbms  $?default_mngs)
=>
        (if (member$ ?m_rt $?default_mngs) then
                (retract ?f ?f1)
                (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?m_mng))
                (assert (eng_root-anu_root-man_root ?root ?a_rt ?m_rt))
                (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_root_match_with_org_wrd " ?a_id"  "$?w1 ?m_id" "$?m_mng")" crlf)
        )
)
;------------------------------------------------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena.
; varNana kara sakawe hEM -- varNana rUpa meM kara sakawe hEM
(defrule vb_with_anu_kriyA_mUla
(declare (salience 840))
?f<-(anu_id-node-word-root-tam ?aid VP ?w $?mng - ?kri - ?tam)
(test (eq (sub-string (- (length ?kri) 3) (length ?kri) ?kri) "kara"))
?f1<-(manual_id-node-word-root-tam ?id NP $?m ?w $?m1 - ?head - ?t)
?f0<-(manual_id-node-word-root-tam ?mid VGF $?m_mng - ? - ?tam)
=>
	(retract ?f ?f0 ?f1)
	(bind $?m_mng (create$ ?w $?m1 $?m_mng))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  ?w $?mng - ?mid $?m_mng))
	(assert (manual_id-node-word-root-tam =(- ?mid 1) NP $?m  - ?head - ?t))
;   (printout t (sub-string (- (length ?tam) 3) (length ?tam) ?tam) )
)
;------------------------------------------------------------------------------------------------------------------
(defrule vb_with_same_tam
(declare (salience 800))
?f<-(manual_id-node-word-root-tam ?m_id ?n&VGF|VGNN|VGNF $?word - ?root - ?tam)
?f1<-(anu_id-node-word-root-tam  ?a_id VP $?w1 - ?root1 - ?tam)
=>
        (retract ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?w1 - ?m_id $?word))
        (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      vb_with_same_tam " ?a_id"  "$?w1 ?m_id" "$?word")" crlf)
)
;------------------------------------------------------------------------------------------------------------------
;varNana kiyA huA hE -  varNana xiyA gayA hE
(defrule vb_with_anu_kriyA_mUla1
(declare (salience 780))
?f<-(anu_id-node-word-root-tam ?aid VP ?w $?mng - ?kri - ?tam)
(test (eq (sub-string (- (length ?kri) 3) (length ?kri) ?kri) "kara"))
?f1<-(manual_id-node-word-root-tam ?id NP $?m ?w $?m1 - ?head - ?t)
?f0<-(manual_id-node-word-root-tam ?mid VGF $?m_mng - ? - ?tam1)
=>
        (retract ?f ?f0 ?f1)
        (bind $?m_mng (create$ ?w $?m1 $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  ?w $?mng - ?mid $?m_mng))
        (assert (manual_id-node-word-root-tam =(- ?mid 1) NP $?m  - ?head - ?t))
;   (printout t (sub-string (- (length ?tam) 3) (length ?tam) ?tam) )
)
;------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_exact_match
(declare (salience 750))
?f<-(anu_id-node-word-root-tam  ?a_id ?n ?w $?words ?v - Ora|yA - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ?n1 $? - ?h&Ora|waWA|evaM|yA  - ?)
?f2<-(manual_id-node-word-root-tam ? ? ?w $?a - ? - ?)
?f3<-(manual_id-node-word-root-tam ? ? $?b ?v - ?)
=>
        (retract ?f ?f1 ?f2 ?f3)
        (bind $?a_mng (create$ ?w $?words ?v))
        (bind $?m_mng (create$ ?w $?a $?b ?v))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
        (printout ?*alg_file* "(r_name-aid-a_mng-mid-m_mng      get_Ora_exact_match " ?a_id"  "$?a_mng ?m_id" "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_lt_match
(declare (salience 700))
?f1<-(manual_id-node-word-root-tam ?m_id ?  $? - ?o_h&evaM|Ora|waWA  - ?)
?f<-(anu_id-node-word-root-tam  ? ?  $? ?word $?  Ora|yA  $? - Ora|yA - ?)
(id-node-word-root ? ? ?word ?)
?f2<-(manual_id-node-word-root-tam ?id ?no  $?m ?word $?m1 - ? - ?s)
(not (got_initial))
=>
        (retract ?f2 )
        (bind $?m_mng (create$ $?m ?word $?m1))
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?word $?m_mng ?id ?o_h))
	(assert (got_initial))
;        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_match  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; same word of man and anu : niyamoM
; prakqwi ke mUlaBUwa niyamoM
(defrule get_Ora_lt_grp
(declare (salience 650))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id ?h)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?o_h&Ora|yA $? - ?o_h - ?)
(id-node-word-root ? ? ?w ?)
?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?w $?m1 - ? - ?)
(test (or (member$ ?anu_word $?a)(member$ ?anu_word $?a1)))
(test (< ?id1 ?m_id))
=>
        (retract ?f0 ?f2 )
	(if (< ?id1 ?id) then
;		(printout t ?id1 "  "?id " " ?m_id crlf)
		(bind $?m_mng  (create$ $?m ?w $?m1 $?m_mng))
	else
	        (bind $?m_mng (create$ $?m_mng $?m ?w $?m1))
	)
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id1 ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_lt_grp_with_word
(declare (salience 640))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id ?h)
(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1 ?o_h&Ora|yA $? - ?o_h - ?)
(id-Apertium_output ?wid ?w)
(id-org_wrd-root-dbase_name-mng ?wid ? ? provision_word_gdbm $?def_mngs)
?f1<-(manual_id-node-word-root-tam ?id1 ? ?w1 - ? - ?)
(test (member$ ?w1 $?def_mngs))
=>
	(retract ?f0 ?f1 )
        (if (< ?id1 ?id) then
;               (printout t ?id1 "  "?id " " ?m_id crlf)
                (bind $?m_mng  (create$ ?w1 $?m_mng))
        else
                (bind $?m_mng (create$ $?m_mng ?w1 ))
        )
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id1 ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_lt_grp_with_root
(declare (salience 600))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id ?h)
?f<-(anu_id-node-word-root-tam  ?a_id ? $?a ?w $?a1  Ora $? - Ora|yA - ?)
(id-Apertium_output 2 ?w hysics meM)
?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?w $?m1 - ? - ?)
(test (or (member$ ?anu_word $?a)(member$ ?anu_word $?a1)))
(test (< ?id1 ?m_id))
=>
        (retract ?f0 ?f2 )
        (if (< ?id1 ?id) then
                (bind $?m_mng  (create$ $?m ?w $?m1 $?m_mng))
        else
                (bind $?m_mng (create$ $?m_mng $?m ?w $?m1))
        )
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?anu_word $?m_mng ?id1 ?h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_rt_match_with_head
(declare (salience 550))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?mng ?id ?o_h)
(anu_id-node-word-root-tam ?a_id ? $?left ?o&Ora|yA $?a ?w $?a1 - Ora - ?)
(id-Apertium_output ?wid ?w $?)
(id-HM-source ?wid ?m_rt ?)
(id-node-word-root ? ? ?w1 ?m_rt)
?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?w1 $?m1 - ?m_rt - ?)
(test (member$ ?a_wrd $?left))
(test (> ?id1 ?m_id))
(not (got_rt_initial))
=>
        (retract ?f0 ?f2 )
        (bind $?m_mng  (create$ $?mng ?o_h $?m ?w1 $?m1))
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m_mng ?id1 ?o_h))
        (assert (got_rt_initial))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;same word of man and anu --- prAkqwika 
;viBinna prAkqwika pariGatanAoM meM 
(defrule get_Ora_rt_match
(declare (salience 550))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?mng ?id ?o_h)
(anu_id-node-word-root-tam ?a_id ? $?left ?o&Ora|yA $?a ?w $?a1 - Ora - ?)
(id-Apertium_output ? ?w $?)
?f2<-(manual_id-node-word-root-tam ?id1 ? $?m ?w $?m1 - ? - ?)
(test (member$ ?a_wrd $?left))
(test (> ?id1 ?m_id))
(not (got_rt_initial))
=>
	(retract ?f0 ?f2 )
	(bind $?m_mng  (create$ $?mng ?o_h $?m ?w $?m1))
	(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m_mng ?id1 ?o_h))
	(assert (got_rt_initial))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;their -- unake - inakI
(defrule get_Ora_rt_grp_with_word
(declare (salience 640))
?f0<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m ?o_h $?m1 ?id1 ?o_h)
(anu_id-node-word-root-tam ?a_id ? $?left ?o&Ora|yA $?a ?w $?a1 - Ora - ?)
(id-Apertium_output ?wid ?w)
(id-org_wrd-root-dbase_name-mng ?wid ? ?root provision_word_gdbm $?def_mngs)
?f1<-(manual_id-node-word-root-tam ?id ? ?w1 - ? - ?)
(test (member$ ?w1 $?def_mngs))
(test (member$ ?a_wrd $?left))
=>
        (retract ?f0 ?f1 )
        (if (< ?id1 ?id) then
                (bind $?m_mng  (create$ $?m1 ?w1))
        else
                (bind $?m_mng (create$ ?w1 $?m1 ))
        )
	(assert (eng_root-anu_mng-sep-man_mng ?root ?w - ?w1))
        (assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m ?o_h $?m_mng ?id ?o_h))
        (printout ?*alg_file* "(mid-aid-r_name-a_mng-m_mng      "?a_id" "?m_id" get_Ora_lt_grph  "$?m_mng")" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_rt_grp_with_root
(declare (salience 540))
?f<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m ?o_h $?m1 ?id1 ?o_h)
(anu_id-node-word-root-tam ?a_id ? $?left ?o&Ora|yA $?a ?w $?a1 - Ora - ?)
(id-Apertium_output ?wid ?w $?)
(id-HM-source ?wid ?a_rt ?)
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root ? $?def_mngs)
(test (member$ ?a_wrd $?left))
?f2<-(manual_id-node-word-root-tam ?id ? $?m_mng - ?m_rt - ?)
(test (member$ ?m_rt $?def_mngs))
=>
	(retract ?f ?f2 )
	(bind $?m_mng (create$ $?m1 $?m_mng)) 
	(assert (man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m ?o_h $?m_mng ?id ?o_h))
	(assert (eng_root-anu_rt-man_rt ?root ?a_rt ?m_rt))
)		
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_Ora_grp
(declare (salience 500))
?f2<-(manual_id-node-word-root-tam ?m_id ? ?o_h - ?o_h - -)
?f<-(man_head-anu_word-Ora_grp-Ora_grp_id-Ora ?m_id ?a_wrd $?m_mng ?id1 ?o_h)
?f1<-(anu_id-node-word-root-tam ?a_id ? $?a_mng - Ora|yA - ?)
(test (member$ ?a_wrd $?a_mng))
=>
	(retract ?f ?f1 ?f2)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))	
)
;-------------------------------------------------------------------------------------------------------------------------
;BOwikI -  BOwikI kA
(defrule get_match_for_np_head
(declare (salience 450))
?f0<-(anu_id-node-word-root-tam  ?a_id ? $?a_word - ?head - ?)
?f1<-(manual_id-node-word-root-tam ?m_id ? $?m_word - ?head  - ?)
=>
         (retract ?f0 ?f1)
         (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
)
;-------------------------------------------------------------------------------------------------------------------------
;Its Sanskrit equivalent is 'Bhautiki' that is used to refer to the study of the physical world.
;barAbara -  wulya
(defrule get_match_for_np_head_with_root
(declare (salience 440))
?f0<-(anu_id-node-word-root-tam  ?a_id ? $?a_word - ?head - ?)
(id-org_wrd-root-dbase_name-mng ?a_id ?w ?root ? $?def_mngs)
?f1<-(manual_id-node-word-root-tam ?m_id ? $?m_word - ?head1  - ?)
(test (member$ ?head1 $?def_mngs))
=>
	(retract ?f0 ?f1)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_word - ?m_id $?m_word))
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule get_some_match_fact
(declare (salience 440))
=>
        (assert (match_for_some_mng))
)
;-------------------------------------------------------------------------------------------------------------------------
; mote
; mote wOra_para - mote wOra para
(defrule np_with_some_same_mng
(declare (salience 450))
(match_for_some_mng)
?f<-(manual_id-node-word-root-tam ?m_id ? $?m ?wrd $?m1 - ? - ?)
?f1<-(anu_id-node-word-root-tam  ?a_id ?  $?a ?wrd $?a1 - ? - ?)
(id-Apertium_output ? ?wrd $?)
=>
        (bind $?m_mng (create$ $?m ?wrd $?m1))
        (bind $?a_mng (create$ $?a ?wrd $?a1))
        (retract ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
)
;-------------------------------------------------------------------------------------------------------------------------
;Binna Binna  - viviXa 
(defrule np_with_some_same_mng_with_root
(declare (salience 450))
(match_for_some_mng)
?f1<-(anu_id-node-word-root-tam  ?a_id ?  $?a ?wrd $?a1 - ? - ?)
(id-Apertium_output ?wid ?wrd $?w)
(id-org_wrd-root-dbase_name-mng ?wid ? ?root ? $?def_mngs)
?f<-(manual_id-node-word-root-tam ?m_id ? $?m ?wrd1 $?m1 - ? - ?)
(id-node-word-root ? ? ?wrd1 ?m_rt)
(test (member$ ?m_rt $?def_mngs))
=>
        (bind $?m_mng (create$ $?m ?wrd1 $?m1))
        (bind $?a_mng (create$ $?a ?wrd $?a1))
        (retract ?f ?f1)
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?a_id  $?a_mng - ?m_id $?m_mng))
	(assert (eng_root-anu_mng-sep-man_mng ?root ?wrd $?w - ?wrd1))	
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule default_fact
(declare (salience 100))
=>
        (assert (run_default_rules))
)
;-------------------------------------------------------------------------------------------------------------------------
;varNana kara sakawe hEM -- anu
;rUpa meM kara sakawe hEM -- man
;varNana kara sakawe hEM  -- varNana rUpa meM kara sakawe hEM 
(defrule get_rem_man_grp
(declare (salience 450))
(run_default_rules)
?f<-(manual_id-node-word-root-tam ?id ? $?a ?w $?a1 - ? - ?)
;(id-node-word-root ? ? ?w ?)
(not (anu_id-node-word-root-tam $?))
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng)
=>
	(retract ?f ?f1)
	(if (> ?mid ?id) then
		(bind $?m_mng (create$ $?a ?w $?a1 $?m_mng))
	else
		(bind $?m_mng (create$ $?m_mng  $?a ?w $?a1))
	)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng))
)
;-------------------------------------------------------------------------------------------------------------------------
;BOwika - SArIrika
(defrule get_rem_man_grp_with_root_with_head
(declare (salience 440))
(run_default_rules)
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng)
?f2<-(id-Apertium_output ?wid ?w $?)
(id-HM-source ?wid ?a_rt ?)
(id-org_wrd-root-dbase_name-mng ?wid ? ?root ? $?def_mngs)
?f<-(manual_id-node-word-root-tam ?id ? $?a - ?m_rt - ?)
(test (member$ ?m_rt $?def_mngs))
=>
        (retract ?f ?f1 ?f2)
        (if (> ?mid ?id) then
                (bind $?m_mng (create$ $?a $?m_mng))
        else
                (bind $?m_mng (create$ $?m_mng  $?a))
        )
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng))
	(assert (eng_root-anu_rt-man_rt ?root ?a_rt ?m_rt))
)
;-------------------------------------------------------------------------------------------------------------------------
;This led to the development of a radically new theory( Quantum Mechanics) to deal with atomic and molecular phenomena.
;naye  -  nae siXxAMwa
(defrule get_rem_man_grp_with_root
(declare (salience 440))
(run_default_rules)
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng)
?f2<-(id-Apertium_output ?wid ?w)
(id-HM-source ?wid ?a_rt ?)
(id-org_wrd-root-dbase_name-mng ?wid ? ?root ? $?def_mngs)
(id-node-word-root ? ? ?w1 ?m_rt)
?f<-(manual_id-node-word-root-tam ?id ? $?a ?w1 $?a1 - ?r - ?v)
(test (member$ ?m_rt $?def_mngs))
=>
        (retract ?f ?f1 ?f2)
        (if (> ?mid ?id) then
		(bind $?m_mng (create$ $?a ?w1 $?a1 $?m_mng))
;		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid ?w1 $?m_mng))
        else
		(bind $?m_mng (create$ $?m_mng $?a ?w1 $?a1))
;		(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng ?w1))
        )
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?m ?w $?m1 - ?mid $?m_mng))
        (assert (eng_root-anu_rt-man_rt ?root ?a_rt ?m_rt))
)
;-------------------------------------------------------------------------------------------------------------------------
