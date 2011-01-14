
(defrule favourable0
(declare (salience 5000))
(id-root ?id favourable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  favourable.clp 	favourable0   "  ?id "  anukUla )" crlf))
)

(defrule favourable1
(declare (salience 4900))
(id-root ?id favourable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiwakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  favourable.clp 	favourable1   "  ?id "  hiwakArI )" crlf))
)

;"favourable","Adj","1.hiwakArI"
;The public reaction to the new tax was generally favourable.
;
;
