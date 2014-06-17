
(defrule sheer0
(declare (salience 5000))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahaka_jA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " sheer.clp sheer0 " ?id "  bahaka_jA )" crlf)) 
)

(defrule sheer1
(declare (salience 4900))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sheer.clp	sheer1  "  ?id "  " ?id1 "  bahaka_jA  )" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;The suggestion is sheer nonsense. 
;सुझाव बिल्कुल बकवास है.
(defrule sheer2
(declare (salience 4800))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mischief|nonsense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer2   "  ?id "  bilkula )" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;A sheer ladder going upstairs.
;ऊपर की मञ्जिल जाते हुए एक खडी सीढी .   
(defrule sheer3
(declare (salience 4700))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mountain|ladder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer3   "  ?id " KadZI )" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;She was wearing a dress of the sheer silk.
;वह पारदर्शी रेशम का लिबास पहन रही थी .  
(defrule sheer4
(declare (salience 4600))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 silk|muslin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAraxarSI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer4   "  ?id " pAraxarSI )" crlf))
)

(defrule sheer5
(declare (salience 100))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer5   "  ?id "  bahaka_jA )" crlf))
)

(defrule sheer6
(declare (salience 100))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sheer.clp 	sheer6   "  ?id "  ekaxama )" crlf))
)

;"sheer","Adv","1.ekaxama"
;The ground dropped away sheer at our feet.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sheer2
(declare (salience 4800))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mischief|nonsense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   sub_samA_sheer2   "   ?id " bilkula )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sheer2
(declare (salience 4800))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mischief|nonsense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   obj_samA_sheer2   "   ?id " bilkula )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sheer3
(declare (salience 4700))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mountain|ladder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   sub_samA_sheer3   "   ?id " KadZI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sheer3
(declare (salience 4700))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mountain|ladder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   obj_samA_sheer3   "   ?id " KadZI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sheer4
(declare (salience 4600))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 silk|muslin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAraxarSI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   sub_samA_sheer4   "   ?id " pAraxarSI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sheer4
(declare (salience 4600))
(id-root ?id sheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 silk|muslin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAraxarSI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sheer.clp   obj_samA_sheer4   "   ?id " pAraxarSI )" crlf))
)
