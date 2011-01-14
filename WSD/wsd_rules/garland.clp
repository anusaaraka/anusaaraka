
(defrule garland0
(declare (salience 5000))
(id-root ?id garland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garland.clp 	garland0   "  ?id "  mAlA )" crlf))
)

;"garland","N","1.mAlA"
;We offered garlands at the temple.
;
(defrule garland1
(declare (salience 4900))
(id-root ?id garland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAra_pahanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garland.clp 	garland1   "  ?id "  hAra_pahanA )" crlf))
)

;"garland","V","1.hAra_pahanAnA"
;The leader was garlanded after his victory in the elections.
;
