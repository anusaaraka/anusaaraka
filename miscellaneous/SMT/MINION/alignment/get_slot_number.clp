(defglobal ?*count_of_inserted_words* = 2000)

(defrule create_anu_slot_mapping
(declare (salience 1000))
(hindi_id_order $?order)
=>
	(loop-for-count(?i 1 (length$ $?order))
		(assert (anu_slot-minion_slot ?i ?i))
	)
)


(defrule get_slot_value
(declare (salience 100))
(word-slot_matrix ?w_id $?val)
(test (neq (member$ 1 $?val) FALSE))
(anu_slot-minion_slot ?anu_slot_id ?man_slot_id)
(test (eq ?man_slot_id (member$ 1 $?val)))
=>
;        (bind ?slot_id (member$ 1 $?val))
;	(bind ?slot_id (+ ?slot_id ?*inc*))
        (assert (slot_id-word_id ?anu_slot_id ?w_id))
)

(defrule replcae_anu_id_wrd_with_mng
(declare (salience 51))
(slot_id-word_id ?aid ?mid)
(hindi_id_order $?order)
(id-Apertium_output ?aid1 $?anu_mng)
(test (eq ?aid (member$ ?aid1 $?order)))
(manual_id-mng ?mid $?man_mng)
=>
	(if (eq (length $?anu_mng) 0) then (bind $?anu_mng (create$ -)));The reflected ray simply retraces the path. 
						;Man tran :: parAvarwiwa kiraNa kevala [apanA] paWa punaH anureKiwa karawI hE .
						;Anu tran :: parAvarwiwa kiraNa sAxagI se paWa Pira_nakSA uwArawI hE.

	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?anu_mng - ?mid $?man_mng))
)

