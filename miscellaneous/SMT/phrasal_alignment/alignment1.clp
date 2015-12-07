;This file is written by Shirisha Manju

(defglobal ?*lf-f* = lf)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

;================================== group hI/BI ============================================

;Like velocity, acceleration can also be positive, negative or zero.
;[vega ke samAna] [hI] wvaraNa BI XanAwmaka, qNAwmaka aWavA SUnya ho sakawA hE .
(defrule group_hI
(declare (salience 20))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word hI))
(manual_word_info (head_id ?mid)(group_ids $?d ?id1&:(=(- ?id 1) ?id1)))
?f0<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?m) (man_meaning $?m1))
=>
        (retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m - ?mid $?m1 hI))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;And each time he passed, the young man had a sick, frightened feeling, which made him scowl and feel ashamed.
;Ora uXara se gujarawe hue hara bAra usa nOjavAna ko [JiJaka BI] howI WI Ora [dara BI] lagawA WA, jisakI vajaha se usakI wyoriyoM para Sikana padZa jAwI WI Ora Sarma mahasUsa howI WI
(defrule group_BI
(declare (salience 20))
?f<-(left_over_ids $?p ?BI_id $?p1)
(manual_id-word ?BI_id BI)
(manual_word_info (head_id ?mid)(group_ids $?d ?id&:(=(- ?BI_id 1) ?id)))
?f0<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng) (man_meaning $?m_mng))
=>
	(retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?m_mng BI))
	(assert (left_over_ids $?p $?p1))
)

;=============================== Align 'hyphen word' ===============================================

;Often, in these situations, the force and the time duration are difficult to ascertain separately.
;Anu: aksara, ina parisWiwiyoM meM, bala Ora samaya avaXi [alaga-alaga] suniSciwa karake muSkila hEM.
;Man: prAyaH ina sWiwiyoM meM, bala waWA samayAvaXi ko [pqWaka - pqWaka] suniSciwa karanA kaTina howA hE.
(defrule aligh_hyphen_word
(declare (salience 20))
?f<-(left_over_ids ?id)
(manual_id-word =(+ ?id 1) -)
(manual_word_info (head_id ?id) (word $?mng))
(manual_word_info (head_id ?mid) (group_ids $?d =(- ?id 1) $? ))
(alignment (anu_id ?aid) (man_id ?mid))
(hindi_id_order $? ?aid ?a1 $?)
(id-Apertium_output ?a1 $?am)
(not (alignment (anu_id ?a1)))
=>
        (retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 $?am - ?id $?mng))
)
;------------------------------------------------------------------
;Three or four door-keepers were employed on the building.
;Man: [wIna-cAra] xarabAna BI paharA xene ke lie We.
;Anu: [wIna] yA [cAra] door-keepers imArawa para kAma_para lagAyA gayA WA.
(defrule split_hyphen_word
(declare (salience 20))
?f0<-(left_over_ids $?p ?id $?p1)
(id-hyphen_word-vib ?id - ?w ?w1 - 0)
(id-Apertium_output ?aid ?w)
(id-Apertium_output ?aid1 ?w1)
(not (alignment (anu_id ?aid)))
(not (alignment (anu_id ?aid1)))
(test (<= (- ?aid1 ?aid) 2))
=>
        (retract ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?w - ?id ?w))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?w1 - ?id ?w1))
	(assert (left_over_ids $?p $?p1))
)

;=============================== Align 'rUpa' =============================

