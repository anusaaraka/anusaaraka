(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;----------------------------------------------------------------------------------------------------------
(defrule retract_aux_ids
(declare (salience 500))
?f1<-(pada_info (group_head_id ?h)(group_cat VP) (group_ids $?d ?id $?d1))
?f2<-(id-Apertium_output ?id $?)
(test (neq ?id ?h))
=>
	(retract ?f2)
	(modify ?f1 (group_ids $?d $?d1))
)
;----------------------------------------------------------------------------------------------------------
(defrule del_man_fact
(declare (salience 450))
?f0<-(manual_id-node-word-root-tam ?id ?n - $?)
=>
	(retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
(defrule del_grp_fact
(declare (salience 450))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid )
=>
        (retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
(defrule del_grp_fact1
(declare (salience 450))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid - )
=>
        (retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena. 
;varNana kara sakawe hEM  -- varNana rUpa meM kara sakawe hEM
(defrule get_verb_align
(declare (salience 400))
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a_mng - ?mid $?m_mng)
?f0<- (id-Apertium_output ?aid $?a_mng)
?f1<-(pada_info (group_head_id ?aid) (group_cat VP)(group_ids ?aid))
?f2<-(manual_id-node-word-root-tam ?mid VGF $?)
=>
 	(retract ?f ?f1 ?f2 ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?a_mng - ?aid $?m_mng))
)
;----------------------------------------------------------------------------------------------------------
;hama -  hama
(defrule get_one_word_match
(declare (salience 350))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid ?a - ?mid ?m )
?f3<-(id-Apertium_output ?wid ?a)
?f2<-(pada_info (group_head_id ?aid)(group_ids $?d ?wid $?d1 ))
?f1<-(manual_id-node-word-root-tam ? ? ?m - ? - ?)
=>
	(retract ?f0 ?f3 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?a - ?wid ?m))
	(if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule get_one_word_match1
(declare (salience 340))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a - ?mid $?a )
?f3<-(id-Apertium_output ?wid $?a)
?f2<-(pada_info (group_head_id ?aid)(group_ids $?d ?wid $?d1 ))
?f1<-(manual_id-node-word-root-tam ? ? $?a - ? - ?)
=>
        (retract ?f0 ?f3 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a - ?wid $?a))
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;kuCa saMkalpanAez Ora niyama
(defrule get_Ora_word_align
(declare (salience 330))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w&Ora $?a1 - ?mid $?m ?w1&Ora|waWA|evaM $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 $?n1 - ?r - ?s)
=>
        (retract ?f0 ?f ?f1 ?f2)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a - ?mid $?m))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a1 - ?mid $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?id ?no $?n $?n1 - ?r - ?s))
)
;----------------------------------------------------------------------------------------------------------
;The area has got the digamber jain temple which houses the birds hospital.
;area <==> kRewra "ke pAsa"  <==>  kRewra "meM"
(defrule get_word_align_with_vib
(declare (salience 320))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?w1)
(id-node-word-root ? ? ?w ?h)
?f1<-(manual_id-node-word-root-tam ?id ?n  $?mng ?w $?mng1 - ?h - ?v)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
=>
	(retract ?f0 ?f ?f1)
        (bind $?a_mng (create$ ?w $?w1))
        (bind $?m_mng (create$ ?w $?mng1))
	(bind $?a1 (subseq$ $?a1 (+ (length $?w1) 1) (length $?a1)))
	(bind $?m1 (subseq$ $?m1 (+ (length $?mng1) 1) (length $?m1)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?id ?n  $?mng - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;prakatIkaraNa ke - aBivyakwi ke
(defrule get_word_align_with_vib_with_root
(declare (salience 310))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f<-(id-Apertium_output ?wid ?w $?vib)
(id-org_wrd-root-dbase_name-mng ?wid ? ? ? $?def_mngs)
(id-node-word-root ? ? ?w1 ?h)
?f1<-(manual_id-node-word-root-tam ?id ?n  $?mng ?w1 $?mng1 - ?h - ?v)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(test (member$ ?h $?def_mngs))
=>
        (retract ?f0 ?f ?f1)
        (bind $?a_mng (create$ ?w $?vib))
        (bind $?m_mng (create$ ?w1 $?mng1))
        (bind $?a1 (subseq$ $?a1 (+ (length $?vib) 1) (length $?a1)))
        (bind $?m1 (subseq$ $?m1 (+ (length $?mng1) 1) (length $?m1)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?n  $?mng - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_word_align
(declare (salience 300))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(id-node-word-root ? ? ?w ?root)
?f1<-(manual_id-node-word-root-tam ?mid1 ?no $?n ?w $?n1 - ?h - ?v)
(test (neq ?root ?h))
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?mid1 ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;their -- unake - inakI
;Binna Binna -  viviXa
(defrule get_word_align_with_word_fact
(declare (salience 290))
(eng_root-anu_mng-sep-man_mng ? $?wrd - $?w1)
;?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?wrd $?a1 - ?mid $?m $?w1 $?m1)
?f<-(id-Apertium_output ?wid $?wrd)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
?f1<-(manual_id-node-word-root-tam ?mid1 ?no $?n $?w1 $?n1 - ?h - ?v)
=>
        (retract ?f0 ?f ?f1)
;        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?wrd - ?wid $?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?mid1 ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
;alaga - viBinna
(defrule get_word_align_with_root
(declare (salience 280))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(id-org_wrd-root-dbase_name-mng ?wid ?word ?root ? $?def_mngs)
(id-node-word-root ? ? ?w1 ?m_rt)
?f1<-(manual_id-node-word-root-tam ?mid1 ?no $?n ?w1 $?n1 - ?h - ?v)
(test (member$ ?m_rt $?def_mngs))
=>
	(retract ?f0 ?f ?f1)	
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?mid1 ?no $?n $?n1 - ?h - ?v))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_default_fact
(declare (salience 100))
=>
	(assert (default_fact))
)
;----------------------------------------------------------------------------------------------------------
;saMkRipwa rUpa meM -  saMkRipwa
;The scope of physics is described briefly in the next section.
(defrule defalt_word_match_with_vib
(declare (salience 110))
(default_fact)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?vib $?a1 - ?mid $?m ?w $?m1)
?f<-(id-Apertium_output ?wid ?w $?vib)
(id-node-word-root ? ? ?w ?m_rt)
?f1<-(manual_id-node-word-root-tam ?mid1 ?no ?w - ? - ?v)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
=>
        (retract ?f0 ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w $?vib - ?wid  ?w))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
; if "anu string" is part of "man string" then align
;pariGatanA meM - pariGatanAoM meM  ;  pariGatanA  -  pariGatanAoM kI
(defrule defalt_word_str_match_with_vib
(declare (salience 100))
(default_fact)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
(id-node-word-root ? ? ?w1 ?m_rt)
?f1<-(manual_id-node-word-root-tam ?mid1 ?no $?n ?w1 $?vib1 - ?m_rt - ?v)
?f<-(id-Apertium_output ?wid ?w $?vib)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(test (eq (string-to-field (sub-string 1 (length ?w) ?w1)) ?w))
=>
	(retract ?f0 ?f ?f1)
        (bind $?a_mng (create$ ?w $?vib))
        (bind $?m_mng (create$ ?w1 $?vib1))
        (bind $?a1 (subseq$ $?a1 (+ (length $?vib) 1) (length $?a1)))
        (bind $?m1 (subseq$ $?m1 (+ (length $?vib1) 1) (length $?m1)))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?a_mng - ?wid $?m_mng))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?mid1 ?no  $?n - ?m_rt - ?v))
)
;----------------------------------------------------------------------------------------------------------
;A precise definition of this discipline is neither possible nor necessary .
;na hI - na hI   ; na wo - na wo
(defrule default_word_match
(declare (salience 90))
(default_fact)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?wrd $?a1 - ?mid $?b $?wrd $?b1)
?f3<-(id-Apertium_output ?wid $?wrd)
?f2<-(pada_info (group_ids $?d ?wid $?d1 ))
?f1<-(manual_id-node-word-root-tam ? ? $?wrd - ? - ?)
=>
        (retract ?f0 ?f3 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid $?wrd - ?wid $?wrd))
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?b  $?b1))
)
;----------------------------------------------------------------------------------------------------------
;saMkalpanAez - saMkalpanAoM
(defrule defalt_word_match1
(declare (salience 80))
(default_fact)
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f<-(id-Apertium_output ?wid ?w)
(id-HM-source ?wid ?a_rt ?)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(id-node-word-root ? ? ?w1 ?m_rt)
?f1<-(manual_id-node-word-root-tam ? ? ?w1  - ?m_rt - ?)
(test (eq (string-to-field (sub-string 1 (length ?a_rt) ?w1)) ?a_rt))
=>
        (retract ?f0 ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid $?a $?a1 - ?mid $?m $?m1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_man_fact_already_grouped
(declare (salience 70))
(default_fact)
(anu_id-anu_mng-sep-man_id-man_mng ? $? - ?mid $? ?w $?)
?f0<-(manual_id-node-word-root-tam ?id ?n $?m ?w $?m1 - ?h - ?s)
=>
	(retract ?f0)
	(assert (manual_id-node-word-root-tam ?id ?n $?m $?m1 - ?h - ?s))
)
;----------------------------------------------------------------------------------------------------------
;usakI -  isakA
(defrule get_man_mng
(declare (salience 60))
(default_fact)
;?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id ?w - ?mid)
?f1<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id $?a ?w $?a1 - ?mid)
?f<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(id-org_wrd-root-dbase_name-mng ?wid ? ? ? $?def_mngs)
(id-node-word-root ?  ? ?w1 ?m_rt)
?f0<-(manual_id-node-word-root-tam ? ? ?w1 - ?m_rt - ?)
(test (or (member$ ?m_rt $?def_mngs)(member$ ?w1 $?def_mngs)))
=>
	(retract ?f1 ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?a_id $?a $?a1 - ?mid))
)
;----------------------------------------------------------------------------------------------------------
;kAyApalata kA -  krAMwi kA
;This causes a major upheaval in science.
(defrule get_man_mng_with_vib_using_order
(declare (salience 60))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f0<-(id-Apertium_output ?hid ?w ?vib)
?f2<-(pada_info (group_head_id ?hid) (group_ids $?d ?hid $?d1)(vibakthi ?vib))
(anu_id-anu_mng-sep-man_id-man_mng ?b $?amng - ?b $?mng)
(hindi_id_order $? ?hid ?b $?)
(manual_hin_sen $? ?w1 ?vib $?mng $?)
(id-node-word-root ? ? ?w1 ?m_rt)
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 ?vib  - ?m_rt - ?s)
=>
	(retract ?f ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?hid ?w ?vib - ?hid ?w1 ?vib))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
	(assert (manual_id-node-word-root-tam ?id ?no $?n  - ?m_rt - ?s))
	(bind $?a1 (subseq$ $?a1 (+ (length ?vib) 1) (length $?a1)))
        (bind $?m1 (subseq$ $?m1 (+ (length ?vib) 1) (length $?m1)))
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m  $?m1))
)
;----------------------------------------------------------------------------------------------------------
;This causes a major upheaval in science.
;muKya -  mahAna
(defrule get_man_mng_using_order
(declare (salience 55))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid $?m ?w1 $?m1)
?f0<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(anu_id-anu_mng-sep-man_id-man_mng ?b $?amng - ?b $?mng)
(hindi_id_order $? ?wid ?b $?)
(manual_hin_sen $? ?w1 $?mng $?)
(id-node-word-root ? ? ?w1 ?)
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 $?n1  - ?m_rt - ?s)
=>
        (retract ?f ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?no $?n  $?n1 - ?m_rt - ?s))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid $?m  $?m1))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_man_mng_using_order1
