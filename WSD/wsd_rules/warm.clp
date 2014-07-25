
(defrule warm0
;(declare (salience 5000)) Salience commented by Roja (11-12-13)
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
;(id-cat ?id adjective|adjective_comparative|adjective_superlative);Commented this fact and added below fact by Roja(11-12-13) Ex: Warm up the soup. 
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warm.clp 	warm0   "  ?id "  garma )" crlf))
)

;default_sense && from_list(category,adj|adj_comp|adj_super)	garma{suKaxa}	0
;"warm","Adj","1.garma{suKaxa}"
;--"2.garma"
;Ram && Ravi struck a warm friendship
;
(defrule warm1
;(declare (salience 4900)) Salience commented by Roja (11-12-13)
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warm.clp 	warm1   "  ?id "  garma_kara )" crlf))
)

;"warm","VTI","1.garma_karanA"
;Warm up the soup
;

;@@@ Added by Roja. Sugested by Chaitanya Sir. (10-12-13)
;Warm up the soup.
;SorabA garama kIjie.
(defrule warm_up
(declare (salience 100))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " warm.clp  warm_up  "  ?id "  " ?id1 "  garama_kara)" crlf))
)

;@@@ Added by Pramila(BU) on 20-02-2014
;The clothes are available in warm natural colours.   ;oald
;वस्त्र सुखद प्राकृतिक रङ्गों में उपलब्ध हैं .
(defrule warm3
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warm.clp 	warm3   "  ?id " suKaxa )" crlf))
)


;@@@ Added by Pramila(BU) on 26-02-2014
;They gave us a warm welcome.   ;shiksharthi
;उन्होंने हमारा हार्दिक स्वागत किया.
(defrule warm4
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 welcome)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hArxika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warm.clp 	warm4   "  ?id " hArxika )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_warm3
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " warm.clp   sub_samA_warm3   "   ?id " suKaxa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_warm3
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " warm.clp   obj_samA_warm3   "   ?id " suKaxa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_warm4
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 welcome)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hArxika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " warm.clp   sub_samA_warm4   "   ?id " hArxika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_warm4
(declare (salience 5000))
(id-root ?id warm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 welcome)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hArxika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " warm.clp   obj_samA_warm4   "   ?id " hArxika )" crlf))
)
