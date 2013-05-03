;This file is written by Shirisha Manju (08-4-13)


(defrule generate_cntrl_fact
(declare (salience 1001))
(manual_id-mng ?mid $?man_mng)
=>
        (assert (mng_to_be_aligned ?mid))
)
;-------------------------------------------------------------------------------------------------
(defrule rm_ctrl_fact_for_aligned_facts
(declare (salience 990))
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng1)(mng_has_been_merged ?mid))
?f0<-(mng_to_be_aligned ?mid)
?f1<-(hindi_id_order $?pre ?aid $?post)
=>
        (retract ?f0 ?f1)
	(assert (hindi_id_order $?pre $?post))
)
;-------------------------------------------------------------------------------------------------
(defrule get_left_out_mngs
(declare (salience 980))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
?f<-(left_out_mngs $?ids)
(test (eq (member$ ?mid $?ids) FALSE))
=>
        (retract ?f ?f0)
        (assert (left_out_mngs $?ids ?mid))
)
;-------------------------------------------------------------------------------------------------
(defrule get_left_out_words
(declare (salience 970))
?f1<-(hindi_id_order $?pre ?aid $?post)
?f<-(left_out_words $?word_ids)
(test (eq (member$ ?aid $?word_ids) FALSE))
=>
        (retract ?f ?f1)
        (assert (left_out_words $?word_ids ?aid))
	(assert (hindi_id_order $?pre $?post))
)
;-------------------------------------------------------------------------------------------------
;The other two forces, as we shall see, operate only at nuclear scales.
(defrule check_correctness_for_newly_added_word
(declare (salience 965))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng 2001 ?mng - ?mid ?mng1)
(test (neq ?mng ?mng1))
?f<-(left_out_mngs $?ids)
?f1<-(left_out_words $?word_ids)
(test (eq (member$ ?mid $?ids) FALSE))
=>	
	(retract ?f ?f0 ?f1)
	(assert (mng_to_be_aligned ?mid))
	(assert (left_out_words $?word_ids 2001))
)
;-------------------------------------------------------------------------------------------------
;yaha wo kevala iwanA bawAwA hE ki vaswuoM xvArA arjiwa vijAwIya AveSa eka - xUsare ke praBAva ko niRPala kara xewe hEM  @PUNCT-Dot
;It just tells us that unlike charges acquired by the objects neutralise or nullify each other's effect. 
(defrule check_correctness_for_wo
(declare (salience 965))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid wo)
(test (eq (member$ $?mng (create$ wo)) FALSE))
?f1<-(left_out_words $?word_ids)
=>
        (retract ?f0 ?f1)
	(assert (mng_to_be_aligned ?mid))
	(assert (left_out_words $?word_ids ?aid))
)
;-------------------------------------------------------------------------------------------------
;Going from this intuitive notion to the proper scientific concept of force is not a trivial matter.isa sahajAnuBUwa XAraNA se calakara bala kI sahI vEjFAnika safkalpanA waka pahuzcanA sahaja kArya nahIM hE.
;You might have also heard that this is due to generation of static electricity. Apane yaha BI sunA hogA ki yaha vExyuwa AveSa   (sWiravExyuwa )  ke uwpanna hone ke kAraNa hE.
(defrule check_correctness_for_is_verb
(declare (salience 960))
?f<-(left_out_mngs $?pre ?id $?post)
;?f0<-(mng_to_be_aligned ?id)
(manual_id-mng ?id hE)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid hE - ?mid $?mng)
(id-word ?aid is)
(test (and (neq $?mng (create$ hE))(neq $?mng (create$ howI hE))(neq $?mng (create$ howA hEM))(neq $?mng (create$ howe hEM))(neq $?mng (create$ howA hE))))
(manual_id-mng ?mid $?mng)
;(not (left_out_words $? ?aid $?))
=>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid hE - ?id hE))
	(assert (mng_to_be_aligned  ?mid $?mng))
	(assert (left_out_mngs $?pre ?mid $?post))
)
;-------------------------------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena. mote wOra para hama BOwikI kA [varNana] prakqwi ke mUlaBUwa niyamoM kA aXyayana waWA viBinna prAkqwika pariGatanAoM meM inakI aBivyakwi ke rUpa meM [kara sakawe hEM].
(defrule check_correctness_for_kara_verb
(declare (salience 950))
?f<-(left_out_mngs ?id)
(manual_id-mng ?id $?mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid kara $?mng1)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?mng kara)
(id-root ?aid ?root)
(not (left_out_words $? ?aid $?))
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?id $?mng kara $?mng1))
)
;-------------------------------------------------------------------------------------------------
;In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. -- BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI [vyAKyA] kuCa safkalpanAoM evaM niyamoM ke paxoM meM [karane kA] prayAsa karawe hEM
(defrule check_correctness_for_kara_verb_with_root
(declare (salience 940))
?f<-(left_out_mngs ?id)
(manual_id-mng ?id $?mng)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid ?m $?mng1)
(manual_id-mapped_id ?map_id ?mid)
(id-node-word-root ?map_id ? ?m - kara)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?id $?mng ?m $?mng1))
)
;-------------------------------------------------------------------------------------------------
(defrule check_correctness_for_kara_verb_with_wrong_align
(declare (salience 940))
(left_out_mngs)
?f<-(anu_id-anu_mng-sep-man_id-man_mng ? $? - ?mid ?mng)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? ?mng kara)
(id-node-word-root ?map_id ? ?m - kara)
(manual_id-mapped_id ?map_id ?mid)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid ?m $?mng1)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid ?mng ?m $?mng1))
)
;-------------------------------------------------------------------------------------------------
;The experiments also demonstrated that the charges are transferred from the rods to the pith balls on contact.
;ye prayoga yaha BI praxarSiwa karawe hEM ki sparSa karane para  @PUNCT-Comma  AveSa Cada se sarakaNde kI golI meM sWAnAnwariwa ho jAwe hEM
(defrule check_correctness_for_that
(declare (salience 950))
?f<-(left_out_mngs $?pre ?id $?pos)
(manual_id-mng ?id ki)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid ?amng - ?mid ?mng)
(test (neq ?mng ki))
(id-word ?aid that)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?amng - ?id ki))
	(assert (left_out_mngs $?pre ?mid $?pos))
	(assert (mng_to_be_aligned ?mid))
)
;-------------------------------------------------------------------------------------------------
;"It plays a key role in the [large-scale] phenomena of the universe, such as formation and evolution of stars, galaxies and galactic clusters. "
;viSva kI [bqhaw swara kI] pariGatanAoM jEse wAroM  @PUNCT-Comma  manxAkiniyoM waWA manxAkinIya gucCoM ke banane waWA vikasiwa hone meM isa bala kI pramuKa BUmikA howI hE  @PUNCT-Dot
(defrule check_for_hypenated_left_mng
(declare (salience 940))
(id-word ?aid ?word)
(test (eq (numberp ?word) FALSE))
(test (neq (str-index "-" ?word) FALSE))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?mng1)
(manual_id-mng ?mid $?mng1)
(manual_id-mapped_id ?map_id ?mid)
(id-node-word-root ?map_id ? $? - $?root)
(id-right_word-possible_mngs ?aid ? $?pos_mngs)
(test (member$ $?root $?pos_mngs))
?f0<-(left_out_mngs $?pre ?id1&:(=(- ?mid 1) ?id1) $?pos)
(manual_id-mng ?id1&:(=(- ?mid 1) ?id1) $?lw)
(manual_id-mapped_id ?map_id1 ?id1)
(id-node-word-root ?map_id1 ? $? - $?r)
(id-left_word-possible_mngs ?aid ? $?pos_mngs1)
(test (member$ $?r $?pos_mngs1))
=>
	(retract ?f ?f0)
	(assert (left_out_mngs $?pre $?pos))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?lw $?mng1))
)
;-------------------------------------------------------------------------------------------------
(defrule check_for_hypenated_right_mng
(declare (salience 940))
(id-word ?aid ?word)
(test (eq (numberp ?word) FALSE))
(test (neq (str-index "-" ?word) FALSE))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?mng1)
(manual_id-mng ?mid $?mng1)
(manual_id-mapped_id ?map_id ?mid)
(id-node-word-root ?map_id ? $? - $?root)
(id-left_word-possible_mngs ?aid ? $?pos_mngs)
(test (member$ $?root $?pos_mngs))
(manual_id-mng ?id1&:(=(+ ?mid 1) ?id1) $?rw)
?f0<-(left_out_mngs $?pre ?id1&:(=(+ ?mid 1) ?id1) $?pos)
(manual_id-mapped_id ?map_id1 ?id1)
(id-node-word-root ?map_id1 ? $? - $?r)
(id-right_word-possible_mngs ?aid ? $?pos_mngs1)
(test (member$ $?r $?pos_mngs1))
=>
        (retract ?f ?f0 )
        (assert (left_out_mngs $?pre $?pos))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?mng1 $?rw))
)
;-------------------------------------------------------------------------------------------------
;But only a few years later, in 1938, Hahn and Meitner discovered the phenomenon of neutron-induced fission of uranium, which would serve as the basis of nuclear power reactors and nuclear weapons.
(defrule check_for_hypenated_wrong_mng
(declare (salience 940))
(id-word ?aid ?word)
(test (eq (numberp ?word) FALSE))
(test (neq (str-index "-" ?word) FALSE))
?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?mng1)
(not (id-org_wrd-root-dbase_name-mng ? ?word ? ? $?mng1));vijFAna kyA hE  @PUNCT-Comma  evaM [waWAkaWiwa] vEjFAnika viXi kyA howI hE ? What is Science and what is the [so-called] Scientific Method?
(manual_id-mng ?mid $?mng1)
(manual_id-mapped_id ?map_id ?mid)
(id-node-word-root ?map_id ? $?w - $?root)
(id-left_word-possible_mngs ?aid ? $?pos_mngs)
(id-right_word-possible_mngs ?aid ? $?pos_mngs1)
(test (and (eq (member$ $?root $?pos_mngs) FALSE)(eq (member$ $?root $?pos_mngs1) FALSE)))
(not (removed_hyphen_mng ?aid ?mid))
=>
        (retract ?f )
	(assert (mng_to_be_aligned ?mid))
	(assert (removed_hyphen_mng ?aid ?mid))
)
;-------------------------------------------------------------------------------------------------
;But only a few years later, in 1938, Hahn and Meitner discovered the phenomenon of [neutron-induced] fission of uranium, which would serve as the basis of nuclear power reactors and nuclear weapons. 
;paranwu kevala kuCa hI varRoM ke paScAw varRa 1938 meM hena waWA mAitanara ne [nyUtroYna preriwa] yUreniyama nABika ke viKaNdana se sambanXiwa pariGatanA kI Koja kI, jisane ANvika SaswroM waWA ANvika Sakwi riektaroM ke AXAra kI BAnwi kArya kiyA.
(defrule check_for_hypenated_mng_with_right
(declare (salience 930))
(id-word ?aid ?word)
(test (eq (numberp ?word) FALSE))
(test (neq (str-index "-" ?word) FALSE))
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(manual_id-mng ?mid $?mng1)
?f<-(left_out_mngs $?mngs)
(manual_id-mapped_id ?map_id ?mid)
(id-node-word-root ?map_id ? $?w - $?root)
(id-right_word-possible_mngs ?aid ? $?pos_mngs)
(test (member$ $?root $?pos_mngs))
(manual_id-mng ?id1&:(=(- ?mid 1) ?id1) $?lw)
(test (and (member$ ?id1 $?mngs)(member$ ?mid $?mngs)))
=>
        (retract ?f)
	(bind $?mngs (delete-member$ $?mngs ?mid)) 
	(bind $?mngs (delete-member$ $?mngs ?id1)) 
        (assert (left_out_mngs $?mngs))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?word - ?mid $?lw $?mng1))
)
;-------------------------------------------------------------------------------------------------
;However, the glass rod and wool attracted [each other].
;paranwu kAzca kI Cada waWA Una [eka - xUsare] ko AkarRiwa karawe hEM.
(defrule check_correctness_for_multi_word
(declare (salience 920))
(id-multi_word_expression-dbase_name-mng ? $?words ? $?mng)
(multi_word_expression-grp_ids $?words $?ids)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng ?)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid1 - - ?mid1 $?m)
(test (member$ ?aid1 $?ids))
=>	
	(retract ?f0)
	(assert (mng_to_be_aligned ?mid1))
	
)
;-------------------------------------------------------------------------------------------------
;awaH nirvAwa (aWavA sannikatawaH vAyu) eka [aparikRepI] mAXyama hE jisameM saBI varNa samAna cAla se gamana karawe hEM. 
;Thus, vacuum (or air approximately) is a [non-dispersive] medium in which all colors travel with the same speed.
(defrule restore_hyphen_mng
(declare (salience 910))
(removed_hyphen_mng ?aid ?mid)
?f0<-(left_out_mngs $?pre ?mid $?po)
(id-Apertium_output ?aid $?mng)
(manual_id-mng ?mid $?m_mng)  
=>
	(retract ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid  $?m_mng))
	(assert (left_out_mngs $?pre $?po))
)
;-------------------------------------------------------------------------------------------------
;We shall, in the present chapter, consider rotational motion about a fixed axis only.
(defrule check_for_correctness
(declare (salience 1000))
?f1<-(id-root-anu_mng-man_mng ?aid ?root $?mng - ?id)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1&:(=(- ?aid 1) ?aid1) $? - ?mid $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid2&:(=(+ ?aid 1) ?aid2) $? - ?mid1&:(=(+ ?mid 1) ?mid1) $?)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?id $?)
=>
       (retract ?f0 ?f1)
)

