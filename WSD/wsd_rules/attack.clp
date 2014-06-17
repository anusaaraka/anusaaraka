(defrule attack0
(declare (salience 0))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack0   "  ?id "  hamalA )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
;(assert (kriyA_id-object_viBakwi ?id para))
)


(defrule attack1
(declare (salience 0)); salience reduced by Garima Singh(M.Tech-C.S) 21-nov-2013
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack1   "  ?id "  hamalA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  attack.clp    attack1   "  ?id " para )" crlf)
)
;(assert (kriyA_id-subject_viBakwi ?id ne))
)


;Added by Garima Singh(M.Tech-C.S) 21-nov-2013
;The report attacks the idea of exams for 7- and 8-year-olds. 
;सात और आठ साल के बच्चों की परीक्षा लेने के विचार की रिपोर्ट आलोचना करती है .
(defrule attack2
(declare (salience 5000))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object ?id ?id1)
(id-root  ?id1 idea|policy|conduct)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack2   "  ?id "  AlocanA_kara )" crlf)
)
)


;Added by Garima Singh(M.Tech-C.S) 21-nov-2013
;The report attacks the idea of exams for 7- and 8-year-olds. 
;सात और आठ साल के बच्चों की परीक्षा लेने के विचार की रिपोर्ट आलोचना करती है .
;She wrote an article attacking the judges and their conduct of the trial. 
;उसने जजों कीं पैरवी के ढ़ंग कीं आलोचना करते हुए एक लेख लिखा
(defrule attack3
(declare (salience 5000))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)   
(id-word ?id1 report|article)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack3   "  ?id "  AlocanA_kara )" crlf))
)

;Added by Garima Singh(M.Tech-C.S) 21-nov-2013
;NOTE:Above rule "attack3" will not handle cases where there is a subject but it is not direct. Instead we have a "viSeRya-kqxanwa_viSeRaNa" relation between subject and the verb. In such cases we need a different rule.So I have added this rule.
;She wrote an article attacking the judges and their conduct of the trial. 
;उसने जजों कीं पैरवी के ढ़ंग कीं आलोचना करते हुए एक लेख लिखा
(defrule attack4
(declare (salience 5000))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
(id-word ?id1 report|article)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack4   "  ?id "  AlocanA_kara )" crlf))
)


