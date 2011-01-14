
(defrule ship0
(declare (salience 5000))
(id-root ?id ship)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shipping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id powa-samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ship.clp  	ship0   "  ?id "  powa-samUha )" crlf))
)

;"shipping","N","1.powa-samUha"
;The canal is now open to shipping.
;--"2.powa-parivahana"
;Nowadays shipping helps us in earning a lot of foreign exchange.
;
(defrule ship1
(declare (salience 4900))
(id-root ?id ship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ship.clp 	ship1   "  ?id "  jahAjZa )" crlf))
)

;"ship","N","1.jahAjZa/powa"
;He boarded a ship to India.
;
(defrule ship2
(declare (salience 4800))
(id-root ?id ship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAjZa_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ship.clp 	ship2   "  ?id "  jahAjZa_se_Beja )" crlf))
)

;"ship","V","1.jahAjZa_se_BejanA"
;Tonnes of cocain were shipped from Hong Kong to Indonesia.
;--"2.pAnI_se_BaranA"
;The canoe began to ship water.
;
