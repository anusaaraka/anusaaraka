(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))


(defglobal ?*count* = 0)
(defglobal ?*fp* = dic_fp1)
(defglobal ?*s_file* = s_fp)

;-------------------------------------------------------------------------------------
(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;-------------------------------------------------------------------------------------
(defrule rm_prep_info
(declare (salience 1002))
?f0<-(id-word ?id in|of|on)
=>
        (retract ?f0)
)
;-------------------------------------------------------------------------------------
;Counts the number of verbs of anusaaraka sentence
(defrule verb_count_of_anu
(declare (salience 1001))
(pada_info (group_cat VP)(group_head_id  ?vid))
?f<-(anu_verb_count-verbs ?anu_verb_count $?verbs)
(test (not (integerp (member$ ?vid $?verbs))))
=>
        (retract ?f)
        (bind ?anu_verb_count (+ ?anu_verb_count 1))
        (bind $?verbs (create$ $?verbs ?vid))
        (assert (anu_verb_count-verbs ?anu_verb_count $?verbs))
)
;-------------------------------------------------------------------------------------
;Counts the number of verbs of manual sentence
(defrule verb_count_of_manual
(declare (salience 1001))
(chunk_name-chunk_ids-words VGF ?mid $? - $?)
?f<-(man_verb_count-verbs ?man_verb_count $?verbs)
(test (not (integerp (member$ ?mid $?verbs))))
=>
        (retract ?f)
        (bind ?man_verb_count (+ ?man_verb_count 1))
        (bind $?verbs (create$ $?verbs ?mid))
        (assert (man_verb_count-verbs ?man_verb_count $?verbs))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule cp_verb_count_fact
(declare (salience 1000))
?f0<-(man_verb_count-verbs ?c ?mid  $?ids)
?f1<-(anu_verb_count-verbs ?c ?aid  $?ids1)
(test (or (neq (length $?ids ) 0) (neq (length $?ids1 ) 0)))
(not (man_verbs $?))
=>
	(retract ?f0 ?f1)
	(bind $?m (sort > (create$ ?mid $?ids)))
        (bind $?a (sort > (create$ ?aid $?ids1)))
	(assert (man_verb_count-verbs ?c $?m))
	(assert (anu_verb_count-verbs ?c $?a))
	(assert (man_verbs  $?m))
	(assert (anu_verbs  $?a))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_verb_scope_fact
(declare (salience 950))
?f0<-(man_verbs  ?mid  $?ids)
?f1<-(anu_verbs  ?aid  $?ids1)
=>
	(retract ?f0 ?f1)
	(assert (anu_vid-man_v_id ?aid ?mid))
	(assert (man_verbs $?ids))
	(assert (anu_verbs $?ids1))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule cp_man_@_word
(declare (salience 1000))
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi $?v))
(test (eq (numberp ?mng) FALSE))
(test (neq (str-index "@" ?mng) FALSE))
=>
        (bind ?new_mng (remove_character "@" (implode$ (create$  ?mng)) ""))
        (assert (id-word-vib ?mid - ?new_mng - $?v))
)
;---------------------------  Add/modify database facts -----------------------------
;But the British crushed the movement in the country. 
;dic :the British = afgreja
(defrule rm_the_id_from_multi_fact
(declare (salience 1000))
?f0<-(database_info (group_ids $?p ?aid $?p1)(database_type multi))
(id-word ?aid the)
=>
	(modify ?f0 (group_ids $?p $?p1))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;assert dbase fact for mngs without space
;ex : man: Ayana maNdala  dic : AyanamaNdala 
(defrule get_dbase_fact
(declare (salience 1000))
(manual_word_info (head_id ?mid) (word ?m ?m1))
(database_info (meaning ?mng)(group_ids ?aid))
(test (eq (numberp ?m1) FALSE))
(test (eq (string-to-field (str-cat ?m ?m1)) ?mng))
(or (id-root ?aid ?root)(id-word ?aid ?root))
=>
	(assert (database_info (root ?root)(components ?m ?m1) (group_ids ?aid)))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;assert dbase fact for mngs without space
;ex : man: praXAnamanwrI dic : praXAna manwrI 
(defrule get_dbase_fact1
(declare (salience 1000))
(manual_word_info (head_id ?mid) (word ?mng))
(database_info (components ?m ?m1)(group_ids $?p ?aid $?po))
(test (eq (numberp ?mng) FALSE))
(test (eq (string-to-field (str-cat ?m ?m1)) ?mng))
(id-word ?aid ?root)
(not (database_info (components ?mng) (group_ids $?p ?aid $?po)))
=>
        (assert (database_info (root ?root)(meaning ?mng)(components ?mng) (group_ids $?p ?aid $?po)))
)
;-------------------------------------------------------------------------------------

;Added by Shirisha Manju
;to use in scope rule - becoz manual_word_info fact is removed after alignment
(defrule generate_man_id_and_grp_fact
(declare (salience 990))
(manual_word_info (head_id ?mid) (group_ids $?ids))
(not (id-grp_ids ?mid $?))
=>
	(assert (id-grp_ids ?mid - $?ids))
)
;-------------------------------------------------------------------------------------
(defrule get_current_word
(manual_word_info (head_id ?mid))
(not (manual_word_info (head_id ?mid1&:(< ?mid1 ?mid)))) 
=>
        (assert (current_id ?mid))
        (bind ?*count* 0)
        (assert (count_fact 0))
)

;============================== Anu Exact match  =============================================

;Added by Shirisha Manju 29-10-15
;Dev Anand said that his film would be released on the 30th of November 
;Anu: xeva Ananxa ne kahA ki usakA sinemA navambara meM se [30th] ko CodA jAegA
;Man: xevAnanxa ne bawAyA ki unakI yaha Pilma [30] navambara ko rilIja hogI .
(defrule align_no
(declare (salience 907))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?m)(vibakthi ?v $?vib))
(test (neq (numberp ?m) FALSE))
(id-Apertium_output ?aid ?mng $?rm)
(test (eq (numberp ?mng) FALSE))
(test (eq (string-to-field (sub-string 1 (- (length ?mng) 2) ?mng)) ?m))
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match align_no))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju 29-10-15
;Earlier, the 36th International Film Festival at Panaji was inaugrated with much fanfare and a colourful carnival.
;Anu: pahale, paNajI para [36th] intarnESanala sinemA uwsava bahuwa wurahInAxa Ora rafga-birafgA romana_kEWolika_logoM_ke_eka uwsava vAlA inaugrated.
;Man: isake pUrva paNajI meM rafgArafga kArnivAla ke [36veM] anwarrARtrIya Pilma samAroha kA SuBAramBa bade hI XUmaXAma se huA . 
(defrule align_no1
(declare (salience 907))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?m)(vibakthi ?v $?vib))
(test (eq (numberp ?m) FALSE))
(test (eq (sub-string (- (length ?m) 2) (length ?m) ?m) "veM"))
(id-Apertium_output ?aid ?mng $?rm)
(test (eq (numberp ?mng) FALSE))
(test (eq (sub-string 1 (- (length ?mng) 2) ?mng) (sub-string 1 (- (length ?m) 3) ?m)))
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match align_no1))

)
;-------------------------------------------------------------------------------------
;Eng_sen : This property of the body is called [inertia].
;Anu     : piMda kA yaha guNa [jadawva] kahA jAwA hE.
;Man     : vaswu ke isa guNa ko [jadawva] kahawe hEM.
(defrule anu_exact_match
(declare (salience 906))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng - 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_head_id ?aid)(vibakthi 0))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match anu_exact_match))
)
;-------------------------------------------------------------------------------------

