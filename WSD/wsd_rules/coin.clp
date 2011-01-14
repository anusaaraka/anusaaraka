
(defrule coin0
(declare (salience 5000))
(id-root ?id coin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coin.clp 	coin0   "  ?id "  sikkA )" crlf))
)

;"coin","N","1.sikkA"
;1.paise coin is no longer in circulation.
;
(defrule coin1
(declare (salience 4900))
(id-root ?id coin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coin.clp 	coin1   "  ?id "  gaDZa )" crlf))
)

;"coin","V","1.gaDZanA"
;The word 'pandemonium'was coined by John Milton.
;--"2.PAyaxA_karanA"
;His new restaurant is coining it.
;
