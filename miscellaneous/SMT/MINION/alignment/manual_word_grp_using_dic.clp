;This file is added by Mahalaxmi
(defglobal ?*pos* = 1)

(defrule cp_manual_sen
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
	(assert (manual_hin_sen_tmp $?man_sen))
)
;--------------------------------------------------------------------------------------------------------

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
(id-org_wrd-root-dbase_name-mng ? ? ?word ? ?first_word $?db_mng)
(id-word ?id ?word)
(test (> (length $?db_mng) 0))
=>
        (assert (anu_id-man-id-mng ?id ?pos ?first_word $?db_mng))
)


(defrule possible_match_for_current_word1
(declare (salience 100))
(current_word-position ?first_word ?pos)
(id-org_wrd-root-dbase_name-mng ? ?word ? ? ?first_word $?db_mng)
(id-root ?id ?word)
(test (> (length $?db_mng) 0))
=>
        (assert (anu_id-man-id-mng ?id ?pos ?first_word $?db_mng))
)

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
        (assert (anu_id-man-id-mng ?id ?pos ?first_word $?db_mng))
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
?f<-(anu_id-man-id-mng ?id ?pos $?db_mng ?last_word_root)
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
        	(assert (anu_id-manual_ids-sep-mng ?id $?man_ids - $?db_mng))
        )
)
;--------------------------------------------------------------------------------------------------------
;Eng sen  :: [Thus] the observer sees a rainbow with red color on the top and violet on the bottom. 
;Man tran :: [isa prakAra] prekRaka inxraXanuRa ke SIrRa para lAla varNa Ora pEnxI para bEfganI varNa xeKawA hE .
;Anu tran :: [isa prakAra] prekRaka walI para UparI sawaha para waWA PUla lAla rafga se inxraXanuRa ko xeKawA hE.
(defrule test_for_occurence_of_match_in_sen
(declare (salience -100))
(manual_hin_sen $?man_sen)
?f<-(anu_id-man-id-mng ?id ?pos $?db_mng)
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
	(assert (anu_id-manual_ids-sep-mng ?id $?man_ids - $?db_mng))
	)
)
;--------------------------------------------------------------------------------------------------------