;Eng  : This question was, [in fact], the starting point that led us to the notion of the electrostatic potential (Sections 2.1 and 2.2).
;Anu  : yaha praSna SurU_karane_kA sWAna [vAswava meM], WA, jisane ilektrovstEtika anwarnihiwa Sakwi kI (sekSanja 2.1 Ora 2.2) XAraNA ke lie hameM mArga xiKAyA.
;Man  : [vAswava meM], yaha praSna AraMBa biMxu WA jo hameM sWiravExyuwa viBava kI XAraNA kI ora le gayA WA (xeKie anuBAga 2.1 waWA 2.2 ).
;Eng : Instead of visible light, we can use an electron beam.
;Man : xqSya prakASa ke sWAna para hama, [ilektroYna-puFja kA] upayoga kara sakawe hEM.
;Anu : xqSya prakASa, kI bajAya hama [ilektroYna puFja kA] upayoga_kara sakawe hEM.
(defrule anu_exact_match1
(declare (salience 905))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib))(id-hyphen_word-vib ?mid - $?mng - $?vib)
					(id-hyphen_word-vib ?mid - $?mng $?vib - 0)) ;sabane == saba ne
(id-Apertium_output ?aid $?mng $?vib)
(test (neq (length $?vib) 0))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match1))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match anu_exact_match1))
)
;-------------------------------------------------------------------------------------

;Eng_sen : A few other industries in the fields of sugar, cement, paper etc. came up after [the [Second] World War].
;Anu     : cInI, simeMta, leKApawra Axi ke kRewroM meM kuCa anya uxyoga [xUsare] viSva yuxXa ke bAxa ke Upara bAxa_meM Ae.
;Man     : [xUsare] viSva yuxXa ke bAxa cInI , kAgaja Axi ke kuCa kAraKAne BI sWApiwa hue .
(defrule anu_gid_exact_match
(declare (salience 904))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng - 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_ids $? ?aid $? ?))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match1))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_gid_exact_match))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match anu_gid_exact_match))
)

;================================= Anu root match ========================================

;Added by Shirisha Manju 15-07-15
;Eng_sen : Here [we] have to deal with forces involving action at a distance.
;Anu     : yahAM [hameM] xUrI para kriyA SAmila baloM ke sAWa nipatanA hE.
;Man     : yahAz para [hamArI] xUrI para kAryarawa baloM se sAmanA howA hE.
(defrule anu_pronoun_match
(declare (salience 903))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word ?m)(vibakthi 0))(id-hyphen_word-vib ?mid - ?m - 0))
(man_word-root-cat ?m ?root p)
(id-HM-source ?aid ?root ?)
(pada_info (group_head_id ?aid)(vibakthi ?v&ko|kA|0))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match1))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_gid_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_pronoun_match))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_root_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_root_match anu_pronoun_match))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju 16-07-15
(defrule anu_wsd_match
(declare (salience 902))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng ?m)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng ?m - 0))
(man_word-root-cat ?m ?root&~ho ?)
(id-HM-source ?aid $?mng ?root ?)
(pada_info (group_head_id ?aid)(vibakthi 0))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match1))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_gid_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_pronoun_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_wsd_match))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_root_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_root_match anu_wsd_match))
)

;================================ Anu Exact match without vib =============================

;if man vib present and anu vib absent 
;Eng_sen : This [property] of the body is called inertia.
;Anu	 : piMda kA yaha [guNa] jadawva kahA jAwA hE.
;Man     : vaswu ke isa [guNa ko] jadawva kahawe hEM.
(defrule exact_match_without_vib 
(declare (salience 900))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?vib)(group_ids $?grp_ids))(id-hyphen_word-vib ?mid - $?mng - ?v $?vib))
(test (neq ?v 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_head_id ?aid)(vibakthi 0))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib))
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
	(assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match_without_vib exact_match_without_vib))
)
;---------------------------------------------------------------------------------------------------- 

