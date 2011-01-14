
;"provided","Conj","1.baSarwe_ki"
;I will present you cycle provided (that) you would pass in 1st class.
;
(defrule provide0
(declare (salience 5000))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shelter)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASraya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " provide.clp	provide0  "  ?id "  " ?id1 "  ASraya_xe  )" crlf))
)

(defrule provide1
(declare (salience 4900))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shelter)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASraya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " provide.clp	provide1  "  ?id "  " ?id1 "  ASraya_xe  )" crlf))
)

(defrule provide2
(declare (salience 4800))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id provided )
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id baSarwe_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  provide.clp  	provide2   "  ?id "  baSarwe_ki )" crlf))
)

(defrule provide3
(declare (salience 4700))
(id-root ?id provide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provide.clp 	provide3   "  ?id "  xe )" crlf))
)

;"provide","V","1.xenA"
;In Board exams some schools provide writing pads also with answer sheets.
;
;
