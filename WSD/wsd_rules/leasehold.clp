
(defrule leasehold0
(declare (salience 5000))
(id-root ?id leasehold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patte_para_uTAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leasehold.clp 	leasehold0   "  ?id "  patte_para_uTAnA )" crlf))
)

;"leasehold","Adj","1.patte_para_uTAnA"
;A leasehold house.
;
(defrule leasehold1
(declare (salience 4900))
(id-root ?id leasehold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patte_kA_aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leasehold.clp 	leasehold1   "  ?id "  patte_kA_aXikAra )" crlf))
)

;"leasehold","N","1.patte_kA_aXikAra"
;Have it on leasehold.
;
