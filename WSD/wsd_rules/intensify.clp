
(defrule intensify0
(declare (salience 5000))
(id-root ?id intensify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intensify.clp 	intensify0   "  ?id "  wIvra_kara )" crlf))
)

;"intensify","V","1.wIvra_karanA{baDZAnA}"
(defrule intensify1
(declare (salience 4900))
(id-root ?id intensify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intensify.clp 	intensify1   "  ?id "  saSakwa_kara )" crlf))
)

;"intensify","VT","1.saSakwa_karanA"
;The security intensified the combing operations .
;
