
(defrule triple0
(declare (salience 5000))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wigunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triple.clp 	triple0   "  ?id "  wigunA )" crlf))
)

;"triple","Adj","1.wigunA"
;Add triple amount of water to the flour.
;
(defrule triple1
(declare (salience 4900))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wigunA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triple.clp 	triple1   "  ?id "  wigunA_kara )" crlf))
)

;"triple","VT","1.wigunA_karanA"
;The farmer had to triple his produce.
;


;@@@ Added by Prachi Rathore[1-4-14]
;Her trainer is a triple Olympic champion. [cambridge]
;उसका प्रशिक्षक एक तीन बार का ओलिंपिक चैम्पियन है . 
(defrule triple2
(declare (salience 5100))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa   ?id1 ?id)
(id-root ?id1 champion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIna_bAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  triple.clp 	triple2   "  ?id " wIna_bAra_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_triple2
(declare (salience 5100))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 champion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIna_bAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " triple.clp   sub_samA_triple2   "   ?id " wIna_bAra_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_triple2
(declare (salience 5100))
(id-root ?id triple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 champion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIna_bAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " triple.clp   obj_samA_triple2   "   ?id " wIna_bAra_kA )" crlf))
)
