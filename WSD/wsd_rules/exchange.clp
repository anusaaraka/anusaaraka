
(defrule exchange0
(declare (salience 5000))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange0   "  ?id "  axalA_baxalA )" crlf))
)

;"exchange","N","1.axalA_baxalA"
;Four militants were released in exchange of 154 passengers on board the IA plane 
;
(defrule exchange1
(declare (salience 4900))
(id-root ?id exchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exchange.clp 	exchange1   "  ?id "  axalA_baxalA_kara )" crlf))
)

;"exchange","VT","1.axalA_baxalA_karanA"
;Four militants were exchanged for 154 passengers on board the IA plane.
;
