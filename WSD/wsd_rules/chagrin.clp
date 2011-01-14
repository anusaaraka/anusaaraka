
(defrule chagrin0
(declare (salience 5000))
(id-root ?id chagrin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMJalAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chagrin.clp 	chagrin0   "  ?id "  JuMJalAhata )" crlf))
)

;"chagrin","N","1.JuMJalAhata"
;Much to my chagrin I found my son smoking.
;
(defrule chagrin1
(declare (salience 4900))
(id-root ?id chagrin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chagrin.clp 	chagrin1   "  ?id "  kuDZA )" crlf))
)

;"chagrin","VT","1.kuDZAnA/KijAnA"
;He chagrined his parents by smoking before them.
;
