
(defrule juvenile0
(declare (salience 5000))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waruNa_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile0   "  ?id "  waruNa_saMbaMXI )" crlf))
)

;"juvenile","Adj","1.waruNa_saMbaMXI"
;There is an increase in cases of juvenile crimes.
;
(defrule juvenile1
(declare (salience 4900))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiSora_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile1   "  ?id "  kiSora_vyakwi )" crlf))
)

;"juvenile","N","1.kiSora_vyakwi"
;There is an increase in the number of juveniles taking to crimes.
;

;@@@ Added by Prachi Rathore[8-3-14]
; A juvenile crime[m-w]
;एक बाल अपराध . 
(defrule juvenile2
(declare (salience 5050))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile2   "  ?id "  bAla )" crlf))
)

;@@@ Added by Prachi Rathore[8-3-14]
;She criticized his juvenile behavior at the party.[m-w]
;उसने पार्टी में उसके बचकाने बर्ताव की समीक्षा की . 
(defrule juvenile3
(declare (salience 5150))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 behaviour|sense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacakAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile3   "  ?id "  bacakAnA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_juvenile3
(declare (salience 5150))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 behaviour|sense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacakAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " juvenile.clp   sub_samA_juvenile3   "   ?id " bacakAnA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_juvenile3
(declare (salience 5150))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 behaviour|sense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacakAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " juvenile.clp   obj_samA_juvenile3   "   ?id " bacakAnA )" crlf))
)