;if man vib absent and anu vib present
;Subsequently, the subjects of [kinetic theory] and [statistical mechanics] interpreted these quantities in terms of the properties of the molecular constituents of the bulk system.
;wawpaScAw [aNugawi sixXAnwa] waWA [sAfKyikIya yAnwrikI] viRayoM ke anwargawa inhIM rASiyoM kI vyAKyA vqhaxAkAra nikAyoM ke ANvika avayavoM ke guNoM ke paxoM meM kI gaI.
;(database_info (components aNugawi sixXAnwa) (database_name eng_phy_multi_word_dic.gdbm) (database_type multi) (group_ids 5 6))
(defrule exact_match_without_vib1
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng $?prep)
(id-HM-source ?pid $?prep ?)
(pada_info (group_head_id ?aid) (preposition $? ?pid&~0 $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib1))
=>

        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match_without_vib exact_match_without_vib1))
)

;------------------------------------------------------------------------------------------------- 
;if anu vib and man vib differ
;Added by Shirisha Manju
;The lengths of the [line segments] representing these vectors are proportional to the magnitude of the vectors.
;Man: ina saxiSoM ko vyakwa karane vAlI [reKA-KaNdoM kI] lambAiyAz saxiSoM ke parimANa ke samAnupAwI hEM .
;Anu: ye saxiSa vyakwa kara [reKA KaNdoM kA] lambAI/lambAiyAz saxiSa ke parimANa ke lie samAnupAwI hEM.
(defrule exact_match_without_vib2
(declare (salience 901))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?)(group_ids $?grp_ids)) (id-hyphen_word-vib ?mid - $?mng - ?v $?))
(test (neq ?v 0))
(id-Apertium_output ?aid $?mng $?prep)
(id-HM-source ?pid $?prep ?)
(pada_info (group_head_id ?aid) (preposition $? ?pid&~0 $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib2))
;(or (pada_info (group_head_id ?aid) (preposition $? ?pid&~0 $?))(pada_info (group_ids $? ?aid $?) (preposition $? ?pid&~0 $?)))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_exact_match_without_vib exact_match_without_vib2))
)

;==================================== Exact dictionary match ==========================================

;Eng: Physics is exciting in many ways.
;Man: BOwikI kaI [prakAra] [se] uwwejaka hE
;Anu: BOwika vijFAna bahuwa [mArgoM] [meM] romAFcaka hE.
(defrule man_word_and_vib_match_using_dic
(declare (salience 870))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)) (id-hyphen_word-vib ?mid - $?mng - $?vib))
(database_info (components $?mng)(group_ids $? ?id $?))
(id-word ?id ?)
(database_info (components $?vib)(group_ids $? ?vib_id $?))
(pada_info (group_head_id  ?id)(preposition ?vib_id))
(not (anu_id-man_id-src-rule_name ?id ?mid  man_word_and_vib_match_using_dic))
=>
	(assert (anu_id-man_id-type ?id ?mid  dictionary_match))
	(assert (anu_id-man_id-src-rule_name ?id ?mid dictionary_match man_word_and_vib_match_using_dic))
)
;-------------------------------------------------------------------------------------
;Speculation and conjecture also have a place in science; but ultimately, a scientific theory, to be acceptable, must be verified by relevant observations or experiments.
;nirAXAra kalpanA waWA anumAna lagAne kA BI vijFAna meM sWAna hEH paranwu, anwawaH, kisI vEjFAnika sixXAnwa ko svIkArya yogya banAne ke lie, use prAsafgika prekRaNoM aWavA [prayogoM xvArA] sawyApiwa kiyA jAnA BI AvaSyaka howA hE.  
(defrule man_root_and_vib_match_using_dic
(declare (salience 850))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?m ?mng)(vibakthi $?vib))
(man_word-root-cat ?mng ?root ?)
(database_info (components $?m ?root)(group_ids $? ?id $?))
(id-word ?id ?)
(pada_info (group_head_id  ?id)(preposition $? ?vib_id $?))
(database_info (components $?vib)(group_ids $? ?vib_id $?))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_root_and_vib_match_using_dic))
;(not (anu_id-man_id-src-rule_name ?id ?mid ?  man_word_and_vib_match_using_dic))
=>
        (assert (anu_id-man_id-type ?id ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?id ?mid dictionary_match man_root_and_vib_match_using_dic))
)
;---------------------------------------------------------------------------
;To avoid this, a common compromise is the [cross-sectional] shape shown in Fig. 9.9(c)
;isase bacane ke lie sAXAraNawayA ciwra 9.9(@c) meM xiKAI gaI Akqwi kA [anuprasWa paricCexa] liyA jAwA hE.
(defrule man_word_match_using_dic
(declare (salience 840))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))  (id-hyphen_word-vib ?mid - $?mng - 0))
(database_info (components $?mng)(group_ids $? ?aid $?))
(id-word ?aid ?)
(not (pada_info (preposition ?aid)))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_root_and_vib_match_using_dic))
;(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match man_word_match_using_dic))
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
;He had forgotten the note of that bell, and now its peculiar tinkle seemed to remind him of something and to bring it clearly before him....
;vaha usa GaMtI kI AvAja BUla cukA WA. so usakI [ajIba-sI] tanatanAhata suna kara aba use EsA lagA jEse use koI cIja yAxa A gaI ho Ora vahI cIja sAPa wOra para usake sAmane A gaI ho
;ajIba-sI <==> ajIba
(defrule man_hyphen_wrd_match_using_dic
(declare (salience 839))
(current_id ?mid)
(or (id-hyphen_word-vib ?mid - $?mng sA|sI|se - 0)(id-hyphen_word-vib ?mid - $?mng - 0))
(database_info (components $?mng)(group_ids $? ?aid $?))
(id-word ?aid ?)
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match man_hyphen_wrd_match_using_dic))
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
;When the Prince Shreyanshkumar came to know of this he remembered the tradition of his ancestors to abandon [food and water] .
;rAjakumAra SreyaMRakumAra ko jaba isa bAwa kA jFAna huA wo unheM apane pUrvajoM kI [anna-jala] wyAgane kI praWA kA smaraNa ho AyA .
(defrule man_hyphen_wrd_match_using_dic_for_conj
(declare (salience 839))
(current_id ?mid)
(id-hyphen_word-vib ?mid - ?m ?m1 - 0)
(database_info (components ?m)(group_ids $? ?aid $?))
(database_info (components ?m1)(group_ids $? ?aid1 $?))
(conjunction-components ?conj ?aid ?aid1)
(not (anu_id-man_id-src-rule_name ?aid1 ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid1 ?mid ?  man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid1 ?mid ?  man_word_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid1 ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid1 ?mid dictionary_match man_hyphen_wrd_match_using_dic_for_conj))
)
;---------------------------------------------------------------------------
(defrule man_root_match_using_dic
(declare (salience 835))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?m ?mng)(vibakthi 0)) (id-hyphen_word-vib ?mid - $?m ?mng - 0))
(man_word-root-cat ?mng ?root&~kara&~ho ?)
(database_info (components $?m ?root)(group_ids $? ?aid $?))
(id-word ?aid ?w&~the)
(not (pada_info (preposition ?aid)))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_word_and_vib_match_using_dic|man_word_match_using_dic))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_root_and_vib_match_using_dic|man_root_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match man_root_match_using_dic))
)