;At maximum compression the kinetic energy of the car is converted [entirely] into the potential energy of the spring. 
;kAra kI gawija UrjA aXikawama sampIdana para [sampUrNa rUpa se] spriMga kI sWiwija UrjA meM parivarwiwa ho jAwI hE.
(defrule align_rUpa
(declare (salience 15))
?f<-(left_over_ids $?p ?mid $?p1)
(manual_word_info (head_id ?mid) (word rUpa)(vibakthi ?v))
?f1<-(alignment (anu_id ?aid)(anu_meaning $?am)(man_id ?mid1&:(=(- ?mid 1) ?mid1)) (man_meaning $?m))
=>
        (retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid1 $?m rUpa ?v))
        (assert (left_over_ids $?p $?p1))
)
;-----------------------------------------------------------------------------
;The second Law is [obviously] consistent with the first law. 
;[prawyakRa rUpa se] xviwIya niyama praWama niyama ke anurUpa hE.
(defrule align_rUpa1
(declare (salience 15))
?f<-(left_over_ids $?p ?mid $?p1)
?f1<-(alignment (anu_id ?aid) (anu_meaning $?am)(man_id ?mid1&:(=(+ ?mid 1) ?mid1)) (man_meaning rUpa ?m))
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi 0))
(id-cat_coarse ?aid adverb)
=>
        (retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid1 ?mng rUpa ?m))
        (assert (left_over_ids $?p $?p1))
)

;====================================== Align 'paren word' ===========================

;A [bundle] of optical fibers can be put to several uses.
;prakASika wanwuoM ke [baNdala (gucCa) kA] kaI prakAra se upayoga kiyA jA sakawA hE.
(defrule align_paren_word
(declare (salience 15))
?f<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word ?m))
?f1<-(manual_id-word =(- ?id 1) @PUNCT-OpenParen)
?f2<-(manual_id-word =(+ ?id 1) @PUNCT-ClosedParen)
(manual_word_info (head_id ?mid&:(= (- ?id 2) ?mid)) (word $?word)(vibakthi ?v $?vib))
?f0<-(alignment (man_id ?mid)(anu_id ?aid) (anu_meaning $?am))
=>
        (retract ?f ?f1 ?f2)
        (if (neq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen ?v $?vib))
        else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen))
        )
)
;----------------------------------------------------------------------------------------------
;For example, if we multiply a constant velocity vector by duration (of time), we get a displacement vector.
;uxAharaNasvarUpa, yaxi hama kisI acara vega saxiSa ko kisI (samaya) anwarAla se guNA kareM wo hameM eka visWApana saxiSa prApwa hogA .
(defrule align_paren_word1
(declare (salience 15))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?m)(vibakthi ?v $?vib))
?f1<-(manual_id-word =(+ ?id 1) @PUNCT-OpenParen)
(manual_word_info (head_id ?mid&:(= (+ ?id 2) ?mid)) (word $?word))
?f2<-(manual_id-word =(+ ?id 3) @PUNCT-ClosedParen)
?f0<-(alignment (man_id ?mid)(anu_id ?aid) (anu_meaning $?am))
=>
        (retract ?f ?f1 ?f2)
        (assert (left_over_ids $?p $?p1))
        (if (neq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m ?v $?vib @PUNCT-OpenParen $?word @PUNCT-ClosedParen))
        else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m @PUNCT-OpenParen $?word @PUNCT-ClosedParen ))
        )
)

;============================ Remove unrelated words from verb ================================

