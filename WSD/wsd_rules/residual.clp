
(defrule residual0
(declare (salience 5000))
(id-root ?id residual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  residual.clp 	residual0   "  ?id "  bacA_huA )" crlf))
)

;"residual","Adj","1.bacA_huA_/SeRa"
;There is a few residual faults in the computer program. 
;
(defrule residual1
(declare (salience 4900))
(id-root ?id residual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  residual.clp 	residual1   "  ?id "  avaSeRa )" crlf))
)

;"residual","N","1.avaSeRa"
;His residuals are a weak heart && nervousness. 
;