;======================================= dictionary without vib =============================

;if vib present and there is no dic match for vib
(defrule dic_word_match_without_vib
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?))
(test (neq ?v 0))
(database_info (components $?mng)(group_ids $? ?aid $?))
(id-word ?aid ?)
(not (pada_info (preposition $? ?aid $?)))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? man_word_and_vib_match_using_dic|man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_word_match_using_dic|man_root_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match_without_vib dic_word_match_without_vib))
)
;---------------------------------------------------------------------------

;You will learn more about the significant figures in section 2.7.
;anuBAga 2.7 meM Apa sArWaka afkoM ke viRaya meM Ora viswAra se sIKeMge.  sArWaka afkoM == man  sArWaka afka == dic  
(defrule dic_root_match_without_vib
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?m ?mng)(vibakthi ?v $?vib))
(test (neq ?v 0))
(man_word-root-cat ?mng ?root ?)
(database_info (components $?m ?root)(group_ids $? ?aid $?))
(id-word ?aid ?)
(not (pada_info (preposition $? ?aid $?)))
(not (anu_id-man_id-src-rule_name ? ?mid ?  man_word_and_vib_match_using_dic|man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  dic_word_match_without_vib|verb_root_match_using_dic))
=>
	(assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match_without_vib dic_root_match_without_vib))
)
;---------------------------------------------------------------------------
;The great eruption of krakatau must have taken place around 416 ad, as reported in ancient javanese scriptures.
;ANU: krakatau kA badA uxaBexana 416 krIswa paScAwa lagaBaga, [huA hogA] jEsA ki prAcIna joYvanIja XarmagranWoM meM praswuwa kiyA.
;MAN: krakatU kA viSAla visPot lagaBaga 416 IsvI meM [huA] ,jEsA ki prAcIna jAvanIja SAswroM meM xarja hE .
(defrule partial_match_with_anu
(declare (salience 811))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?mng $? ))
(or (id-Apertium_output ?aid ?mng $?)(id-HM-source ?aid ?mng ?))
(not (got_wsd_align ?aid ?mid))
(not (anu_id-man_id-src-rule_name ? ?mid ? anu_exact_match|anu_gid_exact_match|anu_exact_match1|exact_match_without_vib|exact_match_without_vib1|exact_match_without_vib2|partial_word_match_with_anu|partial_word_match_with_anu1|partial_word_match_with_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  partial_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid partial_match partial_match_with_anu))
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule partial_match_with_anu1
(declare (salience 810))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $? ?mng $? ))(manual_word_info (head_id ?mid)(word $? ?mng $? ?v&se|ko|ke)))
(man_word-root-cat ?mng ?r ?)
(test (and (eq (integerp (member$ ?mng (create$ WI WA kI kara hE ho hue huI huA hEM hI vajaha se jEsA))) FALSE)(eq (integerp (member$ ?r (create$ WA kara ho))) FALSE)))
(or (id-Apertium_output ?aid $? ?mng $?)(id-Apertium_output ?aid $? ?r $?))
(not (got_wsd_align ?aid ?mid))                
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match|anu_gid_exact_match|anu_exact_match1|exact_match_without_vib|exact_match_without_vib1|exact_match_without_vib2|partial_word_match_with_anu|partial_word_match_with_anu1|partial_word_match_with_dic|partial_match_with_anu))
=>
        (assert (anu_id-man_id-type ?aid ?mid  partial_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid partial_match partial_match_with_anu1))
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
;The little flats in such houses always have bells that [ring] like that.
;isa waraha ke Cote-Cote PlEtoM kI GaNtiyAz hameSA [isI waraha kI] [AvAja karawI hEM] .
;dic: ring = AvAja , like =  usI warAha
;In that [quarter] of the town, however, scarcely any shortcoming in dress would have created surprise. 
;lekina Sahara ke usa [hisse] meM kapadoM kI kisI BI kamI para SAyaxa hI kisI ko hErAnI howI hogI.
;dic: quarter = cOWAI_hissA  man_mng =hisse man_root=hissA
(defrule partial_word_match_with_dic
(declare (salience 834))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $? ?mng $? ))(manual_word_info (head_id ?mid)(word $? ?mng $? ?v&se|ko|ke))(id-hyphen_word-vib ?mid - ?mng ? - ?))
(man_word-root-cat ?mng&~lIjie ?r ?c&~p&~prsg&~sh)
(test (eq (integerp (member$ ?r (create$ se sA WI WA kI kA kara raha pada jA hE ho hue huI huA hI hEM howA))) FALSE))
(or (database_info (components $? ?mng $?)(group_ids ?aid))(database_info (components $? ?r $?)(group_ids ?aid))(id-left_word-possible_mngs ?aid ? $? ?mng $?)) 
(id-word ?aid ?)
(not (pada_info (preposition $? ?aid $?)))
(not (got_wsd_align ?aid ?mid))
(not (anu_id-man_id-src-rule_name ? ?mid ? man_word_match_using_dic|man_root_match_using_dic|anu_exact_match|anu_exact_match1|man_root_and_vib_match_using_dic|man_word_and_vib_match_using_dic|anu_gid_exact_match|anu_wsd_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib|exact_match_without_vib1|exact_match_without_vib2|partial_word_match_with_anu|partial_word_match_with_anu1|partial_word_match_with_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  partial_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid partial_match partial_word_match_with_dic))
)

