(deffunction string_to_integer (?parser_id)
 	(string-to-field (sub-string 2 10000 ?parser_id))
)

;hE. == hE
(defrule modify_hword
(declare (salience 100))
?f<-(hid-word ?id ?w)
(test (neq (numberp ?w) TRUE))
(test (eq (integerp (member$ (string-to-field (sub-string (length ?w) (length ?w) ?w)) (create$ . ,))) TRUE))
=>
	(retract ?f)
	(bind ?punct (string-to-field (sub-string (length ?w) (length ?w) ?w)))
	(bind ?nw (string-to-field (sub-string 1 (- (length ?w) 1) ?w)))
	(assert (hid-word ?id ?nw))
	(assert (id-punct ?id ?punct))
)

(defrule modify_hword1
(declare (salience 100))
?f<-(hid-word ?id $?p ?punct $?p1)
(test (neq (integerp (member$ ?punct (create$ PUNCT-DoubleQuote PUNCT-QuestionMark PUNCT-Semicolon PUNCT-OpenParen PUNCT-ClosedParen))) FALSE))
=>
	(retract ?f)
	(assert (hid-word ?id $?p $?p1))
	(assert (id-punct ?id ?punct))
)


(defrule get_initial_map
(hid-word  P1  ?w)
(manual_id-word 1 ?w1)
=>
	(if (eq (integerp (member$ ?w1 (create$ PUNCT-SingleQuote PUNCT-OpenParen PUNCT-DoubleQuote))) TRUE) then
		(assert (dep_parser_id-hword_id P1 2))
		(assert (current_id 3))
	else
		(assert (dep_parser_id-hword_id P1 1))
		(assert (current_id 2))
	)
)

(defrule get_next_id
(declare (salience 10))
?f0<-(current_id ?id)
(manual_id-word ?id ?w)
?f1<-(hid-word  ?pid  ?w)
(test (= (string_to_integer ?pid) ?id))
=>
	(retract ?f0)
	(assert (dep_parser_id-hword_id ?pid ?id))
	(bind ?id (+ ?id 1))
      	(assert (current_id ?id))
)

(defrule get_next_id_for_both_punt
(declare (salience 12))
?f0<-(current_id ?id)
(manual_id-word ?id @PUNCT-DoubleQuote)
(hid-word ?pid )
(id-punct ?pid PUNCT-DoubleQuote)
(test (= (string_to_integer ?pid) ?id))
=>
	(assert (dep_parser_id-hword_id ?pid ?id))
        (bind ?mid (+ ?id 1))
        (assert (current_id ?mid))
)

;yahAz XarmakRewre waWA kurukRewre SabxoM kI, unakI ewihAsika waWA vExika mahawwA ke awirikwa, yahI sArWakawA hE.
(defrule get_next_id_for_punt
;(declare (salience 9))
(declare (salience 11))
?f0<-(current_id ?id)
(manual_id-word ?id @PUNCT-Comma|@PUNCT-DoubleQuote)
(manual_id-word ?mid&:(= (+ ?id 1) ?mid) ?w)
(dep_parser_id-hword_id ?pid =(- ?id 1))
(id-punct ?pid ?)
(hid-word ?pid1 ?w)
(test (= (string_to_integer ?pid1)(+ (string_to_integer ?pid) 1))) 
=>
	(retract ?f0)
	(assert (dep_parser_id-hword_id ?pid1 ?mid))
	(bind ?id (+ ?mid 1))
        (assert (current_id ?id))
)

;jaba manuRya ko apanI ASAoM meM kevala nirASA xiKawI hE wo vaha socawA hE "mEM yahAz kyoM hUz ?"
(defrule get_next_id_for_punt1
(declare (salience 9))
?f0<-(current_id ?id)
(manual_id-word ?id @PUNCT-OpenParen|@PUNCT-DoubleQuote)
(manual_id-word ?mid&:(= (+ ?id 1) ?mid) ?w)
(hid-word ?pid ?w)
(id-punct ?pid ?)
;(test (= (string_to_integer ?pid1)(+ (string_to_integer ?pid) 1)))
=>
        (retract ?f0)
        (assert (dep_parser_id-hword_id ?pid ?mid))
        (bind ?id (+ ?mid 1))
        (assert (current_id ?id))
)

(defrule get_next_id_after_punct
;(declare (salience 9))
(declare (salience 11))
?f0<-(current_id ?id)
(manual_id-word ?id ?w)
(hid-word ?pid ?w)
(dep_parser_id-hword_id ?pid1 =(- ?id 1))
(test (= (string_to_integer ?pid)(+ (string_to_integer ?pid1) 1)))
=>
        (retract ?f0)
        (assert (dep_parser_id-hword_id ?pid ?id))
        (bind ?id (+ ?id 1))
        (assert (current_id ?id))
)

;yaxi usI guru-paramparA se, nijI svArWa se preriwa hue binA , kisI ko BagavaxgIwA samaJane kA sOBAgya prApwa ho wo vaha samaswa vExika jFAna waWA viSva ke samaswa SAswroM ke aXyayana ko pICe [Coda] xewA hE  . Coda == CodZa
(defrule get_next_id1_after_punct
(declare (salience 8))
?f0<-(current_id ?id)
(manual_id-word ?id ?w)
?f1<-(hid-word  ?pid  ?w1)
(dep_parser_id-hword_id ?pid1 =(- ?id 1))
(test (= (string_to_integer ?pid)(+ (string_to_integer ?pid1) 1)))
=>
        (retract ?f0)
        (assert (dep_parser_id-hword_id ?pid ?id))
        (bind ?id (+ ?id 1))
        (assert (current_id ?id))
)

;sanXigXa === saMXigXa
(defrule get_next_id1
?f0<-(current_id ?id)
(manual_id-word ?id ?w)
?f1<-(hid-word  ?pid  ?w1)
(test (= (string_to_integer ?pid) ?id))
(test (neq (integerp (member$ ?w (create$ @PUNCT-Comma PUNCT-OpenParen))) TRUE))
=>
        (retract ?f0)
        (assert (dep_parser_id-hword_id ?pid ?id))
        (bind ?id (+ ?id 1))
        (assert (current_id ?id))
)

;=======================  map relations ========================
(defrule map_root
(declare (salience -100))
?f0<-(relation_name-rel_ids ?rel P0 ?rid)
(dep_parser_id-hword_id ?rid ?r)
=>
        (retract ?f0)
        (assert (relation_name-rel_ids ?rel 0 ?r))
)


(defrule  map_rel
(declare (salience -100))
?f0<-(relation_name-rel_ids ?rel ?lid ?rid)
(dep_parser_id-hword_id ?lid ?l)
(dep_parser_id-hword_id ?rid ?r)
=>
        (retract ?f0)
        (assert (relation_name-rel_ids ?rel ?l ?r))
)

