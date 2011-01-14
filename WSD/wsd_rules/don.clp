
(defrule don0
(declare (salience 5000))
(id-root ?id don)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahASaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  don.clp 	don0   "  ?id "  mahASaya )" crlf))
)

;"don","N","1.mahASaya{spena_kI_BARA_meM}/upAXi"
(defrule don1
(declare (salience 4900))
(id-root ?id don)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  don.clp 	don1   "  ?id "  pahana )" crlf))
)

;"don","VT","1.pahananA/grahaNa_karanA"
