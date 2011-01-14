
(defrule insoluble0
(declare (salience 5000))
(id-root ?id insoluble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisakA_samAXAna_na_hosake))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insoluble.clp 	insoluble0   "  ?id "  jisakA_samAXAna_na_hosake )" crlf))
)

(defrule insoluble1
(declare (salience 4900))
(id-root ?id insoluble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id na_GulanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insoluble.clp 	insoluble1   "  ?id "  na_GulanevAlA )" crlf))
)

;"insoluble","Adj","1.na_GulanevAlA"
;Cholesterol is insoluble in water.
;--"2.asamAXAnIya"
;The issue is insoluble.
;
;
