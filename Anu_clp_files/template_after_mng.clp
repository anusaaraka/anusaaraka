;This file is added by Shirisha Manju 13-05-14

;You liar! You stupid! You thief! You idiot!
(defrule add_extra_word
(declare (salience 100))
(hindi_id_order $? ?you ?id $?)
(id-word ?you you)
(id-word ?id liar|stupid|thief|idiot|chicken)
?f0<-(id-Apertium_output ?id $?mng)
(not (word_inserted ?id))
=>
	(retract ?f0)
	(assert (id-Apertium_output ?id $?mng kahIM ke))
	(assert (word_inserted ?id))
)
