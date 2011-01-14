
(defrule deposit0
(declare (salience 5000))
(id-root ?id deposit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xarohara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deposit.clp 	deposit0   "  ?id "  Xarohara )" crlf))
)

;"deposit","N","1.Xarohara"
;His deposit was refunded when he returned the car
;
(defrule deposit1
(declare (salience 4900))
(id-root ?id deposit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deposit.clp 	deposit1   "  ?id "  jamA_kara )" crlf))
)

;"deposit","VT","1.jamA_karanA"
;I want to deposit my savings in a National bank.
;
