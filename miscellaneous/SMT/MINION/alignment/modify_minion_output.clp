;This file is written by Shirisha Manju (08-4-13)

(defglobal ?*dic_fp*  = dic_fp)
(defglobal ?*dic_mng-file* = mng_fp)
(defglobal ?*exact-mng-file* = mng_fp1)
(defglobal ?*minion-mng-file* = mng_fp2)


(defrule print_comment
(declare (salience 2500))
=>
       (printout ?*dic_fp*  "------------- minion aligned meanings ---------------" crlf)
)
;-------------------------------------------------------------------------------------------------
;Suggested by Chaitanya Sir
(defrule get_light_verb_list
(declare (salience 2001))
(not (light_verbs $?))
=>
        (bind $?verbs (create$ do take make have cast give get let))
        (assert (light_verbs $?verbs ))
)
;-------------------------------------------------------------------------------------------------
(defrule generate_cntrl_fact
(declare (salience 2000))
(manual_id-mng ?mid $?man_mng)
=>
        (assert (mng_to_be_aligned ?mid))
)
;-------------------------------------------------------------------------------------------------
(defrule get_minion_aligned_mngs
(declare (salience 1500))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?m_mng)
(not (id-src-eng_wrds-anu_mng-man_mng ?aid $?))
(id-root ?aid ?root)
(manual_id-mapped_id ?mapped_id ?mid)
(id-HM-source ?aid $?a_root ?)
(manual_id-cat-word-root-vib-grp_ids ?mapped_id ? $? - $?m_root - $? - $? )
=>
	(assert (id-src-eng_wrds-anu_mng-man_mng ?aid minion ?root $?a_root - $?m_root))
)
;-------------------------------------------------------------------------------------------------
;The other two forces, as we shall see, operate only at nuclear scales. 
(defrule get_minion_aligned_mngs_for_new_word
(declare (salience 1490))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?anu_mng - ?mid $?m_mng)
(hindi_id_order $?hin_order)
(not (id-src-eng_wrds-anu_mng-man_mng ?aid $?))
(hin_pos-hin_mng-eng_ids-eng_words ?pos ? - -A-)
(test (eq (nth$ ?pos $?hin_order) ?aid))
=>
        (assert (id-src-eng_wrds-anu_mng-man_mng ?aid minion -A- $?anu_mng - $?m_mng))
)
;-------------------------------------------------------------------------------------------------
(defrule cp_of_hin_order
(declare (salience 1002))
(hindi_id_order $?order)
(not (hindi_id_order_tmp $?))
=>
	(assert (hindi_id_order_tmp $?order))
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
?f<-(id-src-eng_wrds-anu_mng-man_mng 2001 minion ? $?mng - $?mng1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng 2001 $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
?f1<-(left_out_mngs $?ids)
?f2<-(left_out_words $?word_ids)
(test (eq (member$ ?mid $?ids) FALSE))
=>	
	(retract ?f ?f0 ?f1 ?f2)
	(assert (mng_to_be_aligned ?mid))
	(assert (left_out_words $?word_ids 2001))
)
;-------------------------------------------------------------------------------------------------
;yaha wo kevala iwanA bawAwA hE ki vaswuoM xvArA arjiwa vijAwIya AveSa eka - xUsare ke praBAva ko niRPala kara xewe hEM  @PUNCT-Dot
;It just tells us that unlike charges acquired by the objects neutralise or nullify each other's effect. 
;The forces are not quite known fully but the state of motion is known.
(defrule check_correctness_for_wo
(declare (salience 965))
?f<-(id-src-eng_wrds-anu_mng-man_mng ?aid minion ? $?mng - wo)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid wo)
(test (eq (member$ $?mng (create$ wo)) FALSE))
?f1<-(left_out_words $?word_ids)
=>
        (retract ?f ?f0 ?f1)
	(assert (mng_to_be_aligned ?mid))
	(assert (left_out_words $?word_ids ?aid))
)
;-------------------------------------------------------------------------------------------------
;Going from this intuitive notion to the proper scientific concept of force is not a trivial matter.isa sahajAnuBUwa XAraNA se calakara bala kI sahI vEjFAnika safkalpanA waka pahuzcanA sahaja kArya nahIM hE. (need to check this sentence for w_align)
;You might have also heard that this is due to generation of static electricity. Apane yaha BI sunA hogA ki yaha vExyuwa AveSa   (sWiravExyuwa )  ke uwpanna hone ke kAraNa hE.
(defrule check_correctness_for_is_verb
(declare (salience 960))
?f<-(left_out_mngs $?pre ?id $?post)
(manual_id-mng ?id hE)
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?aid minion|single_verb ? hE - $?mng)
(id-word ?aid is)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid hE - ?mid $?mng)
(test (and (neq $?mng (create$ hE))(neq $?mng (create$ howI hE))(neq $?mng (create$ howA hEM))(neq $?mng (create$ howe hEM))(neq $?mng (create$ howA hE))))
;(manual_id-mng ?mid $?mng)
=>
	(retract ?f ?f1 ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid hE - ?id hE))
	(assert (mng_to_be_aligned  ?mid $?mng))
	(assert (left_out_mngs $?pre ?mid $?post))
)
;-------------------------------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena. mote wOra para hama BOwikI kA [varNana] prakqwi ke mUlaBUwa niyamoM kA aXyayana waWA viBinna prAkqwika pariGatanAoM meM inakI aBivyakwi ke rUpa meM [kara sakawe hEM].
(defrule check_correctness_for_kara_verb_with_dic
(declare (salience 950))
?f<-(left_out_mngs ?id)
(manual_id-mng ?id $?mng)
(id-src-eng_wrds-anu_mng-man_mng ?aid minion|single_verb ? $?amng - kara)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid kara $?mng1)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?mng kara)
(id-root ?aid ?root)
(not (left_out_words $? ?aid $?))
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?id $?mng kara $?mng1))
	(assert (id-root-corrected_mng ?aid ?root  $?mng kara ))
)
;-------------------------------------------------------------------------------------------------
;The result can be generalised to any number of forces. isa pariNAma kA vyApIkaraNa baloM kI kisI BI safKyA ke lie kiyA jA sakawA hE.
(defrule check_correctness_for_kara_verb_with_root
(declare (salience 940))
?f<-(left_out_mngs ?id)
(manual_id-mng ?id $?mng)
(manual_id-mapped_id ?mid ?id)
(not (man_id-word-possible_mngs ?mid $?))
(id-src-eng_wrds-anu_mng-man_mng ?aid minion|single_verb ? $?amng - kara)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid1 ?m $?mng1)
(manual_id-mapped_id ?id1 ?mid1)
(id-node-word-root ?id1 ? ?m - kara)
(id-root ?aid ?root)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?id $?mng ?m $?mng1))
	(assert (id-root-corrected_mng ?aid ?root  $?mng kara ))
)
;-------------------------------------------------------------------------------------------------
;In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. -- BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI [vyAKyA] kuCa safkalpanAoM evaM niyamoM ke paxoM meM [karane kA] prayAsa karawe hEM
;You can perform the following activity at home to experience such an effect.-- Apa isa prakAra ke praBAva kA anuBava apane Gara para nimnaliKiwa kriyAkalApa xvArA kara sakawe hEM 
(defrule check_correctness_for_kara_verb
(declare (salience 940))
?f<-(left_out_mngs ?id)
(manual_id-mng ?id $?mng)
(manual_id-mapped_id ?mid ?id)
(not (man_id-word-possible_mngs ?mid $?))
(id-src-eng_wrds-anu_mng-man_mng ?aid minion|single_verb ? $?amng - kara)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid1 kara $?mng1)
(id-root ?aid ?root)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?id $?mng kara $?mng1))
        (assert (id-root-corrected_mng ?aid ?root  $?mng kara ))
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
(id-root ?aid ?rt)
=>
	(retract ?f ?f0)
	(assert (left_out_mngs $?pre $?pos))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?lw $?mng1))
	(assert (id-root-corrected_mng ?aid ?rt  $?lw $?mng1))
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
(id-root ?aid ?rt)
=>
        (retract ?f ?f0 )
        (assert (left_out_mngs $?pre $?pos))
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - ?mid $?mng1 $?rw))
	(assert (id-root-corrected_mng ?aid ?rt  $?mng1 $?rw))
)
;-------------------------------------------------------------------------------------------------
;But only a few years later, in 1938, Hahn and Meitner discovered the phenomenon of neutron-induced fission of uranium, which would serve as the basis of nuclear power reactors and nuclear weapons.
(defrule check_for_hypenated_wrong_mng
(declare (salience 940))
(id-word ?aid ?word)
(test (eq (numberp ?word) FALSE))
(test (neq (str-index "-" ?word) FALSE))
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?aid minion|single_verb ? $?amng - $?mng1)
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
        (retract ?f ?f0)
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
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng ?)(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng))
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
;All of us [have the experience] of seeing a spark or hearing a crackle when we take off our synthetic clothes or sweater, particularly in dry weather. --hama saBI ko  @PUNCT-Comma  viSeRakara SuRka mOsama meM  @PUNCT-Comma  svetara aWavA saMSliRta vaswroM ko SarIra se uwArawe samaya cata - cata kI Xvani sunane aWavA cinagAriyAz xeKane kA [anuBava hogA]  @PUNCT-Dot
(defrule chk_for_light_verb_phrase
(declare (salience 900))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid ?mng $?m)
(id-word ?aid ?l_verb)
(light_verbs $? ?l_verb $?)
(hindi_id_order_tmp $? ?prev_id ?aid $?post)
?f<-(id-src-eng_wrds-anu_mng-man_mng ?prev_id minion|single_verb ? ?mng - $?)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?prev_id ?mng - ?mid1 $?)
(id-word ?prev_id ?word)
=>
	(retract ?f0 ?f)
	(assert (phrase_ids-mng ?aid ?prev_id  - ?mng $?m))
)
;-------------------------------------------------------------------------------------------------
;We can explain this phenomenon on the basis of electromagnetic induction.
;isa pariGatanA kI vyAKyA hama vixyuwa cumbakIya [preraNa ke AXAra para] kara sakawe hEM 
(defrule check_for_correctness
(declare (salience 800))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?m ?m1 $?m2)
(test (and(neq (length $?m) 0)(numberp ?mid)));Every object experiences this force due to every other object in the universe
(not (id-src-eng_wrds-anu_mng-man_mng ?aid exact $?));But our body is not strictly a rigid body.
(id-node-word-root ? ? ?m1 - ?root)
(id-HM-source ?id ?m1 ?)
?f<-(id-src-eng_wrds-anu_mng-man_mng ?id minion|single_verb ? $?mng1 - $?man)
(test (neq ?aid ?id));This was a problem even in Galileo's time.
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?id $? - ?mid1 $?)
?f1<-(left_out_mngs $?pre)
(not (id-word ?id are|is));Eddy currents are undesirable since they heat up the core and dissipate electrical energy in the form of heat.
=>
	(retract ?f0 ?f1 ?f)
	(assert (left_out_mngs $?pre ?mid1))
)
;-------------------------------------------------------------------------------------------------
(defrule print_anu_alignment_info
(declare (salience 10))
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?id exact ?eng_wrds $?anu_mng - $?man_mng)
(test (neq (length $?anu_mng) 0))
(para_id-sent_id-no_of_words    ?       ?sid    ?)
=>
        (printout ?*exact-mng-file*  ?eng_wrds"	"(implode$ $?anu_mng) "	"(implode$ $?man_mng) "	[ "?sid" ]"crlf)
	(assert (id_decided ?id))
)
;--------------------------------------------------------------------------------------------------------
(defrule print_dic_alignment_info
(declare (salience 9))
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?id dictionary ?eng_wrds $?anu_mng - $?man_mng)
(test (neq (length $?anu_mng) 0))
(para_id-sent_id-no_of_words    ?       ?sid    ?)
=>
        (printout ?*dic_mng-file* ?eng_wrds"	"(implode$ $?anu_mng) "	"(implode$ $?man_mng) "	[ "?sid" ]" crlf)
	(assert (id_decided ?id))
)
;--------------------------------------------------------------------------------------------------------
(defrule print_minion_alignment_info
(declare (salience 8))
(id-corrected_mngs ?aid $?amng - $?mmng)
(id-src-eng_wrds-anu_mng-man_mng ?aid ?src ?eng_wrds $?anu - $?man)
(para_id-sent_id-no_of_words    ?       ?sid    ?)
(not (id_decided ?aid))
=>
        (printout ?*minion-mng-file*  ?eng_wrds"	"(implode$ $?amng)"	"(implode$ $?mmng)"	[ "?sid" ]" crlf)
	(if (eq ?src single_verb) then
		(printout ?*dic_fp* ?eng_wrds" = "(implode$ $?man) " ---> [single verb alignment]" crlf)
	else
		(printout ?*dic_fp* ?eng_wrds" = "(implode$ $?man) crlf)
	)
)
;--------------------------------------------------------------------------------------------------------
;isa [bala] ko niRPala karane ke lie bAlikA ko kAra para gawi kI xiSA meM bAhya [bala] lagAnA padawA hE
(defrule del_minion_aligned_fact_with_same_mng
(declare (salience 7))
(id-src-eng_wrds-anu_mng-man_mng ?aid ? ?word $? - $?man)
(id-src-eng_wrds-anu_mng-man_mng ?aid1 ? ?word $? - $?man)
(test (neq ?aid ?aid1))
(not (removed_id ?aid))
=>
	(assert (removed_id ?aid1))
)
;--------------------------------------------------------------------------------------------------------
(defrule print_minion_alignment_for_dic
(declare (salience 6))
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?aid minion ?eng_wrds $?anu_mng - $?man_mng)
(id-org_wrd-root-dbase_name-mng ? ? ? ? $?man_mng)
(para_id-sent_id-no_of_words    ?       ?sid    ?)
(not (id-corrected_mngs ?aid $?))
(not (id_decided ?aid))
(not (removed_id ?aid))
=>
	(printout ?*minion-mng-file*  ?eng_wrds"        "(implode$ $?anu_mng)"  "(implode$ $?man_mng)"  [ "?sid" ]" crlf)
	(assert (id_decided ?aid))
)
;--------------------------------------------------------------------------------------------------------
(defrule print_minion_alignment_info1
(declare (salience 5))
?f0<-(id-src-eng_wrds-anu_mng-man_mng ?aid ?src ?eng_wrds $?anu_mng - $?man_mng)
(test (neq (length $?anu_mng) 0))
(para_id-sent_id-no_of_words    ?       ?sid    ?)
(not (id-corrected_mngs ?aid $?))
(not (id_decided ?aid))
(not (removed_id ?aid))
=>
        (printout ?*minion-mng-file*  ?eng_wrds"	"(implode$ $?anu_mng)"	"(implode$ $?man_mng)"	[ "?sid" ]" crlf)
	(if (eq ?src single_verb) then
	        (printout ?*dic_fp* ?eng_wrds" = "(implode$ $?man_mng) " ---> [single verb alignment]" crlf)
	else
		(printout ?*dic_fp* ?eng_wrds" = "(implode$ $?man_mng) crlf)
	)
)
;-------------------------------------------------------------------------------------------------

