
(defrule ogle0
(declare (salience 5000))
(id-root ?id ogle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katAkRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ogle.clp 	ogle0   "  ?id "  katAkRa )" crlf))
)

;"ogle","N","1.katAkRa"
(defrule ogle1
(declare (salience 4900))
(id-root ?id ogle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XqRtawA_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ogle.clp 	ogle1   "  ?id "  XqRtawA_se_xeKa )" crlf))
)

;"ogle","VTI","1.XqRtawA_se_xeKanA"
;All the boys oggled at her.
;
