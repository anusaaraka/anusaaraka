
(defrule fate0
(declare (salience 5000))
(id-root ?id fate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAgya_meM_liKA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fate.clp  	fate0   "  ?id "  BAgya_meM_liKA_huA )" crlf))
)

;"fated","Adj","1.BAgya_meM_liKA_huA"
;He was fated to die in the accident.
;
(defrule fate1
(declare (salience 4900))
(id-root ?id fate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAgya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fate.clp 	fate1   "  ?id "  BAgya )" crlf))
)

;"fate","N","1.BAgya"
;I consider it my fate that I didn't get a seat in the college.
;
;