(defrule partial_word_match_for_hyphen_word
(declare (salience 834))
(current_id ?mid)
(id-hyphen_word-vib ?mid - ?mng ? - ?)
(or (database_info (components $? ?mng $?)(group_ids ?aid))(id-left_word-possible_mngs ?aid ? $? ?mng $?))
(not (pada_info (preposition $? ?aid $?)))
(not (got_wsd_align ?aid ?mid))
(not (anu_id-man_id-src-rule_name ? ?mid ? man_word_match_using_dic|man_root_match_using_dic|anu_exact_match|anu_exact_match1|man_root_and_vib_match_using_dic|man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_gid_exact_match))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_without_vib|exact_match_without_vib1|exact_match_without_vib2|partial_word_match_with_anu|partial_word_match_with_anu1|partial_word_match_with_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  partial_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid partial_match partial_word_match_with_dic))
)



;=================================   verb rules =================================================
;Check for manual verb[root] and tam match in the dictionary
; The strong nuclear force binds protons and neutrons in a nucleus.  
(defrule verb_root_and_tam_match_using_dic
(declare (salience 880))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(vibakthi $?tam)(group_ids $?grp_ids))
(database_info (components $?v_root)(group_ids $? ?aid $?))
(id-word ?aid ?)
(tam_database_info (e_tam ?e_tam) (components $?tam ))
;(e_tam-id-dbase_name-mng ?e_tam ? ? $?tam)
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_match verb_root_and_tam_match_using_dic))
)
;-------------------------------------------------------------------------------------
;Therefore, an atom must also contain some positive charge to [neutralise] the negative charge of the electrons.
;isalie, ilektroYna ke qNa AveSa ko [niRpraBAviwa karane ke lie] paramANu meM XanAwmaka AveSa BI avaSya honA cAhie.
(defrule verb_root_match_using_dic
(declare (salience 840))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word $?r)(root $?root)(vibakthi $?tam))
(test (neq $?tam 0))
(database_info (components $?root)(group_ids $? ?eid $?))
(id-word ?eid ?w&~have&~to)
(test (neq (integerp (member$ $?root (create$ ho kara))) TRUE))
(not (pada_info (preposition ?eid)))
(not (anu_id-man_id-src-rule_name ?eid ?mid ? verb_root_and_tam_match_using_dic|verb_match_with_WSD))
(not (anu_id-man_id-src-rule_name ? ?mid ? anu_exact_match|anu_exact_match1))
(not (anu_id-man_id-src-rule_name ?eid ?mid ? anu_wsd_match))
=>
	(assert (anu_id-man_id-type ?eid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid dictionary_match verb_root_match_using_dic))
)
;---------------------------------------------------------------------------
;;Added by Shirisha Manju
;;We shall confine ourselves to the study of motion of objects along a straight line, also [known] as rectilinear motion.
;;isa aXyAya meM hama apanA aXyayana vaswu ke eka sarala reKA ke anuxiSa gawi waka hI sImiwa raKeMge ;isa prakAra kI gawi ko sarala reKIya gawi BI [kahawe hEM] .
(defrule verb_match_with_WSD
(declare (salience 841))
(current_id ?mid)
(manual_word_info (head_id ?mid)(root $?root))
;(or (manual_word_info (head_id ?mid)(root $?root))(manual_word_info (head_id ?mid)(word $?root)))
(id-HM-source ?aid $?root WSD_root_mng|WSD_word_mng)
(not (anu_id-man_id-src-rule_name ? ?mid  ? anu_exact_match|anu_wsd_match|anu_exact_match1))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? exact_match_with_anu_output1|exact_match_with_anu_output2|exact_match_with_anu_output3))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? verb_root_match_using_dic))
(not (anu_id-man_id-src-rule_name ? ?mid  ? verb_root_and_tam_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_root_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_root_match verb_match_with_WSD))
        (assert (got_wsd_align ?aid ?mid))
)

;---------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_match_with_anu
(declare (salience 878))
(current_id ?mid)
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
=>
        (assert (anu_id-man_id-type ?aid ?mid  single_verb_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid single_verb_match single_verb_match_with_anu))
)

;---------------------------------------------------------------------------
;dic:
;Eng : This property of the [body] is called inertia.
;Anu : [piMda kA] yaha guNa jadawva kahA jAwA hE.				Man : [vaswu ke] isa guNa ko jadawva kahawe hEM.
;Eng : Three or four door-keepers were employed on the building.
;Anu : wIna yA cAra [xvArapAla] imArawa para kAma_para lagAyA gayA WA.	     	Man : wIna-cAra [xarabAna] BI paharA xene ke lie We
(defrule lookup_man_word_in_hindi_wordnet
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?m_mng)(vibakthi $?vib))
(man_word-root-cat ?m_mng ?h_root ?)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) "FALSE"))
(or (database_info (meaning ?mng) (group_ids $? ?aid $?))(id-Apertium_output ?aid ?mng))
(not (pada_info (preposition ?aid)))
(id-word ?aid ?)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
(not (anu_id-man_id-src-rule_name ?aid ?mid hindi_wordnet ?))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root)))))
        (if (neq ?dic_val "FALSE") then
		(assert (anu_id-man_id-type ?aid ?mid  hindi_wordnet_match))
        	(assert (anu_id-man_id-src-rule_name ?aid ?mid hindi_wordnet_match lookup_man_word_in_hindi_wordnet))
        )
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
;Koje  hEM <==> DUzDanA
(defrule lookup_man_root_in_hindi_wordnet
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid) (root ?h_root)(vibakthi $?vib))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) "FALSE"))
(or (database_info (meaning ?mng) (group_ids $? ?aid $?))(id-Apertium_output ?aid ?mng))
(not (pada_info (preposition ?aid)))
(id-word ?aid ?)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
(not (anu_id-man_id-src-rule_name ?aid ?mid hindi_wordnet ?))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root)))))
        (if (neq ?dic_val "FALSE") then
                (assert (anu_id-man_id-type ?aid ?mid  hindi_wordnet_match))
                (assert (anu_id-man_id-src-rule_name ?aid ?mid hindi_wordnet_match lookup_man_word_in_hindi_wordnet))
        )
)



