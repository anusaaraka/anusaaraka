(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate  database_info(slot meaning (default 0))(multislot components (default 0))(slot root (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

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
(defrule get_current_word
(manual_word_info (head_id ?mid))
(not (manual_word_info (head_id ?mid1&:(< ?mid1 ?mid)))) 
=>
        (assert (current_id ?mid))
        (bind ?*count* 0)
        (assert (count_fact 0))
)
;--------------------------------- Exact match with anu without vib ------------------------------------------------
;Added by Shirisha Manju
;Modern communication has its roots in the [19] th and [20] th century in the work of scientists like J.C. Bose, F.B. Morse, G. Marconi and Alexander Graham Bell. 
;AXunika saFcAra kI jadeM [19] vIM waWA [20] vIM SawAbxiyoM meM sara jagaxISa canxra bosa, ePa.bI. morsa, jI mArkonI waWA alekjeNdara grAhma bela ke kArya xvArA dAlI gaIM.
;Note :NO PATH
(defrule anu_exact_match_for_nos
(declare (salience 902))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word ?mng)(group_ids $?grp_ids))
(test (numberp ?mng))
(id-Apertium_output ?aid ?mng1)
(test (neq (str-index "@" ?mng1) FALSE))
(test (eq (string-to-field (sub-string 2 (length ?mng1) ?mng1)) ?mng))
(id-root ?aid ?root)
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
	(assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root anu anu_exact_match_without_vib))
)

