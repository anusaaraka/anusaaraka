
(defrule siamese0
(declare (salience 5000))
(id-root ?id siamese)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SyAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  siamese.clp 	siamese0   "  ?id "  SyAmI )" crlf))
)

;"siamese","Adj","1.SyAmI"
;The people of Thailand speak siamese language.
;
(defrule siamese1
(declare (salience 4900))
(id-root ?id siamese)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SyAma_xeSa_vAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  siamese.clp 	siamese1   "  ?id "  SyAma_xeSa_vAsI )" crlf))
)

;"siamese","N","1.SyAma_xeSa_vAsI"
;The natives of Thailand is called siamese.
;--"2.SyAma_xeSa_BARA"
;The language spoken by the people of Thailand is called Siamese.
;
