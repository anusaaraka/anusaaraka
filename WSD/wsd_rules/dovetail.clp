
(defrule dovetail0
(declare (salience 5000))
(id-root ?id dovetail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dovetail.clp 	dovetail0   "  ?id "  cUla )" crlf))
)

;"dovetail","N","1.cUla"
(defrule dovetail1
(declare (salience 4900))
(id-root ?id dovetail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUla_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dovetail.clp 	dovetail1   "  ?id "  cUla_banA )" crlf))
)

;"dovetail","V","1.cUla_banAnA"
;The carpenter cut the wood pices perfectly to dovetail each other so that they fitted together
;--"2.sahI_waraha_se_karanA"
;The students of architecture were trained to make subjects which dove-tailed each other perfectly
;
