
(defrule natural0
(declare (salience 5000))
(id-root ?id natural)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAkqwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  natural.clp 	natural0   "  ?id "  prAkqwika )" crlf))
)

;"natural","Adj","1.prAkqwika"
;This place is a natural beauty.
;--"2.svABAvika"
;After her recent accident it is quite natural for her to be scared of speeding vehicles.
;
(defrule natural1
(declare (salience 4900))
(id-root ?id natural)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAkqwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  natural.clp 	natural1   "  ?id "  prAkqwika )" crlf))
)

;"natural","N","1.prAkqwika"
;I believe in naturals.
;
