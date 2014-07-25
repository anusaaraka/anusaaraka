;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule certain0
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 technique)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp   certain0   "  ?id "  KAsa )" crlf))
)


;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule certain1
(declare (salience 4000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 ~time&~death)  ;condition changed
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp   certain1   "  ?id "  kuCa )" crlf))
)


;Salience reduced by Meena(25.02.10)
(defrule certain2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain2   "  ?id "  niSciwa )" crlf))
)

;"certain","Adj","1.niSciwa"
;You must set aside a certain sum each week.
;


;Salience reduced by Meena(25.02.10)
(defrule certain3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain3   "  ?id "  kuCa )" crlf))
)

;@@@ Added by Preeti(21-4-14)
;We do not know for certain whether she is coming. [Cambridge Learner’s Dictionary]
;hama niSciwa rUpa se nahIM jAnawe hEM ki vaha A rahI hE.
(defrule certain4
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(kriyA-for_saMbanXI  ? ?id)
(id-word =(- ?id 1) for)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) niSciwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  certain.clp	certain4   "  ?id " "(- ?id 1)"  niSciwa_rUpa_se )" crlf))
)

;

;"certain","Pron","1.kuCa"
;Certain of those present had had too much to drink.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_certain0
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 technique)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " certain.clp   sub_samA_certain0   "   ?id " KAsa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_certain0
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 technique)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " certain.clp   obj_samA_certain0   "   ?id " KAsa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_certain1
(declare (salience 4000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ~time&~death)  ;condition changed
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " certain.clp   sub_samA_certain1   "   ?id " kuCa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_certain1
(declare (salience 4000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ~time&~death)  ;condition changed
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " certain.clp   obj_samA_certain1   "   ?id " kuCa )" crlf))
)
