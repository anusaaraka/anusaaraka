 ;This file is added by Mahalaxmi

 (defglobal ?*mul_word_file* = m_fp)
 (defglobal ?*pos* = 1)

 ;Added by Shirisha Manju
 ;Domain physics
 (defrule load_phy_multi_word_file
 (declare (salience 9000))
 (Domain physics)
 =>
 	 (load-facts "phy_multi_word_expressions.dat")
 )
 ;--------------------------------------------------------------------------------------------------------
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
 ;--------------------------------------------------------------------------------------------------------
 (defrule cp_manual_sen
 (declare (salience 1000))
 (manual_hin_sen $?man_sen)
 =>
	(assert (manual_hin_sen_tmp $?man_sen))
 )
 ;--------------------------------------------------------------------------------------------------------
 (deffunction hnd_mwe_lookup(?gdbm $?man_sen)
        (bind ?len (length $?man_sen))
        (loop-for-count (?i 1 ?len)
                (bind ?flag 1)
                (loop-for-count (?j ?i ?len)
                        (bind ?k (nth$ ?j $?man_sen))
                        (if (numberp ?k) then (bind ?k (implode$ (create$ ?k))))
                        (if (eq ?flag 1) then
                                (bind ?str ?k)
                                (bind $?grp_ids ?j)
                                (bind ?flag 0)
                        else
                                (bind ?str (str-cat ?str "_" ?k))
                                (bind $?grp_ids (create$ $?grp_ids ?j))
                        )
                        (bind ?mng (gdbm_lookup ?gdbm  ?str))
                        (if (neq ?mng "FALSE") then
                                (if (eq ?gdbm "hnd_phy_multi_word_dic.gdbm") then
                                        (assert (ids-phy_cmp_mng-eng_mng $?grp_ids (string-to-field ?str) (explode$ ?mng)))
                                else
                                        (assert (ids-cmp_mng-eng_mng $?grp_ids (string-to-field ?str)  (explode$ ?mng)))
                                )
                        )
                  )
        )
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_hnd_mwe
 (declare (salience 900))
 ?f<-(manual_hin_sen $?Hin_list)
  =>
        (hnd_mwe_lookup "hnd_multi_word_dic.gdbm" $?Hin_list)
        (hnd_mwe_lookup "hnd_phy_multi_word_dic.gdbm" $?Hin_list)
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_largest_match_of_phy
 (declare (salience 800))
 ?f<-(ids-phy_cmp_mng-eng_mng $?grp_ids ?mng ?)
 ?f1<-(ids-phy_cmp_mng-eng_mng $?grp_ids1 ?mng1 ?)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
        (if (> (length $?grp_ids) (length $?grp_ids1)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule chk_for_largest_match
 (declare (salience 800))
 ?f<-(ids-cmp_mng-eng_mng $?grp_ids ?mng ?)
 ?f1<-(ids-cmp_mng-eng_mng $?grp_ids1 ?mng1 ?)
 (test (neq ?mng ?mng1))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
        (if (> (length $?grp_ids) (length $?grp_ids1)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule get_match_with_anu_for_phy
 (declare (salience 60))
 ?f0<-(ids-phy_cmp_mng-eng_mng $?ids ?cmp_mng ?mng)
 (ids-phy_cmp_mng-head-cat-mng_typ-priority $?aids ?cmp_mng $?)
 =>
        (retract ?f0)
        (bind $?new_mng (remove_character "_" ?cmp_mng " "))
        (printout ?*mul_word_file* "(ids-phy_cmp_mng-eng_mng " (implode$ $?ids) " "?cmp_mng" "?mng ")" crlf)
	(assert (manual_ids-sep-mng $?ids - $?new_mng))
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule get_match_with_anu
 (declare (salience 40))
 ?f0<-(ids-cmp_mng-eng_mng $?ids ?cmp_mng ?mng)
 (ids-cmp_mng-head-cat-mng_typ-priority $?aids ?cmp_mng $?)
 =>
        (retract ?f0)
        (bind $?new_mng (remove_character "_" ?cmp_mng " "))
        (printout ?*mul_word_file* "(ids-cmp_mng-eng_mng " (implode$ $?ids) " "?cmp_mng" "?mng ")" crlf)
	(assert (manual_ids-sep-mng $?ids - $?new_mng))
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule get_current_word
 ?f<-(manual_hin_sen_tmp ?first_word $?rem_sen)
 =>
        (retract ?f)
        (assert (current_word-position ?first_word ?*pos*))
        (bind ?*pos* (+ ?*pos* 1))
        (assert (manual_hin_sen_tmp $?rem_sen))
 )
 ;--------------------------------------------------------------------------------------------------------
 (defrule possible_match_for_current_word
 (declare (salience 100))
 (current_word-position ?first_word ?pos)
 (id-org_wrd-root-dbase_name-mng ? ? ? ? ?first_word $?db_mng)
 (test (> (length $?db_mng) 0))
 =>
        (assert (man_id-mng ?pos ?first_word $?db_mng))
 )
 ;--------------------------------------------------------------------------------------------------------
;The coordinates (x, y, z) of an object describe the position of the object with respect to this coordinate system.
;kisI vaswu ke nirxeSAfka @PUNCT-OpenParen @x @PUNCT-Comma @y @PUNCT-Comma @z @PUNCT-ClosedParen isa nirxeSAfka nikAya [ke sApekRa] usa vaswu kI sWiwi nirUpiwa karawe hEM  @PUNCT-Dot
(defrule possible_match_for_current_word_with_multi
(declare (salience 90))
(current_word-position ?first_word ?pos)
(id-multi_word_expression-dbase_name-mng ? $?e_words ? ?first_word $?db_mng)
(multi_word_expression-grp_ids $?e_words $?ids ?id)
(id-word ?id ?)
(test (> (length $?db_mng) 0))
=>
        (assert (man_id-mng ?pos ?first_word $?db_mng))
)
;--------------------------------------------------------------------------------------------------------
(defrule retract_current_word
(declare (salience 80))
?f<-(current_word-position ?first_word ?)
=>
        (retract ?f)
)
;--------------------------------------------------------------------------------------------------------
;Eng sen  :: She turned her ankle on the rocks and [had to hobble] back to camp.
;Man tran :: usakA taKanA cattAna para muda gayA Ora use vApisa Sivira waka [lafgadA kara calanA] padZA.
;Anu tran :: usane cattAnoM para usakA taKanA modA Ora Sivira ko vApisa [lafgadA_kara calane] padA.
(defrule test_for_occurence_of_match_in_sen1
(declare (salience -99))
(manual_hin_sen $?man_sen)
?f<-(man_id-mng ?pos $?db_mng ?last_word_root)
(id-node-word-root ?last_id ? ?word - ?last_word_root)
(test (> (length $?db_mng) 0))
(test (eq ?last_id (+ (length $?db_mng) ?pos)))
=>
        (bind $?man_ids (create$ ))
        (bind $?mng (create$))
        (bind ?len (+ (length $?db_mng) ?pos))
        (loop-for-count (?i ?pos ?len)
                        (bind ?m_word (nth$ ?i $?man_sen))
                        (bind $?mng (create$ $?mng ?m_word))
                        (bind $?man_ids (create$ $?man_ids ?i))
        )
        (bind $?db_mng (create$ $?db_mng ?word))
        (if (neq $?mng $?db_mng) then (retract ?f)
        else
        	(retract ?f)
        	(assert (manual_ids-sep-mng $?man_ids - $?db_mng))
        )
)
;--------------------------------------------------------------------------------------------------------
;Eng sen  :: [Thus] the observer sees a rainbow with red color on the top and violet on the bottom. 
;Man tran :: [isa prakAra] prekRaka inxraXanuRa ke SIrRa para lAla varNa Ora pEnxI para bEfganI varNa xeKawA hE .
;Anu tran :: [isa prakAra] prekRaka walI para UparI sawaha para waWA PUla lAla rafga se inxraXanuRa ko xeKawA hE.
(defrule test_for_occurence_of_match_in_sen
(declare (salience -100))
(manual_hin_sen $?man_sen)
?f<-(man_id-mng ?pos $?db_mng)
(test (> (length $?db_mng) 1))
=>
	(bind $?man_ids (create$ ))
        (bind $?mng (create$))
        (bind ?len (+ (length $?db_mng) (- ?pos 1)))
        (loop-for-count (?i ?pos ?len)
                        (bind ?m_word (nth$ ?i $?man_sen))
                        (bind $?mng (create$ $?mng ?m_word))
			(bind $?man_ids (create$ $?man_ids ?i))
        )
        (if (neq $?mng $?db_mng) then (retract ?f)
	else
	(retract ?f)
	(assert (manual_ids-sep-mng  $?man_ids - $?db_mng))
	)
)
;--------------------------------------------------------------------------------------------------------