;The night sky with its bright celestial objects [has fascinated] humans since time immemorial.
;anAxi kAla se hI rAwri ke AkASa meM camakane vAle KagolIya piMda [use sammohiwa karawe rahe hEM].
;Recent decades have seen much progress on this front.
;phrasal is aligning 'use kuCa hamane' in has, have
(defrule rm_unrelated_words_from_aux_verb
(declare (salience 15))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f<-(alignment (anu_id ?id) (man_id ?mid)(anu_meaning) (man_meaning $?mng))
(test (eq (integerp (member$ $?mng (create$ hE hEM howA hE howI hE howe hEM hogA avaSya))) FALSE))
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?ids ?mid))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
;He had given up attending to matters of practical importance; he had lost all desire [to do] so.
;usane rojamarrA kI bAwoM kI ora XyAna xenA CodZa xiyA WA; isameM [usakI] koI icCA BI nahIM raha gaI WI
(defrule rm_unrelated_words_from_verb
(declare (salience 15))
?f<-(alignment (anu_id ?id) (man_id ?mid)(anu_meaning $?) (man_meaning ?mng))
(id-cat_coarse ?id verb)
(test (eq (integerp (member$ ?mng (create$ usakA usakI use))) TRUE))
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?ids ?mid))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
;He had [given up] attending to matters of practical importance; he had lost all desire to do so.
;Man: usane rojamarrA kI bAwoM kI ora XyAna xenA [CodZa xiyA WA]; isameM usakI koI icCA BI nahIM raha gaI WI
;Anu: usane vyAvahArika mahawva ke viRayoM ke lie upasWiwa howA huA ki [Coda xiyA WA]; usane EsA hI karane ke lie saBI icCA KoI WI.
(defrule rm_unrelated_words_from_particle
(declare (salience 15))
(alignment (anu_id ?id) (man_id ?mid)(anu_meaning $?mng) (man_meaning $?mng))
(id-cat_coarse ?id verb)
?f<-(alignment (anu_id ?id1&:(= (+ ?id 1) ?id1)) (man_id ?mid1) (anu_meaning) (man_meaning $?m))
(id-cat_coarse ?id1 particle)
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?ids ?mid1))
        (assert (removed_man_id_with-anu_id ?mid1 ?id1))
)

;========================= Modify mwe alignment ====================

;Similarly, the price or employment level of this representative good will reflect the general price and employment level of the economy.
;isI waraha, isa prawiniXi vaswu kA kImawa swara aWavA rojZagAra swara arWavyavasWA ke sAmAnya kImawa Ora [rojZagAra swara ko] prawibiMbiwa karegA.
(defrule modify_mwe
(declare (salience 13))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning) (man_meaning $?mng ?v&se|ko|meM|para|kI))
?f1<-(alignment (anu_id ?id1) (man_id ?mid1) (anu_meaning $?mng) (man_meaning $?m))
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (neq ?id ?id1))
?f2<-(left_over_ids $?l)
=>
        (retract ?f0 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid $?mng ?v))
	(assert (left_over_ids $?l ?mid1))
)
;------------------------------------------------------------------
;Why does a [railway track] have a particular shape like I?
;Man: [rela] [patarI kI] Akqwi @I ke samAna kyoM howI hE ?
;Anu: [rela paWa] mEM samAna rUpa kyoM howA hE?
(defrule modify_mwe_slot
(declare (salience 12))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning) (man_meaning $?pre ?m $?m1))
?f1<-(alignment (anu_id ?id1) (man_id ?mid1) (anu_meaning $?p ?m $?amng) (man_meaning $?mng))
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (and (neq $?mng ?m ) (eq (integerp (member$ ?m (create$ $?mng))) FALSE)))
=>
        (retract ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?p ?m $?amng - ?mid1 $?pre ?m $?m1 $?mng))
	(assert (modified_mwe_slot ?mid))
)
;------------------------------------------------------------------
;He also gave an explicit form for the force for [gravitational attraction] between two bodies.
;unhoMne xo piMdoM ke bIca [guruwvAkarRaNa] bala ke lie suspaRta sUwra BI xiyA.
(defrule modify_mwe_slot1
(declare (salience 11))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning) (man_meaning $?m1))
(id-Apertium_output ?id1 $? ?m $?)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (eq (integerp (member$ ?m $?m1)) TRUE))
(not (modified_mwe_slot ?mid))
(not (alignment (anu_id ?id1) )) ;The railways affected the structure of the Indian economy in two important ways.
=>
	
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1   - ?mid $?m1))
	(assert (modified_mwe_slot ?mid))
)

;================================== Modify aux verb alignment ==================

