
(defrule unbend0
(declare (salience 5000))
(id-root ?id unbend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unbending )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id haTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unbend.clp  	unbend0   "  ?id "  haTI )" crlf))
)

;"unbending","Adj","1.haTI"
;Ultimately the workers had to call off the strike due to the unbending
;attitude of the authorities.
;
(defrule unbend1
(declare (salience 4900))
(id-root ?id unbend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id narama_pada_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbend.clp 	unbend1   "  ?id "  narama_pada_jA )" crlf))
)

;"unbend","VI","1.narama_pada_jAnA"
;Finally her mother unbent && granted them permission .
;
(defrule unbend2
(declare (salience 4800))
(id-root ?id unbend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbend.clp 	unbend2   "  ?id "  ArAma_xe )" crlf))
)

;"unbend","VT","1.ArAma_xe"
;Unbend the mind from absorbing too much information
;
