
; Added by human
(defrule tire0
(declare (salience 5000))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tire.clp	tire0  "  ?id "  " ?id1 "  Uba_jA  )" crlf))
)

;"tired","Adj","1.burI_waraha_WakA_huA"
;I am dead tired after the day's work.
;
;
;Added by human
(defrule tire1
(declare (salience 4900))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tire.clp	tire1  "  ?id "  " ?id1 "  Uba  )" crlf))
)

(defrule tire2
(declare (salience 4800))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tire.clp	tire2  "  ?id "  " ?id1 "  Uba  )" crlf))
)





;In fact she had been feeling tired and queasy for the past three days.
(defrule tire3
(declare (salience 4700))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tired )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tire.clp  	tire3   "  ?id "  WakA_huA )" crlf))
)



(defrule tire4
(declare (salience 4600))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tire.clp 	tire4   "  ?id "  Waka )" crlf))
)

;"tire","VT","1.Uba_jAnA"
;We are tired of eating the same food.
;
(defrule tire5
(declare (salience 4500))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tiring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tire.clp  	tire5   "  ?id "  WakA_huA )" crlf))
)

;"tiring","Adj","1.WakA_huA"
;It is a tiring job to do.
;
;Added by human
(defrule tire6
(declare (salience 4400))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tire.clp	tire6  "  ?id "  " ?id1 "  Uba  )" crlf))
)

(defrule tire7
(declare (salience 4300))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Uba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tire.clp	tire7  "  ?id "  " ?id1 "  Uba  )" crlf))
)

(defrule tire8
(declare (salience 4200))
(id-root ?id tire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tire.clp 	tire8   "  ?id "  Waka )" crlf))
)

;"tire","VT","1.Uba_jAnA"
;We are tired of eating the same food.
;
