
(defrule seat0
(declare (salience 5000))
(id-root ?id seat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bETane_kA_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seat.clp  	seat0   "  ?id "  bETane_kA_sWAna )" crlf))
)

;"seating","N","1.bETane kA sWAna"
;This bus has seating capacity of 60 people.
;
(defrule seat1
(declare (salience 4900))
(id-root ?id seat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Asana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seat.clp 	seat1   "  ?id "  Asana )" crlf))
)

;"seat","N","1.Asana"
;Please take your seat.
;--"2.sWAna"
;I have reserved two seats in the theatre.
;--"3.paxa"
;Can you guess who will win this seat.
;--"4.AXAra/aXIRTAna"
;Delhi is the seat of government of India.
;
(defrule seat2
(declare (salience 4800))
(id-root ?id seat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seat.clp 	seat2   "  ?id "  bETA )" crlf))
)

;"seat","V","1.bETAnA"
;Seat the boy next to his brother.
;--"2.bETa_jAnA"
;Please be seated ladies && gentlemen.
;--"3.ke_lie_jagaha_honA"
;It is a special bus that seats 100 people.
;
