
(defrule romantic0
(declare (salience 5000))
(id-root ?id romantic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id romAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  romantic.clp 	romantic0   "  ?id "  romAnI )" crlf))
)

(defrule romantic1
(declare (salience 4900))
(id-root ?id romantic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  romantic.clp 	romantic1   "  ?id "  kalpiwa )" crlf))
)

;"romantic","Adj","1.kalpiwa"
;She has highly romantic ideas of life rather than reality.  
;--"2.romAnI
;Keats was one of the greatest romantic poets of his time. 
;
;