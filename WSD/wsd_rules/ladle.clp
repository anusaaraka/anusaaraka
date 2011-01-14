
(defrule ladle0
(declare (salience 5000))
(id-root ?id ladle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ladle.clp 	ladle0   "  ?id "  camacA )" crlf))
)

;"ladle","N","1.camacA/kalaCI"
(defrule ladle1
(declare (salience 4900))
(id-root ?id ladle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ladle.clp 	ladle1   "  ?id "  parasa )" crlf))
)

;"ladle","V","1.parasanA"
;The cook ladled the dal into bowls.
;