;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Similarly, we can argue that it lies on the median MQ and NR.
;isI prakAra hama [warka kara sakawe hEM] ki yaha mAXyikA @MQ Ora @NR para BI avasWiwa hogA.
;In Rutherford's nuclear model of the atom, the entire positive charge and most of the mass of the atom [are concentrated] in the nucleus with the electrons some distance away. 
;raxaraPorda ke paramANu ke nABikIya moYdala meM, paramANu kA kula XanAveSa waWA isakA aXikAMSa xravyamAna paramANu ke bahuwa Cote se Ayawana meM [safkeMxriwa howA hE] jise nABika kahawe hEM waWA ilektroYna isase kuCa xUra howe hEM .
(defrule kriyA_mUla_partial_match
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid)(root $?v_root ?r&kara|ho|xe))
(test (neq (length $?v_root) 0))
(or (database_info (components $? $?v_root $? ?r)(group_ids $? ?aid $?))(database_info (components $? $?v_root $?)(group_ids $? ?aid $?))(id-HM-source ?aid $? $?v_root ?r ?))
(test (neq (integerp (member$ $?v_root (create$ ho kara))) TRUE))
;(or (database_info (components $?v_root $? ?r)(group_ids $? ?aid $?))(database_info (components $?v_root $?) (database_type single)(group_ids $? ?aid $?)))
(not (anu_id-man_id-src-rule_name ?aid ?mid kriyA_mUla_with_dic kriyA_mUla_partial_match))
=>
	(assert (anu_id-man_id-type ?aid ?mid  kriyA_mUla_partial_match))
	(assert (anu_id-man_id-src-rule_name ?aid ?mid kriyA_mUla_partial_match kriyA_mUla_partial_match))
)

;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule tam_match
(declare (salience 810))
(current_id ?mid)
(manual_word_info (head_id ?mid) (vibakthi $?tam))
(tam_database_info (e_tam ?etam) (components $?tam))
(id-TAM ?aid ?etam)
=>
	(assert (anu_id-man_id-type ?aid ?mid  hindi_tam_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid hindi_tam_match tam_match))
)


(defrule tam_match1
(declare (salience 810))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid ? ?)
(anu_id-man_id-src-rule_name ?aid ?mid1 ? ?)
(test (neq ?mid ?mid1))
(or (id-Apertium_output ?aid $?mng ?v&ke ?v1) (id-Apertium_output ?aid $?mng ?v))
(or (manual_word_info (head_id ?mid) (word $?mng) (vibakthi ?v1)) (manual_word_info (head_id ?mid) (word $?mng) (vibakthi ?v ?v1))(manual_word_info (head_id ?mid) (word $?mng) (vibakthi ?v)))
(not (anu_id-man_id-src-rule_name ?aid ?mid hindi_tam_match ?))
=>
        (assert (anu_id-man_id-type ?aid ?mid  hindi_tam_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid hindi_tam_match tam_match1))
)


;================================ English word rules ====================================
;Eng : This process under forward bias is known as minority [carrier] [injection].
;Anu : agra aBinawi ke nIce yaha prakriyA alpasafKyaka vAhaka iMjekSana kI waraha jAnI jAwI hE.
;Man : agraxiSika bAyasa meM hone vAle isa prakrama ko alpAMSa vAhaka aMwaHkRepaNa (@Minority [@carrier] [@injection]) kahawe hEM.
(defrule check_match_with_english_word
(declare (salience 800))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word $?word))
(test (neq (str-index @ (implode$ (create$ $?word))) FALSE))
(or (id-word ?eid $?word1)(id-original_word ?eid $?word1))
(test (eq (explode$ (str-cat  @ (implode$ (create$ $?word1)))) $?word))
(not (anu_id-man_id-src-rule_name ? ?mid english_word_match $?))
=>
	(assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid english_word_match check_match_with_english_word))
)
;-------------------------------------------------------------------------------------
;check_match_with_english_word and check_match_with_english_word1 are the same rules just the test condition differs [?word and $?word] 
;As I was getting problem in test condition I handled it in a seperate rule.
;need to improve the rule. 
(defrule check_match_with_english_word1
(declare (salience 831))
(current_id ?mid)
(or (manual_word_info (head_id ?mid)(word ?word))(id-word-vib ?mid - ?word - $?))
(id-original_word ?eid ?word)
;(manual_word_info (head_id ?mid)(word ?word))
;(test (neq (str-index @ (implode$ (create$ ?word))) FALSE))
;(id-original_word ?eid ?word1)
;(test (or (eq ?word1 ?word) (eq (string-to-field (str-cat (sub-string 1 (- (str-index @ (implode$ (create$ ?word))) 1) ?word) (sub-string (+ (str-index @ (implode$ (create$ ?word))) 1) (length (implode$ (create$ ?word))) ?word))) ?word1)))
=>
	(assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid english_word_match check_match_with_english_word1))
)

(defrule check_match_with_english_word2
(declare (salience 830))
(current_id ?mid)
(or (manual_word_info (head_id ?mid)(word ?word))(id-word-vib ?mid - ?word - $?))
(id-word ?eid ?word)
;(manual_word_info (head_id ?mid)(word ?word))
;(test (neq (str-index @ (implode$ (create$ ?word))) FALSE))
;(id-word ?eid ?word1)
;(test (or (eq ?word1 ?word) (eq (string-to-field (str-cat (sub-string 1 (- (str-index @ (implode$ (create$ ?word))) 1) ?word) (sub-string (+ (str-index @ (implode$ (create$ ?word))) 1) (length (implode$ (create$ ?word))) ?word))) ?word1)))
(not (anu_id-man_id-src-rule_name ? ?mid english_word_match $?))
=>
        (assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid english_word_match check_match_with_english_word1))
)

