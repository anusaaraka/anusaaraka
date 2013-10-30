
(defrule flick0
(declare (salience 5000))
(id-root ?id flick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAgajZa_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flick.clp	flick0  "  ?id "  " ?id1 "  kAgajZa_palata  )" crlf))
)

(defrule flick1
(declare (salience 4900))
(id-root ?id flick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAgajZa_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flick.clp	flick1  "  ?id "  " ?id1 "  kAgajZa_palata  )" crlf))
)

(defrule flick2
(declare (salience 4800))
(id-root ?id flick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAgajZa_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flick.clp	flick2  "  ?id "  " ?id1 "  kAgajZa_palata  )" crlf))
)

(defrule flick3
(declare (salience 4700))
(id-root ?id flick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAgajZa_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flick.clp	flick3  "  ?id "  " ?id1 "  kAgajZa_palata  )" crlf))
)

(defrule flick4
(declare (salience 4600))
(id-root ?id flick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jatake_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flick.clp 	flick4   "  ?id "  Jatake_se_mAra )" crlf))
)

;default_sense && category=verb	Jatake se mAra	0
;"flick","V","1.Jatake se mAranA"
;He flicked the whip at the horse to drive him faster.
;--"2.JatakA xenA"
;He flicked the ball with a twist of wrist to send it to the boundary.
;He flicked the towel in his face.
;--"3.hilAnA"
;The dog flicked its tail to drive away the flies.
;
;