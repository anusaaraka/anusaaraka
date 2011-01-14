
(defrule price0
(declare (salience 5000))
(id-root ?id price)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  price.clp 	price0   "  ?id "  mUlya )" crlf))
)

;"price","N","1.mUlya"
;What's the price of this pencil.
;
(defrule price1
(declare (salience 4900))
(id-root ?id price)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya_nirXAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  price.clp 	price1   "  ?id "  mUlya_nirXAriwa_kara )" crlf))
)

;"price","V","1.mUlya_nirXAriwa_karanA"
;The articles are priced differently.
;
