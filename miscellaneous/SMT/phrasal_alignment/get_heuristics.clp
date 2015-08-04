(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (slot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))


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
;In a good number of situations in real-life, the size of objects can be neglected and they can be considered as point-like objects without much error.
;vAswavika jIvana meM [bahuwa-sI] sWiwiyoM meM vaswuoM ke AmApa (sAija) kI upekRA kI jA sakawI hE Ora binA aXika wruti ke unheM eka [biMxu-vaswu] mAnA jA sakawA hE .
;not modified in manual_word_info bcoz we are not modifying phrasal info
(defrule cp_man_hypen_word
(declare (salience 1000))
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi $?v))
(test (eq (numberp ?mng) FALSE))
(test (neq (str-index "-" ?mng) FALSE))
=>
	(bind ?new_mng (remove_character "-" (implode$ (create$  ?mng)) " "))
	(assert (id-hyphen_word-vib ?mid - ?new_mng - $?v))
	(bind ?new_mng1 (remove_character " " (implode$ (create$  ?new_mng)) ""))
	(assert (id-hyphen_word-vib ?mid - ?new_mng1 - $?v))
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
	(assert (database_info (root ?root)(components ?m ?m1)))
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

;============================== Exact match with anu =============================================

;Eng_sen : This property of the body is called [inertia].
;Anu     : piMda kA yaha guNa [jadawva] kahA jAwA hE.
;Man     : vaswu ke isa guNa ko [jadawva] kahawe hEM.
(defrule anu_exact_match_without_vib
(declare (salience 905))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng - 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_head_id ?aid)(vibakthi 0))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match_without_vib))
)
;-------------------------------------------------------------------------------------

;Eng_sen : A few other industries in the fields of sugar, cement, paper etc. came up after [the [Second] World War].
;Anu     : cInI, simeMta, leKApawra Axi ke kRewroM meM kuCa anya uxyoga [xUsare] viSva yuxXa ke bAxa ke Upara bAxa_meM Ae.
;Man     : [xUsare] viSva yuxXa ke bAxa cInI , kAgaja Axi ke kuCa kAraKAne BI sWApiwa hue .
(defrule anu_gid_exact_match_without_vib
(declare (salience 904))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng - 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_ids $? ?aid $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match_without_vib))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu anu_gid_exact_match_without_vib))
)

;-------------------------------------------------------------------------------------
;Added by Shirisha Manju 15-07-15
;Eng_sen : Here [we] have to deal with forces involving action at a distance.
;Anu     : yahAM [hameM] xUrI para kriyA SAmila baloM ke sAWa nipatanA hE.
;Man     : yahAz para [hamArI] xUrI para kAryarawa baloM se sAmanA howA hE.
(defrule anu_pronoun_match_without_vib
(declare (salience 903))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word ?m)(vibakthi 0))(id-hyphen_word-vib ?mid - ?m - 0))
(man_word-root-cat ?m ?root p)
(id-HM-source ?aid ?root ?)
(pada_info (group_head_id ?aid)(vibakthi ?v&ko|kA|0))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_gid_exact_match_without_vib))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu anu_pronoun_match_without_vib))
)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju 16-07-15
(defrule anu_wsd_match_without_vib
(declare (salience 902))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng ?m)(vibakthi 0))(id-hyphen_word-vib ?mid - $?mng ?m - 0))
(man_word-root-cat ?m ?root ?)
(id-HM-source ?aid $?mng ?root ?)
(pada_info (group_head_id ?aid)(vibakthi 0))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_gid_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_wsd_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid anu anu_pronoun_match_without_vib))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu anu_wsd_match_without_vib))
)
;-------------------------------------------------------------------------------------

;Eng  : This question was, [in fact], the starting point that led us to the notion of the electrostatic potential (Sections 2.1 and 2.2).
;Anu  : yaha praSna SurU_karane_kA sWAna [vAswava meM], WA, jisane ilektrovstEtika anwarnihiwa Sakwi kI (sekSanja 2.1 Ora 2.2) XAraNA ke lie hameM mArga xiKAyA.
;Man  : [vAswava meM], yaha praSna AraMBa biMxu WA jo hameM sWiravExyuwa viBava kI XAraNA kI ora le gayA WA (xeKie anuBAga 2.1 waWA 2.2 ).
;Eng : Instead of visible light, we can use an electron beam.
;Man : xqSya prakASa ke sWAna para hama, [ilektroYna-puFja kA] upayoga kara sakawe hEM.
;Anu : xqSya prakASa, kI bajAya hama [ilektroYna puFja kA] upayoga_kara sakawe hEM.
(defrule anu_exact_match_with_vib
(declare (salience 901))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib))(id-hyphen_word-vib ?mid - $?mng - $?vib))
(id-Apertium_output ?aid $?mng $?vib)
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_gid_exact_match_without_vib))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu anu_exact_match_with_vib))
)
;================================ Exact match with anu without vib =============================

