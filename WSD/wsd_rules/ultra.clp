
(defrule ultra0
(declare (salience 5000))
(id-root ?id ultra)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ultra.clp 	ultra0   "  ?id "  carama )" crlf))
)

;"ultra","Adj","1.carama"
;The ultra-violet rays of the sun are harmful.
;
(defrule ultra1
(declare (salience 4900))
(id-root ?id ultra)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caramapanWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ultra.clp 	ultra1   "  ?id "  caramapanWI )" crlf))
)

;"ultra","N","1.caramapanWI"
;Five ultras amongst the ten killed in the violance.
;
