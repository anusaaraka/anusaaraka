
(defrule silver0
(declare (salience 5000))
(id-root ?id silver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silver.clp 	silver0   "  ?id "  rajawa )" crlf))
)

;"silver","Adj","1.rajawa/rAjawa"
;He has an attractive silver sports car.
;
(defrule silver1
(declare (salience 4900))
(id-root ?id silver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAzxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silver.clp 	silver1   "  ?id "  cAzxI )" crlf))
)

;"silver","N","1.cAzxI"
;Silver is used to electroplate reactive metals.
;--"2.cAzxI_kA_paxaka"
;He won four silvers for his state.
;
(defrule silver2
(declare (salience 4800))
(id-root ?id silver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAzxI_caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silver.clp 	silver2   "  ?id "  cAzxI_caDZA )" crlf))
)

;"silver","V","1.cAzxI_caDZAnA"
;He owns a fine silvered bracelet.
;