;if man vib present and anu vib absent 
;Eng_sen : This [property] of the body is called inertia.
;Anu	 : piMda kA yaha [guNa] jadawva kahA jAwA hE.
;Man     : vaswu ke isa [guNa ko] jadawva kahawe hEM.
(defrule exact_match_with_anu_output1 
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?vib)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng)
(pada_info (group_head_id ?aid)(vibakthi 0))
(test (neq ?v 0))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_with_anu_output3))
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
	(assert (anu_id-man_id-src-rule_name ?aid ?mid anu_without_vib exact_match_with_anu_output1))
)
;---------------------------------------------------------------------------------------------------- 

;if man vib absent and anu vib present
;Subsequently, the subjects of [kinetic theory] and [statistical mechanics] interpreted these quantities in terms of the properties of the molecular constituents of the bulk system.
;wawpaScAw [aNugawi sixXAnwa] waWA [sAfKyikIya yAnwrikI] viRayoM ke anwargawa inhIM rASiyoM kI vyAKyA vqhaxAkAra nikAyoM ke ANvika avayavoM ke guNoM ke paxoM meM kI gaI.
;(database_info (components aNugawi sixXAnwa) (database_name eng_phy_multi_word_dic.gdbm) (database_type multi) (group_ids 5 6))
(defrule exact_match_with_anu_output2
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng $?prep)
(id-HM-source ?pid $?prep ?)
(pada_info (group_head_id ?aid) (preposition $? ?pid&~0 $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_with_anu_output3))
=>

        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_without_vib exact_match_with_anu_output2))
)

;------------------------------------------------------------------------------------------------- 
;if anu vib and man vib differ
;Added by Shirisha Manju
;The lengths of the [line segments] representing these vectors are proportional to the magnitude of the vectors.
;Man: ina saxiSoM ko vyakwa karane vAlI [reKA-KaNdoM kI] lambAiyAz saxiSoM ke parimANa ke samAnupAwI hEM .
;Anu: ye saxiSa vyakwa kara [reKA KaNdoM kA] lambAI/lambAiyAz saxiSa ke parimANa ke lie samAnupAwI hEM.
(defrule exact_match_with_anu_output3
(declare (salience 901))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?)(group_ids $?grp_ids)) (id-hyphen_word-vib ?mid - $?mng - ?v $?))
(test (neq ?v 0))
(id-Apertium_output ?aid $?mng $?prep)
(id-HM-source ?pid $?prep ?)
(or (pada_info (group_head_id ?aid) (preposition $? ?pid&~0 $?))(pada_info (group_ids $? ?aid $?) (preposition $? ?pid&~0 $?)))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_without_vib exact_match_with_anu_output3))
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
(database_info (components $?vib)(group_ids $? ?vib_id $?))
(pada_info (group_head_id  ?id)(preposition ?vib_id))
(not (anu_id-man_id-src-rule_name ?id ?mid  man_word_and_vib_match_using_dic))
=>
	(assert (anu_id-man_id-type ?id ?mid  dictionary_match))
	(assert (anu_id-man_id-src-rule_name ?id ?mid dictionary man_word_and_vib_match_using_dic))
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
(database_info (components $?vib)(group_ids $? ?vib_id $?))
(pada_info (group_head_id  ?id)(preposition $? ?vib_id $?))
(not (anu_id-man_id-src-rule_name ?id ?mid ?  man_word_and_vib_match_using_dic))
=>
        (assert (anu_id-man_id-type ?id ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?id ?mid dictionary man_root_and_vib_match_using_dic))
)
;---------------------------------------------------------------------------
;To avoid this, a common compromise is the [cross-sectional] shape shown in Fig. 9.9(c)
;isase bacane ke lie sAXAraNawayA ciwra 9.9(@c) meM xiKAI gaI Akqwi kA [anuprasWa paricCexa] liyA jAwA hE.
(defrule man_word_match_using_dic
(declare (salience 840))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))  (id-hyphen_word-vib ?mid - $?mng - 0))
(database_info (components $?mng)(group_ids $? ?aid $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary man_word_match_using_dic))
)
;---------------------------------------------------------------------------
(defrule man_root_match_using_dic
(declare (salience 835))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?m ?mng)(vibakthi 0)) (id-hyphen_word-vib ?mid - $?m ?mng - 0))
(man_word-root-cat ?mng ?root ?)
(database_info (components $?m ?root)(group_ids $? ?aid $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary man_root_match_using_dic))
)