;================================ transliterate rules =================================================
;Eng Sen :: My name is Kular.
;Anu translation :: मेरा नाम कुलार है.
;Man translation :: मेरा नाम कुलार है .
(defrule check_match_with_transliterate_mng
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word ?mng))
(word-transliterate_mng ?word ?mng)
(id-word ?aid  ?word)
=>
	(assert (anu_id-man_id-type ?aid ?mid  transliteration_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid transliteration_match check_match_with_transliterate_mng))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Since Apharan was to be premiered there, Bipasha's presence was all the more important.
;(word-transliterate_mng  bipasha bipASA) ; (id-word 8  bipasha's)
;to handle 's case
(defrule check_match_with_transliterate_mng1
(declare (salience 829))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word ?mng))
(word-transliterate_mng ?word ?mng)
(id-word ?aid  ?word1)
(test (neq (numberp ?word1) TRUE))
(test (neq (str-index "'" ?word1) FALSE))
(test (eq (string-to-field (sub-string 1 (- (length ?word1) 2) ?word1)) ?word))
=>
        (assert (anu_id-man_id-type ?aid ?mid  transliteration_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid transliteration_match check_match_with_transliterate_mng1))
)
;============================= phrasal alignment =======================================================
;Added by Shirisha Manju
;It can be noted that each term represents a periodic function with a different angular frequency.
;XyAna xIjie, yahAz prawyeka paxa eka viBinna koNIya Avqwwi ke AvarwI Palana ko [nirUpiwa karawA hE].
;phrasal -- nirUpiwa
(defrule partial_align_with_l
(declare (salience 840))
(current_id ?mid)
(manual_word_info (head_id ?mid) (root $?man_mng ?k&kara|ho) )
(test (neq (length $?man_mng) 0))
(anu_id-anu_mng-man_mng ?aid  ?  $?man_mng)
(id-word ?aid ?)
=>
        (assert (anu_id-man_id-type ?aid ?mid  L_layer_pharasal_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  L_layer_pharasal_match align_using_phrasal_data_L))
	(assert (got_align ?mid))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule align_using_phrasal_data_L
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?man_mng))
(anu_id-anu_mng-man_mng ?aid  ?w&~@PUNCT-Comma  $?man_mng)
(id-word ?aid ?)
(not (got_align ?mid))
=>
	(assert (anu_id-man_id-type ?aid ?mid  L_layer_pharasal_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  L_layer_pharasal_match align_using_phrasal_data_L))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule align_using_phrasal_data_M1
(declare (salience 831))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?man_mng) (vibakthi ?vib))
(eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng ?vib) 
(id-word ?aid ?)
=>
        (assert (anu_id-man_id-type ?aid ?mid  M_layer_pharasal_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  M_layer_pharasal_match align_using_phrasal_data_M1))
	(assert (got_M_layer_for ?mid))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Circular motion is a familiar class of motion that has a special significance in [daily-life] situations.
;vqwwIya gawi se hama BalIBAzwi pariciwa hEM jisakA hamAre [xEnika jIvana] meM viSeRa mahawwva hE .
(defrule align_using_phrasal_data_M
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?man_mng))
;(or (eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng) (eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng ?v&meM|se|ko|ke)(eng_id-eng_wrd-man_wrd  ?aid ? ?n&hamAre $?man_mng))
(or (eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng)(eng_id-eng_wrd-man_wrd  ?aid ? ?n&hamAre|jise|jisa $?man_mng))
(id-word ?aid ?)
(not (got_M_layer_for ?mid))
=>
        (assert (anu_id-man_id-type ?aid ?mid  M_layer_pharasal_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid M_layer_pharasal_match align_using_phrasal_data_M))
)

