
(defrule wail0
(declare (salience 5000))
(id-root ?id wail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ronA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wail.clp 	wail0   "  ?id "  ronA )" crlf))
)

;"wail","N","1.ronA"
;The cry of the lady became feeble
;
(defrule wail1
(declare (salience 4900))
(id-root ?id wail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilApa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wail.clp 	wail1   "  ?id "  vilApa_kara )" crlf))
)

;"wail","VTI","1.vilApa_karanA"
;The child started wailing when his mother left him
;