;======================================= dictionary without vib =============================

;if vib present and there is no dic match for vib
(defrule dic_word_match_without_vib
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi ?v $?))
(test (neq ?v 0))
(database_info (components $?mng)(group_ids $? ?aid $?))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_without_vib dic_word_match_without_vib))
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
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_word_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  man_root_and_vib_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?  dic_word_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ?   verb_root_match_using_dic))
=>
	(assert (anu_id-man_id-type ?aid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary_without_vib dic_root_match_without_vib))
)
;---------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule partial_word_match_with_anu
(declare (salience 840))
(current_id ?mid)
(or (manual_word_info (head_id ?mid) (word $?mng))(manual_word_info (head_id ?mid)(word $?mng ?v&se|ko_ke)))
(id-Apertium_output ?aid $? $?mng $?)
(not (got_wsd_align ?aid ?mid))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_gid_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? anu_exact_match_with_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_with_anu_output1))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_with_anu_output2))
(not (anu_id-man_id-src-rule_name ?aid ?mid ? exact_match_with_anu_output3))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_partial_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_partial partial_word_match_with_anu))
)
;=================================   verb rules =================================================
;Check for manual verb[root] and tam match in the dictionary
; The strong nuclear force binds protons and neutrons in a nucleus.  
(defrule verb_root_and_tam_match_using_dic
(declare (salience 880))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(vibakthi $?tam)(group_ids $?grp_ids))
(database_info (components $?v_root)(group_ids $? ?aid $?))
(e_tam-id-dbase_name-mng ?e_tam ? ? $?tam)
=>
        (assert (anu_id-man_id-type ?aid ?mid  dictionary_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid dictionary verb_root_and_tam_match_using_dic))
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
=>
	(assert (anu_id-man_id-type ?eid ?mid  dictionary_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid dictionary verb_root_match_using_dic))
)
;---------------------------------------------------------------------------
;;Added by Shirisha Manju
;;We shall confine ourselves to the study of motion of objects along a straight line, also [known] as rectilinear motion.
;;isa aXyAya meM hama apanA aXyayana vaswu ke eka sarala reKA ke anuxiSa gawi waka hI sImiwa raKeMge ;isa prakAra kI gawi ko sarala reKIya gawi BI [kahawe hEM] .
(defrule verb_match_with_WSD
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid)(root $?root))
;(or (manual_word_info (head_id ?mid)(root $?root))(manual_word_info (head_id ?mid)(word $?root)))
(id-HM-source ?aid $?root WSD_root_mng|WSD_word_mng)
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? anu_exact_match_without_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? anu_exact_match_with_vib))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? exact_match_with_anu_output1))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? exact_match_with_anu_output2))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? exact_match_with_anu_output3))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? verb_root_match_using_dic))
(not (anu_id-man_id-src-rule_name ?aid ?mid  ? verb_root_and_tam_match_using_dic))
=>
        (assert (anu_id-man_id-type ?aid ?mid  anu_exact_match_without_vib))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid anu_without_vib verb_match_with_WSD))
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
;Eng_sen : This property of the [body] is called inertia.
;Anu     : [piMda kA] yaha guNa jadawva kahA jAwA hE.
;Man     : [vaswu ke] isa guNa ko jadawva kahawe hEM.
(defrule lookup_man_word_in_hindi_wordnet
(declare (salience 820))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?m_mng)(vibakthi $?vib))
(man_word-root-cat ?m_mng ?h_root ?)
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) "FALSE"))
(database_info (meaning ?mng) (group_ids $? ?aid $?))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root)))))
        (if (neq ?dic_val "FALSE") then
		(assert (anu_id-man_id-type ?aid ?mid  hindi_wordnet_match))
        	(assert (anu_id-man_id-src-rule_name ?aid ?mid hindi_wordnet lookup_man_word_in_hindi_wordnet))
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
;(or (database_info (components $?v_root $? ?r)(group_ids $? ?aid $?))(database_info (components $?v_root $?) (database_type single)(group_ids $? ?aid $?)))
(not (anu_id-man_id-src-rule_name ?aid ?mid kriyA_mUla_with_dic kriyA_mUla_partial_match))
=>
	(assert (anu_id-man_id-type ?aid ?mid  kriyA_mUla_partial_match))
	(assert (anu_id-man_id-src-rule_name ?aid ?mid kriyA_mUla_with_dic kriyA_mUla_partial_match))
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
=>
	(assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid english_word_match check_match_with_english_word))
)
;-------------------------------------------------------------------------------------
;check_match_with_english_word and check_match_with_english_word1 are the same rules just the test condition differs [?word and $?word] 
;As I was getting problem in test condition I handled it in a seperate rule.
;need to improve the rule. 
(defrule check_match_with_english_word1
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word ?word))
(test (neq (str-index @ (implode$ (create$ ?word))) FALSE))
(or (id-word ?eid ?word1)(id-original_word ?eid ?word1))
(test (or (eq ?word1 ?word) (eq (string-to-field (str-cat (sub-string 1 (- (str-index @ (implode$ (create$ ?word))) 1) ?word) (sub-string (+ (str-index @ (implode$ (create$ ?word))) 1) (length (implode$ (create$ ?word))) ?word))) ?word1)))
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
(manual_word_info (head_id ?mid)(word ?word))
(word-transliterate_mng ?lwc_word ?word)
(id-HM-source ?eid ?trans_mng transliterate_mng)
(id-Apertium_output ?eid ?trans_mng)
=>
	(assert (anu_id-man_id-type ?eid ?mid  transliteration_match))
        (assert (anu_id-man_id-src-rule_name ?eid ?mid transliterate_match check_match_with_transliterate_mng))
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
(anu_id-anu_mng-man_mng ?aid  ?  $?man_mng)
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
(anu_id-anu_mng-man_mng ?aid  ?  $?man_mng)
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
(or (eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng) (eng_id-eng_wrd-man_wrd  ?aid ? $?man_mng ?v&meM|se|ko|ke)(eng_id-eng_wrd-man_wrd  ?aid ? ?n&hamAre $?man_mng))
(not (got_M_layer_for ?mid))
=>
        (assert (anu_id-man_id-type ?aid ?mid  M_layer_pharasal_match))
        (assert (anu_id-man_id-src-rule_name ?aid ?mid M_layer_pharasal_match align_using_phrasal_data_M))
)
;============================== get scope ============================================
;Added by Shirisha Manju
(defrule get_small_scope_fact
(declare (salience 811))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(anu_id-man_id-src-rule_name ?aid1 =(- ?mid 1) $?)
(pada_info (group_ids $?grp))
(test (integerp (member$ ?aid $?grp)))
(test (integerp (member$ ?aid1 $?grp)))
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
(declare (salience 810))
(current_id ?mid)
(anu_id-man_id-src-rule_name ?aid ?mid $?)
(anu_id-man_id-src-rule_name =(+ ?aid 1) ?mid1&:(= (+ ?mid 1) ?mid1) $?)
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
(defrule create_file
(declare (salience -7))
(current_id ?mid)
(manual_word_info (head_id ?mid)(group_ids $?ids ?id))
?f0<-(anu_id-man_id-type ?aid ?mid  ?types)
=>
        (retract ?f0)
        (bind ?f_name (str-cat ?mid "_info"))
	(bind ?len (length$ $?ids))
	(if (eq ?len 0) then
		(printout ?*s_file* crlf ?f_name "  "?mid","?aid","?types crlf)
	        (assert (info_created ?mid))
	else
		(bind ?new_id " ")
		(loop-for-count (?i 1 ?len)
			(bind ?j (nth$ ?i $?ids))
			(bind ?new_id (str-cat ?new_id ?j "+" ))
		)
		(bind ?new_id (str-cat ?new_id ?id))
		(printout ?*s_file* crlf ?f_name "  "?new_id","?aid","?types crlf)
	        (assert (info_created ?mid))
	)

)
;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule create_file1
(declare (salience -8))
(current_id ?mid)
(manual_word_info (head_id ?mid)(group_ids $?ids ?id))
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

