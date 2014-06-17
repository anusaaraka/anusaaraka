;@@@ Added by jagriti(9.1.2014)
;A political storm in parliament.
;संसद में एक राजनीतिक हमला. 
(defrule storm0
(declare (salience 5000))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 political|social|financial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMgAmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm0   "  ?id " haMgAmA )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;"Get out and never come back!" he stormed.
;"बाहर जाओ और कभी वापस नहीं आना !" उसने आगबबूला होकर कहा. 
(defrule storm1
(declare (salience 4900))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AgababUlA_hokara_kaha ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm1   "  ?id " AgababUlA_hokara_kaha )" crlf))
)
;......Default rule....
(defrule storm2
(declare (salience 100))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm2   "  ?id "  AzXI )" crlf))
)

;"storm","N","1.AzXI"
;The storm destroyed many villages.
;
(defrule storm3
(declare (salience 100))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storm.clp 	storm3   "  ?id "  hamalA_kara )" crlf))
)


;"storm","V","1.hamalA_karanA"
;The troops stormed into the city.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_storm0
(declare (salience 5000))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 political|social|financial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMgAmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " storm.clp   sub_samA_storm0   "   ?id " haMgAmA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_storm0
(declare (salience 5000))
(id-root ?id storm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 political|social|financial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMgAmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " storm.clp   obj_samA_storm0   "   ?id " haMgAmA )" crlf))
)