;These [are bonded] together by interatomic or intermolecular forces and stay in a stable equilibrium position.
;yaha anwarA-paramANavika yA anwarA-ANavika baloM xvArA Apasa meM [bazXe] [howe hEM] Ora eka sWira sAmya avasWA meM rahawe hEM.
;In this book you [will be introduced] to some of the basic principles of macroeconomic analysis.
;isa puswaka meM ApakA [paricaya] samaRti arWaSAswrIya viSleRaNa ke kuCa mUla sixXAnwoM se [hogA] .
(defrule modify_aux_slot
(declare (salience 10))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f0<-(alignment (anu_id ?h)(anu_meaning $?am) (man_id ?mid)(man_meaning $?m))
?f<-(alignment (anu_id ?id) (man_id ?mid1)(anu_meaning) (man_meaning $?mng))
(test (eq (integerp (member$ $?mng (create$ $?m))) FALSE));In SI, there are seven base units as given in Table 2.1. 11-02
=>
		(retract ?f )
		(if (> ?mid ?mid1) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?mng $?m))
		else	
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?m $?mng))
		)
)
;---------------------------------------------------------------------------------
;Some physical quantities that are represented by vectors are displacement, velocity, acceleration and force.
;kuCa BOwika rASiyAz jinheM saxiSoM xvArA [vyakwa karawe hEM], ve [hEM] visWApana, vega, wvaraNa waWA bala .
(defrule modify_aux_slot_with_score
(declare (salience 9))
(root-verbchunk-tam-chunkids ? are|is ? ?h1)
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
?f<-(alignment (anu_id ?id) (man_id ?mid)(anu_meaning) (man_meaning $?mng))
?f0<-(score (anu_id ?h1) (man_id ?mid) ) 
(not (alignment (anu_id ?h1)))
(id-Apertium_output ?h1 $?m)
=>
        (retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h1 $?m - ?mid $?mng))
)

;======================  Alignment with manual scope ==================================

;The little flats in such houses always have bells that ring like that.
;isa waraha ke [Cote-Cote] PlEtoM kI GaNtiyAz hameSA isI waraha kI AvAja karawI hEM .
;There was a continual coming and going through the two gates and in the two courtyards of the house.
;Gara ke [xonoM] xaravAjoM se Ora usake [xonoM] xAlAnoM meM lagAwAra AvAjAhI rahawI WI
(defrule align_with_manual_scope
(declare (salience 7))
?f<-(left_over_ids $?p ?id $?p1)
(alignment (anu_id ?aid) (man_id ?mid&:(= (+ ?id 1) ?mid)) )
(chunk_name-chunk_ids ? $?grp)
(test (and (integerp (member$ ?mid $?grp)) (integerp (member$ ?id $?grp))))
(id-Apertium_output =(- ?aid 1) $?am)
(manual_word_info (head_id ?id) (word $?mng))
(not (alignment (anu_id =(- ?aid 1))));I shall be getting some money [soon]. {jalxa} [hI] muJe kuCa pEsA milanevAlA hE
(not (checked_id ?id))
=>
        (retract ?f)
        (assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp =(- ?aid 1) - - ?id $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp =(- ?aid 1) $?am - ?id $?mng))
	)
        (assert (checked_id ?id))
)

;=========================== verb Alignment ==========================================

