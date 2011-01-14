
(defrule convenient0
(declare (salience 5000))
(id-root ?id convenient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suviXAjanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convenient.clp 	convenient0   "  ?id "  suviXAjanaka )" crlf))
)

(defrule convenient1
(declare (salience 4900))
(id-root ?id convenient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suviXA_janaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convenient.clp 	convenient1   "  ?id "  suviXA_janaka )" crlf))
)

;"convenient","Adj","1.suviXA_janaka"
;A convenient excuse for not going
;It will be convenient to you to go by taxi.
;--"2.samIpa_sugamya"  
;Our place is convenient to all transportation.
;
;
