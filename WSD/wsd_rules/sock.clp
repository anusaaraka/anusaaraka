
(defrule sock0
(declare (salience 5000))
(id-root ?id sock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mojZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sock.clp 	sock0   "  ?id "  mojZA )" crlf))
)

;"sock","N","1.mojZA"
;A pair of socks cost nearly Rs. 35.
;--"2.jUwe_kA_BIwarI_walA"
;His shoes sock is not working well.
;
(defrule sock1
(declare (salience 4900))
(id-root ?id sock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Saswra_kA_AGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sock.clp 	sock1   "  ?id "  Saswra_kA_AGAwa )" crlf))
)

;"sock","V","1.Saswra_kA_AGAwa"
;My teacher is angry so she socked me.
;