(defrule group_nahIM_using_anu_out
(declare (salience 8))
?f0<-(left_over_ids $?pre ?id $?po)
(manual_word_info (head_id ?id) (word nahIM))
?f1<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?m nahIM $?mng) (man_meaning $?mng))
(id-cat_coarse ?aid verb)
=>
        (retract ?f0 ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?m nahIM $?mng - ?mid  nahIM  $?mng))
        (assert (left_over_ids $?pre $?po))
)
;---------------------------------------------------------------------------------
;if noun is aligned in verb slot then combine the next word 
;Amidst all this the guide began to [track] tiger.
;isa bIca gAida ne tAigara ko [trEka] [karanA] SurU kara xiyA .
;You will see that the strips get attracted to the screen.
;Apa xeKeMge ki pattiyAz parxe kI ora [AkarRiwa] [ho jAwI hEM] .
(defrule group_verb_if-noun_aligned
(declare (salience 6))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(alignment (anu_id ?aid) (man_id =(- ?id 1)) (anu_meaning $?amng) (man_meaning ?mng))
(id-cat_coarse ?aid verb)
(chunk_name-chunk_ids JJP|NP|VGNF|VGNN $? =(- ?id 1) $?)
(manual_word_info (head_id ?id) (word $?mng1)(vibakthi ?vib $?v))
(chunk_name-chunk_ids ?c&VGF|VGNN $? ?id $?)
=>
        (retract ?f)
        (assert (left_over_ids $?p $?p1))
        (if (and (eq ?c VGNN)(neq ?vib 0)) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - =(- ?id 1) ?mng $?mng1 ?vib $?v))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - =(- ?id 1) ?mng $?mng1))
        )
        (assert (modified_man_id =(- ?id 1)))
)
;---------------------------------------------------------------------------------
;if leftover id next word is kara and if it is aligned then combine both.
;The principles [will be stated], as far as possible, in simple language.
;jahAz waka samBava hogA sixXAnwoM kA sarala BARA meM [varNana kiyA jAegA] .
;Within the category of industrial goods also output of different kinds of goods tend to rise or fall simultaneously.
;Oxyogika vaswuoM meM BI viBinna prakAra kI vaswuoM ke nirgawa meM eka sAWa vqxXi yA hrAsa kI [pravqwwi howI hE].
(defrule default_kara/ho_group1
(declare (salience 5))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?mng)(vibakthi 0))
?f0<-(alignment (anu_id ?aid) (man_id ?mid&:(= (+ ?id 1) ?mid))(anu_meaning ?a $?am) (man_meaning ?kara $?tam))
(man_word-root-cat ?kara kara|ho v)
(not (root-verbchunk-tam-chunkids ? are|is ? ?aid)) ;Ex: hogA,hEM -- ho
=>
        (retract ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng ?kara $?tam))
        (assert (left_over_ids $?p $?p1))
)

;========================== Alignment with phrasal ===================================

;The young man, left standing alone in the [middle] of the room, listened inquisitively, thinking.
;kamare ke [maXya meM] akelA KadA honA calA jAyA, yuvaka ne, socawA huA jijFAsApUrvaka, sunA.
;nOjavAna kamare ke [bIcoMbIca] akelA raha gayA.
(defrule align_with_phrasal
(declare (salience 4))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word $?mng))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?mng)(eng_id-eng_wrd-man_wrd ?aid ? $?mng ?)(eng_id-eng_wrd-man_wrd ?aid ? ? $?mng))
(not (alignment (anu_id ?aid )))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-Apertium_output ?aid $?am)
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f)
        (assert (left_over_ids $?p $?p1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id $?mng))
)

;=========================== verb Alignment ==========================================

