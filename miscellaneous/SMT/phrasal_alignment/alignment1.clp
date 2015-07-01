;This file is written by Shirisha Manju

(defglobal ?*lf-f* = lf)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

;------------------------- Modify mwe alignment ----------------

;Why does a [railway track] have a particular shape like I?
;Man: [rela] [patarI kI] Akqwi @I ke samAna kyoM howI hE ?
;Anu: [rela paWa] mEM samAna rUpa kyoM howA hE?
(defrule modify_mwe_slot
(declare (salience 12))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning) (man_meaning $?pre ?m $?m1))
?f1<-(alignment (anu_id ?id1) (man_id ?mid1) (anu_meaning $? ?m $?amng) (man_meaning $?mng))
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
=>
        (retract ?f0)
        (modify ?f1 (man_meaning $?pre ?m $?m1 $?mng))
	(assert (modified_mwe_slot ?mid))
)
;------------------------------------------------------------------
;He also gave an explicit form for the force for [gravitational attraction] between two bodies.
;unhoMne xo piMdoM ke bIca [guruwvAkarRaNa] bala ke lie suspaRta sUwra BI xiyA.
(defrule modify_mwe_slot1
(declare (salience 10))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(alignment (anu_id ?id) (man_id ?mid) (anu_meaning) (man_meaning $?m1))
(id-Apertium_output ?id1 $? ?m $?)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (eq (integerp (member$ ?m $?m1)) TRUE))
(not (modified_mwe_slot ?mid))
=>
        (modify ?f0 (anu_id ?id1))
	(assert (modified_mwe_slot ?mid))
)


;-------------------- Modify aux alignment----------------

;These [are bonded] together by interatomic or intermolecular forces and stay in a stable equilibrium position.
;yaha anwarA-paramANavika yA anwarA-ANavika baloM xvArA Apasa meM [bazXe] [howe hEM] Ora eka sWira sAmya avasWA meM rahawe hEM.
(defrule modify_aux_slot
(declare (salience 12))
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
?f0<-(alignment (anu_id ?h) (man_id ?mid)(man_meaning $?m))
(chunk_name-chunk_ids ? $? ?mid $?)
;(chunk_name-chunk_ids VGNF|JJ|NP|JJP $? ?mid $?)
?f<-(alignment (anu_id ?id) (man_id ?mid1)(anu_meaning) (man_meaning $?mng))
=>
        (retract ?f )
	(if (> ?mid1 ?mid) then
	        (modify ?f0 (man_meaning $?m $?mng))
	else
	        (modify ?f0 (man_meaning $?mng $?m))
	)
)

