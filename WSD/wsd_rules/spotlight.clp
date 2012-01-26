
(defrule spotlight0
(declare (salience 5000))
(id-root ?id spotlight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spoYta_lAita))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spotlight.clp 	spotlight0   "  ?id "  spoYta_lAita )" crlf))
)

;"spotlight","N","1.spoYta_lAita"
;Special effects can be ereated by the use of spotlights of different beams.
;
(defrule spotlight1
(declare (salience 4900))
(id-root ?id spotlight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spoYta_lAita_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spotlight.clp 	spotlight1   "  ?id "  spoYta_lAita_dAla )" crlf))

)

;"spotlight","V","1.spoYta_lAita_dAlanA"