;Eng: The time involved [varies] greatly according to climate, weather and crop.
;Man: jalavAyu, mOsama Ora Pasala ke anurUpa lAgawa samaya [baxalawA][rahawA hE].
(defrule combine_verb_using_dic_and_score
?f0<-(left_over_ids $?pre ?mid $?po)
(score (anu_id ?aid) (man_id ?mid) (heuristics $? dictionary $?))
?f1<-(alignment (anu_id ?aid) (man_id ?mid1) (anu_meaning $?mng) (man_meaning $?m1))
(chunk_name-chunk_ids-words VGNN ?mid - ?m)
(chunk_name-chunk_ids-words VGF =(+ ?mid 1) $?ids - $?m1)
(manual_word_info (head_id ?mid) (word ?m))
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?m $?m1))
	(assert (left_over_ids $?pre $?po))
)
;----------------------------------------------------------------------------------------------
;In addition to finding the facts by observation and experimentation, physicists attempt to discover the laws that summarise (often as mathematical equations) these facts.
;prekRaNoM waWA prayogoM xvArA waWyoM ko Kojane ke sAWa-sAWa BOwika vijFAnI una niyamoM kI Koja karane kA prayAsa karawe hEM jo ina waWyoM kA sAra (prAyaH gaNiwIya samIkaraNoM meM) hoM.
(defrule group_verb_if-noun_aligned1
(declare (salience -1))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng ?a&~WA&~We&~WI&~hEM) (man_meaning $?m ?mng))
(test (neq (integerp (member$ ?mng (create$ WIM WA We WI hEM hue ))) TRUE));Dates for depositing specified sums of revenue were fixed, failing which the zamindars were to lose their rights.
(id-cat_coarse ?aid verb)
(chunk_name-chunk_ids JJP|NP|VGNF  $? ?mid $? )
(manual_word_info (head_id ?id) (word $?mng1)(vibakthi ?v $?vib))
(chunk_name-chunk_ids ?c&VGF|VGNN $? ?id $?)
(not (modified_man_id ?mid ))
=>
        (retract ?f)
        (assert (left_over_ids $?p $?p1))
        (if (and (neq ?c VGF)(neq ?v 0)) then	
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?m ?mng $?mng1 ?v $?vib))
       else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?m ?mng $?mng1))
        )
)
;----------------------------------------------------------------------------------------------
;The result [can be generalised] to any number of forces.
;isa pariNAma kA [vyApIkaraNa] baloM kI kisI BI safKyA ke lie [kiyA jA sakawA hE].
(defrule verb_group_using_phrasal
?f<-(left_over_ids ?id )
(manual_word_info (head_id ?id) (word ?mng1))
?f0<-(alignment (anu_id ?aid) (man_id ?mid ) (anu_meaning $?amng) (man_meaning ?m $?mng))
(man_word-root-cat ?m kara|ho v)
(id-cat_coarse ?aid verb|adjective)
(eng_id-eng_wrd-man_wrd ?aid ? ?mng1)
=>
        (retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid ?mng1 ?m $?mng))
)
;----------------------------------------------------------------------------------------------
;if kara/ho leftover then group with previous word.
;The world has an [astonishing] variety of materials and a bewildering diversity of life and behavior.
;saMsAra meM paxArWoM ke [AScaryacakiwa] [karane vAle] prakAra waWA jIvana evaM vyavahAra kI vismayakArI viBinnawAez hEM.
;It is deformable, i.e. it allows some relative displacement between different parts.
;isameM [virUpaNa] [ho sakawA hE], arWAw isake viBinna BAgoM ke bIca ApekRa visWApana samBava hE .
(defrule default_kara/ho_group
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?mng1 $?w)(vibakthi ?v $?vib))
(man_word-root-cat ?mng1&~hE kara|ho v)
?f0<-(alignment (anu_id ?aid)(anu_meaning $?am) (man_id ?mid&:(= (- ?id 1) ?mid)) (man_meaning ?mng))
(not (root-verbchunk-tam-chunkids ? are|is ? ?aid)) ;Ex: hogA,hEM -- ho
=>
	(retract ?f)
	(if (or (eq ?v 0) (eq ?v EOF) (eq $?w (create$ ?v $?vib)) ) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?mng ?mng1 $?w))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?mng ?mng1 $?w ?v $?vib))
	)
	(assert (left_over_ids $?p $?p1))
)
;---------------------------------- noun related rules---------------------------------------

;The first model of atom was proposed by J. J. Thomson in 1898.
;[san][1898 meM] je. je. toYmasana ne paramANu kA pahalA moYdala praswAviwa kiyA .
(defrule group_prev_word_for_no
?f<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning ?no meM) (man_meaning ?no1 meM))
(id-cat_coarse ?id number)
(test (eq (string-to-field (str-cat "@" ?no)) ?no1))
?f1<-(manual_word_info (head_id ?mid1&:(=(- ?mid 1) ?mid1)) (word san))
?f0<-(left_over_ids $?p ?mid1 $?p0)
=>
	(retract ?f ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?no meM - ?mid san ?no1 meM))
