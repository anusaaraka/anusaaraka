
(defrule reshuffle0
(declare (salience 5000))
(id-root ?id reshuffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pere_baxala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reshuffle.clp 	reshuffle0   "  ?id "  Pere_baxala_kara )" crlf))
)

;"reshuffle","V","1.Pere_baxala_karanA"
(defrule reshuffle1
(declare (salience 4900))
(id-root ?id reshuffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reshuffle.clp 	reshuffle1   "  ?id "  PeMta )" crlf))
)

;"reshuffle","VT","1.PeMtanA"
;Reshuffle the cards please.  
;--"2.Pera-baxala_karanA"
;The cabinet at the centre has been reshuffled.  
;
