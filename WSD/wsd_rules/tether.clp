
(defrule tether0
(declare (salience 5000))
(id-root ?id tether)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tether.clp 	tether0   "  ?id "  rassI )" crlf))
)

;"tether","N","1.rassI"
;The juggler is showing tricks with a tether .
;
(defrule tether1
(declare (salience 4900))
(id-root ?id tether)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pagahA_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tether.clp 	tether1   "  ?id "  pagahA_se_bAzXa )" crlf))
)

;"tether","VT","1.pagahA_se_bAzXa"
;Oxen are tethered in the quadrangle.
;
