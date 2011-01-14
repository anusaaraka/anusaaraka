
(defrule cripple0
(declare (salience 5000))
(id-root ?id cripple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMgadZA_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cripple.clp 	cripple0   "  ?id "  laMgadZA_manuRya )" crlf))
)

;"cripple","N","1.laMgadZA_manuRya"
;He sits idle at home like cripples.
;
(defrule cripple1
(declare (salience 4900))
(id-root ?id cripple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apAhija_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cripple.clp 	cripple1   "  ?id "  apAhija_kara )" crlf))
)

;"cripple","VT","1.apAhija_karanA"
;Her child got crippled by polio attack.
;This measure crippled our efforts.
;The accident has crippled her for life.
;