;------------------------------- verb related rules -----------------------------------------
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
	(assert (alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?mng) (man_meaning ?m $?m1)))
	(assert (left_over_ids $?pre $?po))
)
;----------------------------------------------------------------------------------------------
;if noun is aligned in verb slot then combine the next word 
;Amidst all this the guide began to [track] tiger.
;isa bIca gAida ne tAigara ko [trEka] [karanA] SurU kara xiyA .
;You will see that the strips get attracted to the screen.
;Apa xeKeMge ki pattiyAz parxe kI ora [AkarRiwa] [ho jAwI hEM] .
(defrule group_verb_if-noun_aligned
(declare (salience 10))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(alignment (anu_id ?aid) (man_id =(- ?id 1)) (anu_meaning $?amng) (man_meaning ?mng))
(id-cat_coarse ?aid verb)
(chunk_name-chunk_ids JJP|NP|VGNF $? =(- ?id 1) $?) 
(manual_word_info (head_id ?id) (word $?mng1)(vibakthi $?v))
(chunk_name-chunk_ids ?c&VGF|VGNN $? ?id $?)
=>
	(retract ?f)
	(assert (left_over_ids $?p $?p1))
	(if (eq ?c VGNN) then
		(modify ?f0 (man_meaning ?mng $?mng1 $?v))
	else
		(modify ?f0 (man_meaning ?mng $?mng1))
	)
)
;----------------------------------------------------------------------------------------------
;In addition to finding the facts by observation and experimentation, physicists attempt to discover the laws that summarise (often as mathematical equations) these facts.
;prekRaNoM waWA prayogoM xvArA waWyoM ko Kojane ke sAWa-sAWa BOwika vijFAnI una niyamoM kI Koja karane kA prayAsa karawe hEM jo ina waWyoM kA sAra (prAyaH gaNiwIya samIkaraNoM meM) hoM.
(defrule group_verb_if-noun_aligned1
(declare (salience -1))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng) (man_meaning ?mng))
(id-cat_coarse ?aid verb)
(chunk_name-chunk_ids JJP|NP|VGNF ?mid )
(manual_word_info (head_id ?id) (word $?mng1)(vibakthi $?v))
(chunk_name-chunk_ids ?c&VGF|VGNN $? ?id $?)
=>
        (retract ?f)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?c VGNN) then
                (modify ?f0 (man_meaning ?mng $?mng1 $?v))
        else
                (modify ?f0 (man_meaning ?mng $?mng1))
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
        (modify ?f0 (man_meaning ?mng1 ?m  $?mng))
)
;----------------------------------------------------------------------------------------------
;The world has an [astonishing] variety of materials and a bewildering diversity of life and behavior.
;saMsAra meM paxArWoM ke [AScaryacakiwa] [karane vAle] prakAra waWA jIvana evaM vyavahAra kI vismayakArI viBinnawAez hEM.
;It is deformable, i.e. it allows some relative displacement between different parts.
;isameM [virUpaNa] [ho sakawA hE], arWAw isake viBinna BAgoM ke bIca ApekRa visWApana samBava hE .
(defrule default_kara/ho_group
?f<-(left_over_ids ?id )
(manual_word_info (head_id ?id) (word ?mng1 $?w)(vibakthi ?v $?vib))
(man_word-root-cat ?mng1 kara|ho v)
?f0<-(alignment (anu_id ?aid) (man_id ?mid&:(= (- ?id 1) ?mid)) (man_meaning ?mng))
=>
	(retract ?f)
	(if (or (eq ?v 0) (eq ?v EOF)) then
		(modify ?f0 (man_meaning ?mng ?mng1 $?w))
	else
		(modify ?f0 (man_meaning ?mng ?mng1 $?w ?v $?vib))
	)
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
	(assert (alignment (anu_id ?id) (man_id ?mid) (anu_meaning ?no meM) (man_meaning san ?no1 meM))	)
	(assert (left_over_ids $?p $?p0))
)
;----------------------------------------------------------------------------------------------
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA [kahIM] [aXika] prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE.
(defrule group_prev_word_with_score
?f0<-(left_over_ids $?p ?mid $?p0)
?f<-(alignment (anu_id ?aid) (man_id ?mid1&:(=(+ ?mid 1) ?mid1)) (anu_meaning $?amng) (man_meaning $?mng))
(score (anu_id ?aid) (man_id ?mid))
(manual_word_info (head_id ?mid) (word ?m))
=>
	(retract ?f ?f0)
	(assert (alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng) (man_meaning ?m $?mng))  )
	(assert (left_over_ids $?p $?p0))
) 
;----------------------------------------------------------------------------------------------
;Eng: The law of conservation of energy is thought to be valid across all domains of nature, from the microscopic to the macroscopic. 
;Anu: UrjA ke saMrakRaNa kA niyama mAnA jAwA hE ki sWUla ko prakqwi ke saBI [praBAvakRewra] ke saBI ora, sUkRma se vEXa rahane ke lie .
;Man: UrjA saMrakRaNa niyama ko prakqwi ke saBI [praBAva kRewroM], sUkRma se sWUla waka, ke lie vEXa mAnA gayA hE.
(defrule group_prev_word_with_anu
?f0<-(left_over_ids $?p ?mid $?p0)
?f<-(alignment (anu_id ?aid) (man_id ?mid1&:(=(+ ?mid 1) ?mid1)) (anu_meaning ?m $?amng) (man_meaning $?mng))
(manual_word_info (head_id ?mid) (word ?pmng))
(test (eq (numberp ?m) FALSE))
(test (eq (string-to-field (sub-string 1 (length ?pmng) ?m)) ?pmng))
=>
	(retract ?f0)
	(assert (left_over_ids $?p $?p0))
	(modify ?f (man_meaning ?pmng $?mng))
)
;----------------------------------------------------------------------------------------------
;Like velocity, acceleration can also be positive, negative or zero.
;[vega ke samAna] [hI] wvaraNa BI XanAwmaka, qNAwmaka aWavA SUnya ho sakawA hE .
(defrule group_hI
?f<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word hI))
(manual_word_info (head_id ?mid)(vibakthi $?v) (group_ids $?d ?id1&:(=(- ?id 1) ?id1)))
?f0<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?m) (man_meaning $?m1))
=>
	(retract ?f)
	(modify ?f0 (man_meaning $?m1 hI))
)
;----------------------------------------------------------------------------------------------
;Often, in these situations, the force and the time duration are difficult to ascertain separately.
;Anu: aksara, ina parisWiwiyoM meM, bala Ora samaya avaXi [alaga-alaga] suniSciwa karake muSkila hEM.
;Man: prAyaH ina sWiwiyoM meM, bala waWA samayAvaXi ko [pqWaka - pqWaka] suniSciwa karanA kaTina howA hE.
(defrule aligh_hyphen_word
(declare (salience -9))
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
        (assert (alignment (anu_id ?a1) (man_id ?id) (anu_meaning $?am) (man_meaning $?mng)))
)
;----------------------------------------------------------------------------------------------
;A [bundle] of optical fibers can be put to several uses.
;prakASika wanwuoM ke [baNdala (gucCa) kA] kaI prakAra se upayoga kiyA jA sakawA hE.
(defrule align_paren_word
(declare (salience -9))
?f<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word ?m))
(manual_id-word =(- ?id 1) @PUNCT-OpenParen)
(manual_id-word =(+ ?id 1) @PUNCT-ClosedParen)
(manual_word_info (head_id ?mid&:(= (- ?id 2) ?mid)) (word $?word)(vibakthi ?v $?vib))
?f0<-(alignment (man_id ?mid))
=>
	(retract ?f)
	(if (neq ?v 0) then
		(modify ?f0 (man_meaning $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen ?v $?vib))
	else
		(modify ?f0 (man_meaning $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen ))
	)
)
;----------------------- to get leftover_anu_ids ----------------------------------------
(defrule get_left_anu_ids
(declare (salience -7))
?f<-(hindi_id_order $?pre ?id $?po)
(alignment (anu_id ?id) )
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
;--------------------------align single_anu_id single_man_id-----------------------------
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
		(assert (alignment (anu_id ?aid) (man_id ?id ) (anu_meaning $?amng) (man_meaning $?mng)))
	else
		(assert (alignment (anu_id ?aid) (man_id ?id ) (anu_meaning $?amng) (man_meaning $?mng ?v $?vib)))
	)
	(printout t "single alignment" crlf)
)

