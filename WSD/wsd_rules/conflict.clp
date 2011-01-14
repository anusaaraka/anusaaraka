
(defrule conflict0
(declare (salience 5000))
(id-root ?id conflict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conflict.clp 	conflict0   "  ?id "  viroXa )" crlf))
)

;"conflict","N","1.viroXa/saMGarRa"
;His conflict of interest made him ineligible for the post.
;
(defrule conflict1
(declare (salience 4900))
(id-root ?id conflict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conflict.clp 	conflict1   "  ?id "  viroXa_kara )" crlf))
)

;"conflict","V","1.viroXa_karanA"
;The two proposals conflict!
;
