
(defrule decay0
(declare (salience 5000))
(id-root ?id decay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decay.clp 	decay0   "  ?id "  kRaya )" crlf))
)

;"decay","N","1.kRaya"
;The corpse was in an advanced state of decay
;
(defrule decay1
(declare (salience 4900))
(id-root ?id decay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decay.clp 	decay1   "  ?id "  sadZa )" crlf))
)

;"decay","VT","1.sadZanA/bigadZanA/GatanA/muraJAnA/nASa_honA"
;The unoccupied house started to decay
;
