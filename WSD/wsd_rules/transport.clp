
(defrule transport0
(declare (salience 5000))
(id-root ?id transport)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id transported )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBiBUwa_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  transport.clp  	transport0   "  ?id "  aBiBUwa_honA )" crlf))
)

;"transported","Adj","1.aBiBUwa_honA"
;Listening to her sing so soulfully I was totally transported.
;
(defrule transport1
(declare (salience 4900))
(id-root ?id transport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transport.clp 	transport1   "  ?id "  parivahana )" crlf))
)

;"transport","N","1.parivahana"
;There are various means of transport.
;
(defrule transport2
(declare (salience 4800))
(id-root ?id transport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transport.clp 	transport2   "  ?id "  vahana_kara )" crlf))
)

;"transport","V","1.vahana_karanA"
;You have to transport the goods in a lorry.
;--"2.sajZA_xenA{xUravarwI_sWANa_meM}"
;The Britishers transported the freedom-fighters to the Andmans.
;
