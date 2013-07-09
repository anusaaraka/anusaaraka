;This file is written by Shirisha Manju (5th Dec 2012)





;---------------------------------genereting single verb match ----------------------------------------------------
(defrule get_mngs_aligned_for_verb
(declare (salience 1000))
(man_verb_count-verbs 1 ?mid)
(anu_verb_count-verbs 1 ?aid)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(id-HM-source ?aid $?anu_root ?)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng1 - $?root - $? - $?)
(id-root ?aid ?rt)
=>
        (retract ?f0)
	(assert (id-src-eng_wrds-anu_mng-man_mng   ?aid  single_verb	 ?rt	$?anu_root -  $?root))
)
;---------------------------------- generating exact match file -----------------------------------------------------
;In these examples, the [external agency] of force (hands, wind, stream, etc) is in contact with the object. ina uxAharaNoM meM, bala kA [bAhya sAXana] (hAWa, vAyu, jalaXArA, Axi) piNda ke samparka meM hE.
(defrule get_mngs_aligned_with_anu_compound_mng
(declare (salience 900))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng)
(id-HM-source ?aid $?anu_root Database_compound_phrase_root_mng|Phy_compound_phrase_root_mng|WSD_compound_phrase_root_mng|Database_compound_phrase_word_mng|Phy_compound_phrase_word_mng)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root - $? - $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?rt)
=>
        (retract ?f0)
        (assert (id-src-eng_wrds-anu_mng-man_mng   ?aid  exact  ?rt     $?anu_root -  $?root))
)
;----------------------------------------------------------------------------------------------------------------------
;He also gave an explicit form for the force for [gravitational attraction] between two bodies.
;unhoMne xo piNdoM ke bIca [guruwvAkarRaNa] bala ke lie suspaRta sUwra BI xiyA. -- man
;usane BI xo piNdoM ke bIca [guruwvAkarRaNa ke lie] bala ke lie spaRta rUpa xiyA.
(defrule get_mngs_aligned_with_anu_compound_mng1
(declare (salience 890))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(id-HM-source ?aid $?anu_root Database_compound_phrase_root_mng|Phy_compound_phrase_root_mng|WSD_compound_phrase_root_mng|Database_compound_phrase_word_mng|Phy_compound_phrase_word_mng)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?anu_root - $? - $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?rt)
=>
        (retract ?f0)
        (assert (id-src-eng_wrds-anu_mng-man_mng   ?aid  exact  ?rt     $?anu_root -  $?anu_root))
)
;----------------------------------------------------------------------------------------------------------------------
(defrule get_mngs_aligned_with_anu_mng
(declare (salience 700))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng)
(id-HM-source ?aid $?anu_root WSD_root_mng|WSD_word_mng|Default|Physics_Glossary)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root - $? - $?)
(id-root ?aid ?rt)
=>
	(retract ?f0)
	(assert (id-src-eng_wrds-anu_mng-man_mng   ?aid  exact	?rt	$?anu_root -  $?root))
)
;----------------------------------------------------------------------------------------------------------------------
;In many practical situations, however, friction is critically needed.
;bahuwa sArI vyAvahArika hAlawa meM, PiraBI, [GarRaNa kI] cinwApUrNa rUpa se AvaSyakawA hE. anu
;waWApi, bahuwa - sI vyAvahArika sWiwiyoM meM, [GarRaNa] awyanwa AvaSyaka howA hE . man
;We can explain this phenomenon on the basis of electromagnetic induction.
;isa [pariGatanA kI] vyAKyA hama vixyuwa cumbakIya preraNa ke AXAra para kara sakawe hEM
;hama vExyuwacumbakIya svAgawa-samAroha ke AXAra para yaha [pariGatanA] samaJA sakawe hEM.
(defrule get_mngs_aligned_with_anu_root
(declare (salience 650))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?mng)
(id-HM-source ?aid $?root WSD_root_mng|WSD_word_mng|Default|Physics_Glossary|Original_word)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root - $?ids)
(id-root ?aid ?rt)
=>
	(retract ?f0)
        (assert (id-src-eng_wrds-anu_mng-man_mng   ?aid  exact  ?rt       $?root -  $?root))
)
;---------------------------------- generating dictionary match file -------------------------------------------------
(defrule get_mngs_aligned_with_dic
(declare (salience 500))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(id-HM-source ?aid $?root WSD_root_mng|WSD_word_mng|Default|Physics_Glossary)
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $?root1 - $? - $?ids)
(id-root ?aid ?rt)
=>
        (retract ?f0)
	(if (eq (length $?mng) 0) then
		(assert (id-src-eng_wrds-anu_mng-man_mng   ?aid dictionary      ?rt    -   -  $?root1))	
	else
		(assert (id-src-eng_wrds-anu_mng-man_mng  ?aid	dictionary	?rt	$?root -  $?root1))
	)
)
;----------------------------------------------------------------------------------------------------------------------
