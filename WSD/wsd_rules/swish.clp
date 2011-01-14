
(defrule swish0
(declare (salience 5000))
(id-root ?id swish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahezgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swish.clp 	swish0   "  ?id "  mahezgA )" crlf))
)

;"swish","Adj","1.mahezgA"
;Super bazars are always swish.
;
(defrule swish1
(declare (salience 4900))
(id-root ?id swish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarasarAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swish.clp 	swish1   "  ?id "  sarasarAhata )" crlf))
)

;"swish","N","1.sarasarAhata"
;The dog gave a swish of its tail. 
;
(defrule swish2
(declare (salience 4800))
(id-root ?id swish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarasarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swish.clp 	swish2   "  ?id "  sarasarA )" crlf))
)

;"swish","V","1.sarasarAnA"
;Dogs swish their tail when they see their masters.
;
