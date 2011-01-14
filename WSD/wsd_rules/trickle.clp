
(defrule trickle0
(declare (salience 5000))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawalI_XAra_me_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trickle.clp	trickle0  "  ?id "  " ?id1 "  pawalI_XAra_me_baha  )" crlf))
)

(defrule trickle1
(declare (salience 4900))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawalI_XAra_me_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trickle.clp	trickle1  "  ?id "  " ?id1 "  pawalI_XAra_me_baha  )" crlf))
)

(defrule trickle2
(declare (salience 4800))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawalI_XAra_me_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trickle.clp	trickle2  "  ?id "  " ?id1 "  pawalI_XAra_me_baha  )" crlf))
)

(defrule trickle3
(declare (salience 4700))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawalI_XAra_me_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trickle.clp	trickle3  "  ?id "  " ?id1 "  pawalI_XAra_me_baha  )" crlf))
)

(defrule trickle4
(declare (salience 4600))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tapaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trickle.clp 	trickle4   "  ?id "  tapaka )" crlf))
)

(defrule trickle5
(declare (salience 4500))
(id-root ?id trickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpamAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trickle.clp 	trickle5   "  ?id "  alpamAwrA )" crlf))
)

;"trickle","N","1.alpamAwrA"
;It was a trickle of information.
;
;