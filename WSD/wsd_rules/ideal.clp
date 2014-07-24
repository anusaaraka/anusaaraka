
(defrule ideal0
(declare (salience 5000))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal0   "  ?id "  AxarSa )" crlf))
)

(defrule ideal1
(declare (salience 4900))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal1   "  ?id "  pUrNa )" crlf))
)

;"ideal","Adj","1.pUrNa/aBIRta"
;She is an ideal person.
;--"2.kAlpanika"
;This is an ideal story.
;--"3.AxarSa"
;M.K. Gandhi is an ideal for many Indians.
;
;

;@@@ Added by Prachi Rathore[30-1-14]
; She found it hard to live up to his high ideals.[oald]
;उसको उसके ऊँचे आदर्शों पर जीना कठिन लगता है . 
(defrule ideal2
(declare (salience 5000))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal2   "  ?id "  AxarSa )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;She's the ideal candidate for the job.
;वह नौकरी के लिये  उपयुक्त उम्मीदवार है 
(defrule ideal3
(declare (salience 5500))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 candidate|opportunity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal3   "  ?id "  upyukwa )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_ideal3
(declare (salience 5500))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 candidate|opportunity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " ideal.clp   sub_samA_ideal3   "   ?id " upyukwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_ideal3
(declare (salience 5500))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 candidate|opportunity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " ideal.clp   obj_samA_ideal3   "   ?id " upyukwa )" crlf))
)