;Automobiles and planes carry people from one place to the [other].
;motaragAdI Ora vAyuyAna yAwriyoM ko eka sWAna se [xUsare sWAna ko] le jAwe hEM .
(defrule align_single_id_for_no_slot_left
(declare (salience -9))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
?f2<-(alignment (anu_id ?aid) (man_id ?id1&:(=(- ?id 1) ?id1))  (anu_meaning ?amng ?v&ko) (man_meaning ?m))
(manual_word_info (head_id ?id) (word ?mng)(vibakthi ?v))
=>
	(retract ?f ?f1)
	(if (eq ?v 0 ) then
		(modify ?f2 (man_meaning ?m ?mng))
	else
		(modify ?f2 (man_meaning ?m ?mng ?v))
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
(manual_word_info (head_id ?id) (word $?mng))
=>
	(retract ?f0)
	(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng))) crlf)
)

(defrule print_left_over_wrd
(declare (salience -11))
?f0<-(left_over_ids ?id $?po ?lid)
(manual_word_info (head_id ?id) (word $?mng))
=>
        (retract ?f0)
	(assert (left_over_ids $?po ?lid))
	(bind ?m (string-to-field (str-cat (wx_utf8 (implode$ (create$ $?mng))) ",") ))
        (printout ?*lf-f* ?m " ")
)

;-------------------- Modify potential -------------------
(defrule potential_align
(declare (salience -12))
?f1<-(alignment (anu_id ?aid) (man_id ?id) (anu_meaning ?m) (man_meaning ?m))
?f0<-(alignment (anu_id ?aid2) (man_id ?id2) (anu_meaning ?m $?) (man_meaning $?mng1))
(test (neq ?aid ?aid2))
(alignment (anu_id ?aid3) (man_id ?id3&:(= (- ?id2 1) ?id3) ))
(test (neq ?aid3 =(- ?aid2 1)))
(not (modification done ))
=>
        (modify ?f0 (anu_id ?aid))
        (modify ?f1 (anu_id ?aid2))
	(assert (modification done ))
)