(declare (salience 55))
(default_fact)
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a ?w $?a1 - ?mid)
?f0<-(id-Apertium_output ?wid ?w)
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(hindi_id_order $? ?wid ?b $?)
(anu_id-anu_mng-sep-man_id-man_mng ?b $?a_mng - ?b $?mng)
(manual_hin_sen $? ?w1 $?mng $?)
(id-node-word-root ? ? ?w1 ?)
?f1<-(manual_id-node-word-root-tam ?id ?no $?n ?w1 $?n1  - ?m_rt - ?s)
=>
        (retract ?f ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid ?w1))
        (if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
        (assert (manual_id-node-word-root-tam ?id ?no $?n  $?n1 - ?m_rt - ?s))
        (assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng ?aid $?a $?a1 - ?mid))
)
;----------------------------------------------------------------------------------------------------------
;7 eka -  2
(defrule align
(declare (salience 50))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  ?w - ?mid )
?f<-(id-Apertium_output ?wid ?w )
?f2<-(pada_info (group_ids $?d ?wid $?d1))
(not (manual_id-node-word-root-tam ?mid $?m))
=>
	(retract ?f0 ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid ?w - ?wid  -))
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0)) then
        	(retract ?f2)
	else
        	(modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
;yaha -  ye [ prekRaNa hI ]
;This causes a major upheaval in science.
(defrule get_extra_mng
(declare (salience 50))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid  $?wrd)
(not (id-Apertium_output ?aid))
?f<-(manual_id-node-word-root-tam ?mid ? $?wrd - ?r - ?s)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?mid $?a_mng - ?mid $?mng)
(manual_hin_sen $? $?mng $?wrd $?)
=>
	(retract ?f ?f0 ?f1)
	(bind $?m_mng (create$ $?mng [ $?wrd ]))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?mid  $?a_mng - ?mid $?m_mng))
)
;----------------------------------------------------------------------------------------------------------
;kRewra ==  [ kAryakRewra - ] viswAra kA
;The scope of physics is described briefly in the next section. 
(defrule get_extra_mng1
(declare (salience 50))
?f0<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng  ?aid  - ?mid  $?wrd)
(not (id-Apertium_output ?aid))
?f<-(manual_id-node-word-root-tam ?id ? $?wrd - ?r - ?s)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?mid $?a_mng - ?mid $?mng)
(manual_hin_sen $? $?wrd $?mng $?)
=>
        (retract ?f ?f0 ?f1)
        (bind $?m_mng (create$ [ $?wrd ] $?mng))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?mid  $?a_mng - ?mid $?m_mng))
)
;----------------------------------------------------------------------------------------------------------
;na hI ==  [ Ora ] na hI
;A precise definition of this discipline is neither possible nor necessary.
(defrule get_extra_mng2
(declare (salience 50))
?f0<-(manual_id-node-word-root-tam ?id ? $?w - ? - -)
(not (anu_id-a_grp_mng-sep-manual_id-m_grp_mng $?))
(manual_hin_sen $? $?w $?mng $?)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?mid $?a_mng - ?mid $?mng)
=>
	(retract ?f0 ?f1)
	(bind $?m_mng (create$ [ $?w ] $?mng))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?mid  $?a_mng - ?mid $?m_mng))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_fact_for_no_mng
(default_fact)
?f<-(id-Apertium_output ?wid)
(not (anu_id-a_grp_mng-sep-manual_id-m_grp_mng $?))
(not (manual_id-node-word-root-tam $?))
?f2<-(pada_info (group_ids $?d ?wid $?d1))
=>
	(retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?wid - - ?wid -))
	(if (and (eq (length $?d) 0)(eq (length $?d1) 0)) then
                (retract ?f2)
        else
                (modify ?f2 (group_ids $?d $?d1))
        )
)
;----------------------------------------------------------------------------------------------------------
	