;Eng_sen : This property of the body is called [inertia].
;Anu     : piMda kA yaha guNa [jadawva] kahA jAwA hE.
;Man     : vaswu ke isa guNa ko [jadawva] kahawe hEM.
(defrule anu_exact_match_without_vib 
(declare (salience 902))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi 0))
(id-Apertium_output ?aid $?mng)
(pada_info (group_head_id ?aid)(preposition  0))
(id-root ?aid ?root)
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
	(assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root anu anu_exact_match_without_vib))
)
;----------------------------------Exact match with anu with vib ---------------------------------------------------
;Eng  : This question was, [in fact], the starting point that led us to the notion of the electrostatic potential (Sections 2.1 and 2.2).
;Anu  : yaha praSna SurU_karane_kA sWAna [vAswava meM], WA, jisane ilektrovstEtika anwarnihiwa Sakwi kI (sekSanja 2.1 Ora 2.2) XAraNA ke lie hameM mArga xiKAyA.
;Man  : [vAswava meM], yaha praSna AraMBa biMxu WA jo hameM sWiravExyuwa viBava kI XAraNA kI ora le gayA WA (xeKie anuBAga 2.1 waWA 2.2 ).
(defrule anu_exact_match_with_vib 
(declare (salience 901))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib))
(id-Apertium_output ?aid $?mng $?vib)
(id-root ?aid ?root)
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_exact_match))
	(assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root anu anu_exact_match_with_vib))
)
;-------------------------------- Exact match with anu [anu_vib absent ; man_vib pres]-------------------------------
;Eng_sen : This [property] of the body is called inertia.
;Anu	 : piMda kA yaha [guNa] jadawva kahA jAwA hE.
;Man     : vaswu ke isa [guNa ko] jadawva kahawe hEM.
(defrule exact_match_with_anu_output1 
(declare (salience 900))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)(group_ids $?grp_ids))
(id-Apertium_output ?aid $?mng)
(test (and (neq $?vib -) (neq (length $?vib) 0)))
(id-root ?aid ?root)
=>
	(assert (anu_id-man_id-type ?aid ?mid  anu_word_match_without_vib))
	(assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root anu anu_exact_match_with_vib))
)
;-------------------------------------------------------------------------------------
(defrule word_and_vib_match_using_dic
(declare (salience 870))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib))
(database_info (components $?mng)(root ?root))
(database_info (components $?vib)(root ?v_root))
(id-root ?id ?root)
(id-root ?vib_id ?v_root)
(pada_info (group_head_id  ?id)(preposition ?vib_id))
=>
	(assert (anu_id-man_id-type ?id ?mid  dic_word_match))
	(assert (anu_id-man_id-root-src-rule_name ?id ?mid ?root dictionary word_and_vib_match_using_dic))
)
;-------------------------------------------------------------------------------------
(defrule root_and_vib_match_using_dic
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib))
(man_word-root-cat $?mng $?root ?)
(database_info (components $?root)(root ?e_noun))
(database_info (components $?vib)(root ?e_vib))
(id-root ?e_noun_id ?e_noun)
(id-root ?e_vib_id ?e_vib)
(pada_info (group_head_id  ?e_noun_id)(preposition ?e_vib_id))
=>
        (assert (anu_id-man_id-type ?e_noun_id ?mid  dic_root_match))
        (assert (anu_id-man_id-root-src-rule_name ?e_noun_id ?mid ?e_noun dictionary root_and_vib_match_using_dic))
)
;---------------------------------------------------------------------------
(defrule word_match_using_dic
(declare (salience 840))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)(group_ids $?grp_ids))
(database_info (components $?mng)(root ?e_noun))
(id-root ?eid ?e_noun)
=>
        (assert (anu_id-man_id-type ?eid ?mid  dic_word_match_without_vib))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_noun dictionary word_match_using_dic))
)
;---------------------------------------------------------------------------
(defrule root_match_using_dic
(declare (salience 840))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?mng)(vibakthi $?vib)(group_ids $?grp_ids))
(man_word-root-cat $?mng $?root ?)
(database_info (components $?root)(root ?e_noun))
(id-root ?eid ?e_noun)
=>
	(assert (anu_id-man_id-type ?eid ?mid  dic_root_match_without_vib))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_noun dictionary root_match_using_dic))
)
;=================================   verb rules =================================================
;Check for manual verb[root] and tam match in the dictionary
; The strong nuclear force binds protons and neutrons in a nucleus.  
(defrule verb_root_and_tam_match_using_dic
(declare (salience 880))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?verb_mng)(root $?v_root)(vibakthi $?tam)(group_ids $?grp_ids))
(database_info (components $?v_root)(root ?root))
(e_tam-id-dbase_name-mng ?e_tam ? ? $?tam)
(id-root ?aid ?root)
=>
        (assert (anu_id-man_id-type ?aid ?mid  dic_root_match))
        (assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root dictionary verb_root_and_tam_match_using_dic))
)
;-------------------------------------------------------------------------------------
;
(defrule verb_root_match_using_dic
(declare (salience 840))
(current_id ?mid)
(manual_word_info (head_id ?mid)(word $?r)(root $?root)(vibakthi $?tam))
(test (neq $?tam 0))
(database_info (components $?root)(root ?e_verb))
(id-root ?eid ?e_verb)
=>
	(assert (anu_id-man_id-type ?eid ?mid  dic_root_match_without_vib))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_verb dictionary verb_root_match_using_dic))
)
;---------------------------------------------------------------------------
;If only one verb is present in both the manual and anusaaraka sentences then make direct alignment.
(defrule single_verb_match_with_anu
(declare (salience 878))
(current_id ?mid)
(anu_verb_count-verbs 1 ?aid)
(man_verb_count-verbs 1 ?mid)
(id-root ?aid ?root)
=>
        (assert (anu_id-man_id-type ?aid ?mid  single_verb_match))
        (assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root single_verb_match single_verb_match_with_anu))
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
(database_info (meaning ?mng) (root ?e_root))
(test (neq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng))) "FALSE"))
(test (eq (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root))) (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?mng)))))
(id-root ?aid ?e_root)
=>
        (bind ?dic_val (gdbm_lookup "hindi_wordnet_dic1.gdbm" (gdbm_lookup "hindi_wordnet_dic2.gdbm" (implode$ (create$ ?h_root)))))
        (if (neq ?dic_val "FALSE") then
		(assert (anu_id-man_id-type ?aid ?mid  hindi_wordnet_match))
        	(assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?e_root hindi_wordnet lookup_man_word_in_hindi_wordnet))
        )
)
;-------------------------------------------------------------------------------------
;need to discuss
;(defrule verb_with_only_root_match_using_dic
;(declare (salience 879))
;(current_id ?mid)
;(manual_word_info (head_id ?mid)(root $?v_root))
;(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?v_root)
;(id-root ?aid ?root)
;=>
;	(assert (anu_id-man_id-type ?aid ?mid  dic_root_match_without_vib))
;        (assert (man_id-root-src-rule_name ?mid ?root dictionary verb_with_only_root_match_using_dic))
;)
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
(id-root ?eid ?e_root)
=>
	(assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_root english_word_match check_match_with_english_word))
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
(id-root ?eid ?e_root)
=>
	(assert (anu_id-man_id-type ?eid ?mid  english_word_match))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_root english_word_match check_match_with_english_word1))
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
(id-root ?eid ?e_root)
=>
	(assert (anu_id-man_id-type ?eid ?mid  transliteration_match))
        (assert (anu_id-man_id-root-src-rule_name ?eid ?mid ?e_root transliterate_match check_match_with_transliterate_mng))
)
;============================= phrasal alignment =======================================================
(defrule align_using_phrasal_data_L
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?man_mng))
(anu_id-anu_mng-man_mng ?aid  ?  $?man_mng)
(id-root ?aid ?root)
=>
	(assert (anu_id-man_id-type ?aid ?mid  L_layer_pharasal_match))
        (assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root  L_layer_pharasal_match align_using_phrasal_data_L))
)
;-------------------------------------------------------------------------------------
(defrule align_using_phrasal_data_M
(declare (salience 830))
(current_id ?mid)
(manual_word_info (head_id ?mid) (word $?man_mng))
(eng_id-eng_wrd-man_wrd  ?aid	? $?man_mng)
(id-root ?aid ?root)
=>
        (assert (anu_id-man_id-type ?aid ?mid  M_layer_pharasal_match))
        (assert (anu_id-man_id-root-src-rule_name ?aid ?mid ?root  M_layer_pharasal_match align_using_phrasal_data_M))
)
;-------------------------------------------------------------------------------------
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

