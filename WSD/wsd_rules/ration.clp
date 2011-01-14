
(defrule ration0
(declare (salience 5000))
(id-root ?id ration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rASana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ration.clp 	ration0   "  ?id "  rASana )" crlf))
)

;"ration","N","1.rASana"
;Now there is a weekly kerosine ration.  
;You have to get your new ration card.
;
(defrule ration1
(declare (salience 4900))
(id-root ?id ration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrwi_sImiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ration.clp 	ration1   "  ?id "  pUrwi_sImiwa_kara )" crlf))
)

;"ration","V","1.pUrwi_sImiwa_karanA"
;We will have to ration petrol.
;
