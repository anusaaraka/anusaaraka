;"cooking","N","1.KAnA_pakAne_kI_viXi"
;He does all the cooking by himself.
;
;
(defrule cook0
(declare (salience 5000))
(id-root ?id cook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JUTI_kahAnI_gaDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cook.clp	cook0  "  ?id "  " ?id1 "  JUTI_kahAnI_gaDa  )" crlf))
)

;She cooked up a story about working late in the library.
;usane puswakAlaya meM xera waka kAma karane kI kahAnI gaDI
(defrule cook1
(declare (salience 4900))
(id-root ?id cook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cooking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KAnA_pakAne_kI_viXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cook.clp  	cook1   "  ?id "  KAnA_pakAne_kI_viXi )" crlf))
)

(defrule cook2
(declare (salience 4800))
(id-root ?id cook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasoiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cook.clp 	cook2   "  ?id "  rasoiyA )" crlf))
)

;"cook","N","1.rasoiyA"
;She is a very good cook.
;
(defrule cook3
(declare (salience 4700))
(id-root ?id cook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cook.clp 	cook3   "  ?id "  pakA )" crlf))
)

;"cook","VT","1.pakAnA"
;My husband doesn't cook.
;These potatoes have to cook for 20 minutes.
;His accountant cooked up the financial records.
;
