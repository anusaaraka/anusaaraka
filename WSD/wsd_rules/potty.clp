
(defrule potty0
(declare (salience 5000))
(id-root ?id potty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potty.clp 	potty0   "  ?id "  mUrKa )" crlf))
)

;"potty","Adj","1.mUrKa/pAgala"
;You are making me potty. 
;
(defrule potty1
(declare (salience 4900))
(id-root ?id potty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potty.clp 	potty1   "  ?id "  pOtI )" crlf))
)

;"potty","N","1.pOtI{baccoM_ke_liye_SOca}"
;Potty is used for children. 
;
