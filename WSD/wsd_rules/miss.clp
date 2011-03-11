
(defrule miss0
(declare (salience 5000))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id missing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KoyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  miss.clp  	miss0   "  ?id "  KoyA_huA )" crlf))
)

;"missing","Adj","1.KoyA huA"
;The missing tape was found intact.
;
;
(defrule miss1
(declare (salience 4900))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " miss.clp	miss1  "  ?id "  " ?id1 "  cUka  )" crlf))
)

;You've missed out the last chance in this game.
;
(defrule miss2
(declare (salience 4800))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa_se_jAne_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " miss.clp	miss2  "  ?id "  " ?id1 "  hAWa_se_jAne_xe  )" crlf))
)

(defrule miss3
(declare (salience 4700))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa_se_jAne_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " miss.clp	miss3  "  ?id "  " ?id1 "  hAWa_se_jAne_xe  )" crlf))
)

(defrule miss4
(declare (salience 4600))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kumArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miss.clp 	miss4   "  ?id "  kumArI )" crlf))
)

;"miss","N","1.kumArI"
;She is a gorgeous miss.
;
(defrule miss5
(declare (salience 4500))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 money)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ko_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miss.clp 	miss5   "  ?id "  Ko_jA )" crlf))
)

;He thought that she may have missed the train.
(defrule miss6
(declare (salience 4400))
(id-root ?id miss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUka_jA))
(assert (kriyA_id-subject_viBakwi ?id  0))  ;He thought that she may have missed the train.(Suggested by Sukhada 11-03-11)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miss.clp 	miss6   "  ?id "  cUka_jA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  miss.clp    miss6   "  ?id " 0 )" crlf)
)

;"miss","V","1.cUka_jAnA"
;She would never miss the target.
;--"2.CUta_jAnA"
;She missed the train.
;He missed the appointment.
;--"3.kamI_mahasUsa_karanA"
;I miss my sister.
;--"4.asaPala_honA"
;He was sure he would not miss this time.
;
