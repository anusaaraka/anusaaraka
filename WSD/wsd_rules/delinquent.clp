
(defrule delinquent0
(declare (salience 5000))
(id-root ?id delinquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AparAXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delinquent.clp 	delinquent0   "  ?id "  AparAXika )" crlf))
)

;"delinquent","Adj","1.AparAXika"
;He is a delingquent criminal.
;Delinquent teenagers are kept in juvenile prisons. 
;
(defrule delinquent1
(declare (salience 4900))
(id-root ?id delinquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparAXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delinquent.clp 	delinquent1   "  ?id "  aparAXI )" crlf))
)

;"delinquent","N","1.aparAXI"
;The delinquents should be punished.
;
