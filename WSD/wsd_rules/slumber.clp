
(defrule slumber0
(declare (salience 5000))
(id-root ?id slumber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpanixrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slumber.clp 	slumber0   "  ?id "  alpanixrA )" crlf))
)

;"slumber","N","1.alpanixrA"
;The king was in deep slumber.
;
(defrule slumber1
(declare (salience 4900))
(id-root ?id slumber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpanixrA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slumber.clp 	slumber1   "  ?id "  alpanixrA_le )" crlf))
)

;"slumber","V","alpanixrA_le"
