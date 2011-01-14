
(defrule nail0
(declare (salience 5000))
(id-root ?id nail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAKUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nail.clp 	nail0   "  ?id "  nAKUna )" crlf))
)

(defrule nail1
(declare (salience 4900))
(id-root ?id nail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIla_jadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nail.clp 	nail1   "  ?id "  kIla_jadZa )" crlf))
)

;"nail","VT","1.kIla_jadZanA"
;He nailed the box properly.
;Nail the painting on the wall.
;
;