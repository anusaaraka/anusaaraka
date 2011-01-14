
(defrule mutter0
(declare (salience 5000))
(id-root ?id mutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZabadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutter.clp 	mutter0   "  ?id "  badZabadZAhata )" crlf))
)

;"mutter","N","1.badZabadZAhata"
(defrule mutter1
(declare (salience 4900))
(id-root ?id mutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZabadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mutter.clp 	mutter1   "  ?id "  badZabadZA )" crlf))
)

;"mutter","VTI","1.badZabadZAnA"
;He muttered to himself.
;
