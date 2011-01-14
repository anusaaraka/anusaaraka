
(defrule shower0
(declare (salience 5000))
(id-root ?id shower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shower.clp 	shower0   "  ?id "  varRA )" crlf))
)

;"shower","N","1.varRA"
;There was a heavy shower of rain in the afternoon.
;--"2.PuhArA"
;The gardener was watering the plants by a showering cane.
;
(defrule shower1
(declare (salience 4900))
(id-root ?id shower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shower.clp 	shower1   "  ?id "  nahA )" crlf))
)

;"shower","V","1.nahAnA{PuhAra_meM}"
;She showered, changed && went out.
;--"2.barasanA"
;Ash from the volcano showered on the near by villages.
;