;============================== get scope ============================================
;Added by Shirisha Manju
(defrule get_small_scope_fact
(declare (salience 813))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(or (anu_id-man_id-src-rule_name ?aid1 =(- ?mid 1) $?)(anu_id-man_id-src-rule_name ?aid1 =(+ ?mid 1) $?))
(pada_info (group_cat ~VP)(group_ids $?grp))
(test (integerp (member$ ?aid $?grp)))
(test (integerp (member$ ?aid1 $?grp)))
(not (anu_id-man_id-src-rule_name ? ?mid $? scope $?))
=>
        (assert (anu_id-man_id-type ?aid ?mid  scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  scope get_small_scope_fact))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
;But he had to agree in the face of her strong determination.
;lekina, [usakI] xqDa icCA ke Age unheM JukanA padA .
(defrule get_small_scope_fact_for_pronoun
(declare (salience 812))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(manual_id-word ?mid usakI|unakI|usakA|use|apane)
(or (anu_id-man_id-src-rule_name ?aid1 =(- ?mid 1) $?)(anu_id-man_id-src-rule_name ?aid1 =(+ ?mid 1) $?))
(test (or (eq (- ?aid ?aid1) 1) (eq (- ?aid1 ?aid) 1)))
(not (anu_id-man_id-src-rule_name ? ?mid $? scope $?))
=>
        (assert (anu_id-man_id-type ?aid ?mid  scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  scope get_small_scope_fact))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_large_scope_fact
(declare (salience 810))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(manual_id-word ?mid ?mng)
(test (eq (member$ ?mng (create$ usa usake usakI unakI unake usakA use apane apanI)) FALSE))
(anu_id-man_id-src-rule_name ?aid1 =(- ?mid 1) $?)
(mot-cat-praW_id-largest_group ? NP|PP ? $?grp)
(test (integerp (member$ ?aid $?grp)))
(test (integerp (member$ ?aid1 $?grp)))
(not (anu_id-man_id-src-rule_name ? ?mid $? scope $?))
=>
	(assert (anu_id-man_id-type ?aid ?mid  scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid  scope get_large_scope_fact))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_manual_scope
(declare (salience 809))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(id-grp_ids ?mid -  $? ?id)
(or (anu_id-man_id-src-rule_name =(+ ?aid 1) ?mid1&:(= (+ ?id 1) ?mid1) $?) (anu_id-man_id-src-rule_name =(- ?aid 1) ?mid1&:(= (- ?mid 1) ?mid1) $?))
(chunk_name-chunk_ids ? $?grp)
(test (integerp (member$ ?mid1 $?grp)))
(test (integerp (member$ ?mid $?grp)))
(not (anu_id-man_id-src-rule_name ?aid ?mid $? manual_scope $?))
=>
        (assert (anu_id-man_id-type ?aid ?mid  manual_scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid manual_scope get_manual_scope))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_manual_scope1
(declare (salience 811))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(manual_word_info (head_id ?mid) (word Ora|yA|evaM))
(or (and (anu_id-man_id-src-rule_name ?aid1&:(= (+ ?aid 1) ?aid1) ?mid1&:(= (+ ?mid 1) ?mid1) $?)(chunk_name-chunk_ids CCP ?mid)(chunk_name-chunk_ids ? ?mid1 $?grp))
    (and (anu_id-man_id-src-rule_name ?aid1&:(= (- ?aid 1) ?aid1) ?mid1&:(= (- ?mid 1) ?mid1) $?)(chunk_name-chunk_ids CCP ?mid)(chunk_name-chunk_ids ? $?grp ?mid1)))
(not (anu_id-man_id-src-rule_name ?aid ?mid $? manual_scope $?))
(not (anu_id-man_id-src-rule_name ?aid1 ?mid1 $? manual_scope $?))
=>
        (assert (anu_id-man_id-type ?aid ?mid  manual_scope))
        (assert (anu_id-man_id-type ?aid1 ?mid1  manual_scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid manual_scope get_manual_scope))
        (assert (anu_id-man_id-src-rule_name ?aid1 ?mid1 manual_scope get_manual_scope))
)
;-------------------------------------------------------------------------------------
(defrule get_verb_scope
(declare (salience 811))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(anu_vid-man_v_id ?aid ?mid)
(not (anu_id-man_id-src-rule_name ?aid ?mid manual_scope ?))
=>
	(assert (anu_id-man_id-type ?aid ?mid  manual_scope))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid manual_scope get_verb_scope))
)
;-------------------------------------------------------------------------------------
(defrule rm_aux_score_fact
(declare (salience 250))
(root-verbchunk-tam-chunkids ? ? ? $? ?aux ?h)
(anu_id-man_id-src-rule_name ?h ?mid single_verb_match single_verb_match_with_anu)
(anu_id-man_id-src-rule_name ?m ?mid ? ?)
(anu_id-man_id-type ?m ?mid ?t)
(manual_id-word ?mid hE)
(test (neq ?m ?h))
=>
        (assert (info_created ?m ?mid ?t))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule create_file
(declare (salience -7))
(current_id ?mid)
(or (manual_word_info (head_id ?mid)(group_ids $?ids ?id))(id-grp_ids ?mid - $?ids ?id))
(anu_id-man_id-src-rule_name ?aid ?mid ?types&~hnd_and_std_rel_match ?)
;?f0<-(anu_id-man_id-type ?aid ?mid  ?types)
(not (info_created ?aid ?mid ?types))
=>
;        (retract ?f0)
        (bind ?f_name (str-cat ?mid "_info"))
	(bind ?len (length$ $?ids))
	(if (eq ?len 0) then
		(printout ?*s_file* crlf ?f_name "  "?mid","?aid","?types crlf)
	        (assert (info_created ?aid ?mid ?types))
	else
		(bind ?new_id " ")
		(loop-for-count (?i 1 ?len)
			(bind ?j (nth$ ?i $?ids))
			(bind ?new_id (str-cat ?new_id ?j "+" ))
		)
		(bind ?new_id (str-cat ?new_id ?id))
		(printout ?*s_file* crlf ?f_name "  "?new_id","?aid","?types crlf)
	        (assert (info_created ?aid ?mid ?types))
	)

)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule create_file1
(declare (salience -8))
(current_id ?mid)
(or (manual_word_info (head_id ?mid)(group_ids $?ids ?id))(id-grp_ids ?mid - $?ids ?id))
(not (anu_id-man_id-src-rule_name ? ?mid $?))
(not (anu_id-man_id-type ? ?mid  ?))
(not (info_created ?mid))
=>
        (bind ?f_name (str-cat ?mid "_info"))
	(bind ?len (length$ $?ids))
        (if (eq ?len 0) then
		(printout ?*s_file* crlf "no_match_found  "?mid crlf)
		(assert (no_match_found ?mid))
                (assert (info_created ?mid))
        else
                (bind ?new_id " ")
                (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?ids))
                        (bind ?new_id (str-cat ?new_id ?j "+" ))
                )
                (bind ?new_id (str-cat ?new_id ?id))
		(printout ?*s_file* crlf "no_match_found  "?new_id crlf)
		(assert (no_match_found ?mid))
                (assert (info_created ?mid))
        )
)
;-------------------------------------------------------------------------------------
(defrule rm_current_id
(declare (salience -9))
(current_id ?mid)
?f0<-(manual_word_info (head_id ?mid))
=>
        (retract ?f0)
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_row_colm_info
(declare (salience -10))
(expr $?order)
(heuristics $?row)
=>
        (printout ?*s_file* crlf " anu_eng_order : "(length $?row) "," (length$ $?order) crlf crlf)
        (printout ?*s_file* "heuristics  "  (implode$ $?row)  crlf crlf)
)
;-------------------------------------------------------------------------------------
(defrule manul_sen_length
(declare (salience -10))
(current_id ?mid)
(not (current_id ?mid1&:(< ?mid ?mid1) ))
=>
	(printout ?*s_file* "manual_sen_length : " ?mid)
)
