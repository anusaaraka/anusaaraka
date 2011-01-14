
(defrule sap0
(declare (salience 5000))
(id-root ?id sap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sap.clp 	sap0   "  ?id "  rasa )" crlf))
)

;"sap","N","1.rasa/sAra"
;That medicine is made from sap of Neem tree.
;--"2.mUrKa"
;The poor sap never knew that his wife was cheating him.
;
(defrule sap1
(declare (salience 4900))
(id-root ?id sap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sap.clp 	sap1   "  ?id "  rasa_nikAla )" crlf))
)

;"sap","V","1.rasa_[nikAlanA]"
;--"2.aSakwa_yA_xurbala_honA"
;As he grew older && older his working power sapped.
;
