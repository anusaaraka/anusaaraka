
(defrule quake0
(declare (salience 5000))
(id-root ?id quake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quake.clp 	quake0   "  ?id "  kampana )" crlf))
)

;"quake","N","1.kampana"
;Quake rocked in Lattur.
;
(defrule quake1
(declare (salience 4900))
(id-root ?id quake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quake.clp 	quake1   "  ?id "  kAzpa )" crlf))
)

;"quake","VT","1.kAzpanA"
;The lady quaked with sweat when the police approached her.
;
