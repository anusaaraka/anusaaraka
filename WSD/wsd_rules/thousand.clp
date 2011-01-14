;Added by human
(defrule thousand0
(declare (salience 5000))
(id-root ?id thousand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thousands)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hajAroM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  thousand.clp  	thousand0   "  ?id "  hajAroM )" crlf))
)

;
;
(defrule thousand1
(declare (salience 4900))
(id-root ?id thousand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hajZAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thousand.clp 	thousand1   "  ?id "  hajZAra )" crlf))
)

;"thousand","Det","1.hajZAra"
;--"2.hajAra"
;I paid ten thousand rupees for my flight.
;
