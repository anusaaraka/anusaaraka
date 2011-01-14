
(defrule regent0
(declare (salience 5000))
(id-root ?id regent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsanakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regent.clp 	regent0   "  ?id "  SAsanakArI )" crlf))
)

;"regent","Adj","1.SAsanakArI"
;He is the Prince Regent
;
(defrule regent1
(declare (salience 4900))
(id-root ?id regent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjya-prawiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regent.clp 	regent1   "  ?id "  rAjya-prawiniXi )" crlf))
)

;"regent","N","1.rAjya-prawiniXi"
;He acted as a regent in the absence of his father. 
;
