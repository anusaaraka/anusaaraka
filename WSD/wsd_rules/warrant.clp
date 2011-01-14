
(defrule warrant0
(declare (salience 5000))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant0   "  ?id "  aXikAra_pawra )" crlf))
)

(defrule warrant1
(declare (salience 4900))
(id-root ?id warrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANika_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warrant.clp 	warrant1   "  ?id "  pramANika_TaharA )" crlf))
)

;"warrant","VT","1.pramANika_TaharAnA"
;He warranted the statement given by the lawyer 
;
;