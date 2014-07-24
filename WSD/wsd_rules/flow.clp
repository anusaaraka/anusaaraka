



;In this case the electrons will [flow] from the ground to the sphere when the sphere is connected to the ground with 
;a wire.
;इस प्रकरण में इलेक्ट्रॉन भूमि से गोले में उस समय स्थानान्तरित ( प्रवाहित ) होते हैं जब तार द्वारा गोले को भूसम्पर्कित किया जाता है .

;Added by Pramila(Banasthali University) on 23-10-2013
(defrule flow0
(declare (salience 5000))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pravAhiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow0  "  ?id "  " ?id1 "  pravAhiwa_ho  )" crlf))
)


;(defrule flow0
;(declare (salience 5000))
;(id-root ?id flow)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 from)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_uBara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ;flow.clp	flow0  "  ?id "  " ?id1 "  se_uBara  )" crlf))
;)

(defrule flow1
(declare (salience 4900))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_uBara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow1  "  ?id "  " ?id1 "  se_uBara  )" crlf))
)

(defrule flow2
(declare (salience 4800))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZAhira_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow2  "  ?id "  " ?id1 "  jZAhira_ho  )" crlf))
)

(defrule flow3
(declare (salience 4700))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZAhira_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow3  "  ?id "  " ?id1 "  jZAhira_ho  )" crlf))
)

(defrule flow4
(declare (salience 4600))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZAhira_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow4  "  ?id "  " ?id1 "  jZAhira_ho  )" crlf))
)

(defrule flow5
(declare (salience 4500))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZAhira_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow5  "  ?id "  " ?id1 "  jZAhira_ho  )" crlf))
)

(defrule flow6
(declare (salience 4400))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow6  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)

(defrule flow7
(declare (salience 4300))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow7  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)

(defrule flow8
(declare (salience 4200))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow8  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)

(defrule flow9
(declare (salience 4100))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flow.clp	flow9  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)

(defrule flow10
(declare (salience 4000))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flow.clp 	flow10   "  ?id "  baha )" crlf))
)

(defrule flow11
(declare (salience 3900))
(id-root ?id flow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flow.clp 	flow11   "  ?id "  bahAva )" crlf))
)

;"flow","N","1.bahAva"
;The flow of blood from the wound has stopped.
;--"2.XArA"
;Timely && proper flow of information is very important for good management.
;--"3.XArA pravAha"
;When he starts talking, you cannot stop his flow.
;
;
