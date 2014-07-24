;$$$  Modified by Preeti(12-12-13) Parasar problem
;One day he chanced upon Emma's diary and began reading it. [old clp]
;eka xina use emma kI dAyarI acAnaka_mila gayI Ora use paDanA AramBa kiyA.
;She had chanced on an old teacher of hers in a shop.
;vaha eka xukAna para apane tIcara se acAnaka mila gayI WI
(defrule chance0
(declare (salience 5000))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on|upon)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chance.clp	chance0  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))
)

;@@@ Added by Preeti(12-12-13)
;I stayed hidden; I could not chance coming out.[ Oxford Advanced Learner's Dictionary]
;mEM CipA rahA; mEM sAmane Ane kA joKima_nahIM_uTA sakA.
(defrule chance3
(declare (salience 4800))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  joKima_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance3   "  ?id "  joKima_uTA )" crlf))
)

;@@@ Added by Preeti(12-12-13)
;There is a slight chance that he will be back in time. [ Oxford Advanced Learner's Dictionary]
;WodI sI saMBAvanA hE ki vaha samaya para vApisa AyegA.
(defrule chance4
(declare (salience 4900))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance4   "  ?id "  saMBAvanA )" crlf))
)

;@@@ Added by Preeti(12-12-13)
(defrule chance5
(declare (salience 4900))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Akasmika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance5   "  ?id "  Akasmika )" crlf))
)


;$$$  Modified by Preeti(12-12-13)
;Please give me a chance to explain. [ Oxford Advanced Learner's Dictionary]
;kqpayA samaJAne ke liye muJe avasara xIjie.
(defrule chance1
(declare (salience 4950))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(subject-subject_samAnAXikaraNa  ? ?id) (kriyA-object_2  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance1   "  ?id "  avasara )" crlf))
)


;$$$  Modified by Preeti(12-12-13)
;They chanced to be staying at the same hotel. [ Oxford Advanced Learner's Dictionary]
;unake usI hotala meM rahane kA saMyoga banA.
(defrule chance2
(declare (salience 4850))
(id-root ?id chance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
(or(kriyA-kriyArWa_kriyA  ?id ?)
(and(kriyA-vAkyakarma  ?id ?id1) (id-root ?id1 stay)))

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyoga_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chance.clp 	chance2   "  ?id "  saMyoga_bana )" crlf))
)

;default_sense && category=verb	saMyogavaSa_ho_jA	0
;"chance","V","1.saMyogavaSa_ho_jAnA" Changed by VC
;I chanced to meet my old friend in the city. 
;
;
