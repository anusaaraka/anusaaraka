
(defrule pedestrian0
(declare (salience 5000))
(id-root ?id pedestrian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIrasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pedestrian.clp 	pedestrian0   "  ?id "  nIrasa )" crlf))
)

;"pedestrian","Adj","1.nIrasa"
;Life in the suburbs can be petty pedestrian.
;
(defrule pedestrian1
(declare (salience 4900))
(id-root ?id pedestrian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAxacArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pedestrian.clp 	pedestrian1   "  ?id "  pAxacArI )" crlf))
)

;"pedestrian","N","1.pAxacArI"
;Pedestrian should walk on the footpath.
;
