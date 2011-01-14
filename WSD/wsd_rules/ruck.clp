
(defrule ruck0
(declare (salience 5000))
(id-root ?id ruck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janasAXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruck.clp 	ruck0   "  ?id "  janasAXAraNa )" crlf))
)

;"ruck","N","1.janasAXAraNa"
;She wants to come out of the ruck && establish herself as a leader. 
;
(defrule ruck1
(declare (salience 4900))
(id-root ?id ruck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sikana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruck.clp 	ruck1   "  ?id "  Sikana )" crlf))
)

;"ruck","V","1.Sikana/silavata_padZanA"
;Your clothes got rucked up due to sleep. 
;
