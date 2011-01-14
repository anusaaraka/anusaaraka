
(defrule salient0
(declare (salience 5000))
(id-root ?id salient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salient.clp 	salient0   "  ?id "  muKya )" crlf))
)

;"salient","Adj","1.muKya"
;She pointed all the salient features of T.V.
;
(defrule salient1
(declare (salience 4900))
(id-root ?id salient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahirgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  salient.clp 	salient1   "  ?id "  bahirgawa )" crlf))
)

;"salient","N","1.bahirgawa"
;An outward curve in a military line of attack is called salient.
;
