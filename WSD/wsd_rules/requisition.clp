
(defrule requisition0
(declare (salience 5000))
(id-root ?id requisition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXiyAcana_yA_mAzga-pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  requisition.clp 	requisition0   "  ?id "  aXiyAcana_yA_mAzga-pawra )" crlf))
)

;"requisition","N","1.aXiyAcana_yA_mAzga-pawra"
;Make a requisition on headquaters for supplies. 
;
(defrule requisition1
(declare (salience 4900))
(id-root ?id requisition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga_praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  requisition.clp 	requisition1   "  ?id "  mAzga_praswuwa_kara )" crlf))
)

;"requisition","VT","1.mAzga_praswuwa_karanA"
;Requisition the villagers for billets.
;
