
(defrule bulk0
(declare (salience 5000))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Woka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulk.clp 	bulk0   "  ?id "  Woka )" crlf))
)

;"bulk","N","1.Woka"
;It is cheaper to buy it in bulk
;
(defrule bulk1
(declare (salience 4900))
(id-root ?id bulk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bulk.clp 	bulk1   "  ?id "  xiKa )" crlf))
)

;"bulk","VI","1.xiKanA"
;The parcel bulked in the sack
;
