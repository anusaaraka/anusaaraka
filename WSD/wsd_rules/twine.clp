
(defrule twine0
(declare (salience 5000))
(id-root ?id twine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suwalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twine.clp 	twine0   "  ?id "  suwalI )" crlf))
)

;"twine","N","1.suwalI"
;Get a ball of twine to tie this bundle of old newspapers.
;
(defrule twine1
(declare (salience 4900))
(id-root ?id twine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twine.clp 	twine1   "  ?id "  bata )" crlf))
)

;"twine","V","1.batanA"
;The creeper is twining around a tree.
;
