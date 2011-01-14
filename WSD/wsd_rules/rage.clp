
(defrule rage0
(declare (salience 5000))
(id-root ?id rage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id raging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bahuwa_jora_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rage.clp  	rage0   "  ?id "  bahuwa_jora_kA )" crlf))
)

;"raging","Adj","1.bahuwa_jora_kA"
;She has a raging headache.  
;
(defrule rage1
(declare (salience 4900))
(id-root ?id rage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rage.clp 	rage1   "  ?id "  roRa )" crlf))
)

(defrule rage2
(declare (salience 4800))
(id-root ?id rage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMJalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rage.clp 	rage2   "  ?id "  JuMJalA )" crlf))
)

;"rage","VI","1.JuMJalAnA"
;He raged against me for disobeying him.
;--"2.jora_pakadZanA"    
;An epidemic is raging throughout the country.
;
;