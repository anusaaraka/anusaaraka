
(defrule neurotic0
(declare (salience 5000))
(id-root ?id neurotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manovikRepa_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neurotic.clp 	neurotic0   "  ?id "  manovikRepa_saMbanXI )" crlf))
)

;"neurotic","Adj","1.manovikRepa_saMbanXI"
;He has a neurotic disease.
;
(defrule neurotic1
(declare (salience 4900))
(id-root ?id neurotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manovikRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neurotic.clp 	neurotic1   "  ?id "  manovikRipwa )" crlf))
)

;"neurotic","N","1.manovikRipwa"
;He is a neurotic.
;