;	(assert (alignment (anu_id ?id) (man_id ?mid) (anu_meaning ?no meM) (man_meaning san ?no1 meM))	)
	(assert (left_over_ids $?p $?p0))
)
;----------------------------------------------------------------------------------------------
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA [kahIM] [aXika] prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE.
(defrule group_prev_word_with_score
?f0<-(left_over_ids $?p ?mid $?p0)
?f<-(alignment (anu_id ?aid) (man_id ?mid1&:(=(+ ?mid 1) ?mid1)) (anu_meaning $?amng) (man_meaning $?mng))
(score (anu_id ?aid) (man_id ?mid))
(not (score (anu_id ?aid) (man_id ?mid1)(rule_names $? ?r&anu_exact_match_without_vib|anu_exact_match_with_vib|man_root_and_vib_match_using_dic $?)))
(manual_word_info (head_id ?mid) (word ?m))
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid ?m $?mng))
;	(assert (alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng) (man_meaning ?m $?mng))  )
	(assert (left_over_ids $?p $?p0))
) 
;----------------------------------------------------------------------------------------------
;If the object moves from P to P′, the vector PP′ (with tail at P and tip at P′) is [called] the displacement vector corresponding to motion from point P (at time t) to point P′ (at time t′).
;yaxi vaswu @P se calakara @P′ para pahuFca jAwI hE wo saxiSa @PP′ (jisakI pucCa @P para waWA SIrRa @P′ para hE) biMxu @P (samaya @t) se @P′ (samaya @t′) waka gawi ke safgawa visWApana saxiSa [kahalAwA hE].
(defrule align_using_phrasal
?f<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word ?m ?m1&hE|hEM|hue|huI))
(eng_id-eng_wrd-man_wrd ?aid ? ?m)
(not (alignment (anu_id ?aid)))
(id-Apertium_output ?aid $?amng)
=>
	(retract ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id ?m ?m1))
)
;============================== get leftover_anu_ids ==========================

(defrule get_left_anu_ids
(declare (salience -7))
?f<-(hindi_id_order $?pre ?id $?po)
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?)(alignment (anu_id ?id) ))
(not (left_over_ids))
=>
	(retract ?f)
	(assert (hindi_id_order $?pre $?po))
)

(defrule rm_det_and_prep_ids
(declare (salience -8))
?f<-(hindi_id_order $?pre ?id $?po)
(id-cat_coarse ?id determiner|preposition)
=>
        (retract ?f)
        (assert (hindi_id_order $?pre $?po))
)

;Therefore, an atom must also contain some [positive charge] to neutralise the negative charge of the electrons.
;man: isalie, ilektroYna ke qNa AveSa ko niRpraBAviwa karane ke lie paramANu meM [XanAwmaka AveSa] BI avaSya honA cAhie.
;anu: isalie, paramANu ko ilektroYna kA qNAwmaka AveSa niRpraBAviwa karanA kuCa [XanAwmaka AveSa] BI honA cAhie.
;Lubricants are a way of reducing kinetic friction in a machine.
;man: maSInoM meM snehaka [gawija GarRaNa ko] kama karane kA eka sAXana howA hE.
;anu: snehaka maSIna meM [gawija GarRaNa] kama hone kA isa prakAra hEM.
(defrule rm_comp_ids
(declare (salience -8))
?f<-(hindi_id_order $?pre ?id $?po)
(alignment (anu_id ?id1) (man_id ?mid) )
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
=>
        (retract ?f)
        (assert (hindi_id_order $?pre $?po))
)

;==================================  Align single_anu_id with single_man_id ========================

