
(defrule saturate0
(declare (salience 5000))
(id-root ?id saturate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saturated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwqpwa_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  saturate.clp  	saturate0   "  ?id "  saMwqpwa_kiyA_huA )" crlf))
)

;"saturated","Adj","1.saMwqpwa kiyA huA"
;Saturated apple juice is distributed amongs the children.
;
(defrule saturate1
(declare (salience 4900))
(id-root ?id saturate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwqpwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saturate.clp 	saturate1   "  ?id "  saMwqpwa_kara )" crlf))
)

;"saturate","V","1.saMwqpwa_karanA"
;--"2.gIlA_kara_xenA"
;IT has been raining heavily since yesterday && the fields are completely saturated.
;--"3.BarA_honA"
;The market is saturated with good used cars.
;
