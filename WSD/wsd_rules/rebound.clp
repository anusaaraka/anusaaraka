
(defrule rebound0
(declare (salience 5000))
(id-root ?id rebound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id palatAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebound.clp 	rebound0   "  ?id "  palatAva )" crlf))
)

;"rebound","N","1.palatAva"
;she got a rebound in garments export.
;
(defrule rebound1
(declare (salience 4900))
(id-root ?id rebound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_ko_uCala_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebound.clp 	rebound1   "  ?id "  pICe_ko_uCala_A )" crlf))
)

;"rebound","VI","1.pICe_ko_uCala_AnA"
;The ball rebounded from the wall. 
;--"2.Upara_AnA"
;The evil we do may rebound upon ourselves.  
;
