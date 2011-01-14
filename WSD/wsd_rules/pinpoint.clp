
(defrule pinpoint0
(declare (salience 5000))
(id-root ?id pinpoint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinpoint.clp 	pinpoint0   "  ?id "  sahI )" crlf))
)

;"pinpoint","Adj","1.sahI"
;The Pilot navigated the plane with pinpoint accuracy.
;
(defrule pinpoint1
(declare (salience 4900))
(id-root ?id pinpoint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcyagra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinpoint.clp 	pinpoint1   "  ?id "  sUcyagra )" crlf))
)

;"pinpoint","N","1.sUcyagra/sUI_kI_noka"
;Thousands of viruses can be found in pin point.
;
