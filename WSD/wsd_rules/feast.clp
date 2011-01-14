
(defrule feast0
(declare (salience 5000))
(id-root ?id feast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feast.clp 	feast0   "  ?id "  Boja )" crlf))
)

;"feast","N","1.Boja"
;The wedding feast was excellent.
;--"2.saMwoRa"
;The festival was a feast of colours.
;--"3.wyEhAra"
;Feast of Christ is one of the bigest festivals in Goa.
;
(defrule feast1
(declare (salience 4900))
(id-root ?id feast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bojana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feast.clp 	feast1   "  ?id "  Bojana_kara )" crlf))
)

;"feast","V","1.Bojana_karanA"
;Guests had a sumptuousfeast at the wedding.
;--"2.Annaxiwa_karana"
;Travelling in Kerala State is a feast to eyes.
;
