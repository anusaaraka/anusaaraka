
(defrule conserve0
(declare (salience 5000))
(id-root ?id conserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id murabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conserve.clp 	conserve0   "  ?id "  murabbA )" crlf))
)

;"conserve","N","1.murabbA"
;I like the conserve of gooseberries.
;
(defrule conserve1
(declare (salience 4900))
(id-root ?id conserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conserve.clp 	conserve1   "  ?id "  surakRiwa_raKa )" crlf))
)

;"conserve","VT","1.surakRiwa_raKanA"
;Wild life should be conserved.
;
