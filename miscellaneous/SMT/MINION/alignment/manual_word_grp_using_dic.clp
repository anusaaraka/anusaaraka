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

;--------------------------------------------------------------------------------------------------------

(defrule retract_current_word
(declare (salience 90))
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
(id-node-word-root ?last_id ? ? - ?last_word_root)
(test (> (length $?db_mng) 0))
=>
        (bind $?man_ids (create$ ))
        (bind $?mng (create$))
        (bind ?len (+ (length $?db_mng) ?pos))
        (printout t ?len crlf)
        (loop-for-count (?i ?pos ?len)
                        (bind ?m_word (nth$ ?i $?man_sen))
                        (bind $?mng (create$ $?mng ?m_word))
                        (bind $?man_ids (create$ $?man_ids ?i))
                        (printout t $?mng crlf)
        )
        (bind $?db_mng (create$ $?db_mng ?last_word_root))
        (printout t $?mng $?db_mng crlf)
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
        (printout t $?mng $?db_mng crlf)
        (if (neq $?mng $?db_mng) then (retract ?f)
	else
	(retract ?f)
	(assert (anu_id-manual_ids-sep-mng ?id $?man_ids - $?db_mng))
	)
)
;--------------------------------------------------------------------------------------------------------