(defrule align_single_id
(declare (salience -9))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order ?aid)
(id-Apertium_output ?aid $?amng)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib))
(chunk_name-chunk_ids ?c $? ?id $?)
(not (msg_printed))
=>
	(retract ?f ?f1)
	(if (or (eq ?v 0) (eq ?v EOF)(eq ?c VGF)) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id $?mng ?v $?vib))
	)
	(printout t "single alignment" crlf)
)

;==================== Align single man_id when no anu_id left  ========================

;Automobiles and planes carry people from one place to the [other].
;motaragAdI Ora vAyuyAna yAwriyoM ko eka sWAna se [xUsare sWAna ko] le jAwe hEM .
;The connection between physics, technology and society can be seen in many examples.
;BOwikI, prOxyogikI waWA samAja ke bIca [pArasparika sambanXoM ko] bahuwa se uxAharaNoM meM xeKA jA sakawA hE.
(defrule align_single_id_for_no_slot_left
(declare (salience -9))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
?f2<-(alignment (anu_id ?aid) (man_id ?id1&:(=(- ?id 1) ?id1))  (anu_meaning ?amng ?v&ko|ne) (man_meaning ?m))
(manual_word_info (head_id ?id) (word ?mng)(vibakthi ?v1))
=>
	(retract ?f ?f1)
	(if (eq ?v1 0 ) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?amng ?v - ?id1 ?m ?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?amng ?v - ?id1 ?m ?mng ?v1))
	)
)	

;================== to print left over info in html ====================

(defrule print_info
(declare (salience -10))
(left_over_ids ?id $?)
(not (msg_printed))
=>
       (printout ?*lf-f* "Nth layer Un-assigned words:  " )
       (assert (msg_printed))
)

(defrule print_single_left_over_wrd
(declare (salience -11))
?f0<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib) )
(chunk_name-chunk_ids ?c $? ?id $?)
=>
	(retract ?f0)
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF)(eq ?c VGNN)) then
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng))) crlf)
	else
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) crlf)
	)
)

(defrule print_left_over_wrd
(declare (salience -11))
?f0<-(left_over_ids ?id $?po ?lid)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib))
(chunk_name-chunk_ids ?c $? ?id $?)
=>
        (retract ?f0)
	(assert (left_over_ids $?po ?lid))
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF) (eq ?c VGNN)) then
;	(if (eq ?v 0) then
		(printout ?*lf-f*  (str-cat (wx_utf8 (implode$ (create$ $?mng))) ", ") )
	else
		(printout ?*lf-f* (str-cat (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) ", "))
	)
)

;======================= Add punctuations =================================

;Since momentum is a vector this implies three equations for the three directions {x, y, z}.
;cUzki saMvega eka saxiSa rASi hE, awaH yaha wIna xiSAoM [{@x], @y, @z} ke lie wIna samIkaraNa praxarSiwa karawA hE.
;(defrule add_punct
;(declare (salience -20))
;?f<-(manual_id-word ?mid ?w&{|@PUNCT-OpenParen)
;?f1<-(alignment (anu_id ?aid) (man_id ?mid1&:(= (+ ?mid 1) ?mid1)) (man_meaning $?mng))
; =>
;	(retract ?f)
;	(modify ?f1 (man_meaning ?w $?mng))
;)
;
;(defrule add_punct1
;(declare (salience -20))
;?f<-(manual_id-word ?mid ?w&}|@PUNCT-ClosedParen)
;?f1<-(alignment (anu_id ?aid) (man_id ?mid1&:(= (- ?mid 1) ?mid1)) (man_meaning $?mng))
; =>
;        (retract ?f)
;        (modify ?f1 (man_meaning $?mng ?w))
;)


;----------------------- Final alignment file --------------
(defrule print_final_align
(declare (salience -25))
?f1<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng)(man_meaning $?mng))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
	(retract ?f1)
	(if (eq (length $?amng) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?mng))
	)
)

