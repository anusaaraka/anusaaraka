
(defrule gentile0
(declare (salience 5000))
(id-root ?id gentile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yahuxI_yA_gEra_IsAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gentile.clp 	gentile0   "  ?id "  yahuxI_yA_gEra_IsAI )" crlf))
)

;"gentile","Adj","1.yahuxI_yA_gEra_IsAI"
;The Nazi Germany tortured the gentiles.
;
(defrule gentile1
(declare (salience 4900))
(id-root ?id gentile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yahuxI_yA_gEra_IsAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gentile.clp 	gentile1   "  ?id "  yahuxI_yA_gEra_IsAI )" crlf))
)

;"gentile","N","1.yahuxI_yA_gEra_IsAI"
;The Nazi Germany tortured the gentiles.
;
