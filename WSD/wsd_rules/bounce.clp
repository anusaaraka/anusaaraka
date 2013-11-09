
(defrule bounce0
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bounce.clp bounce0 " ?id "  uCala )" crlf)) 
)

(defrule bounce1
(declare (salience 4900))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce1  "  ?id "  " ?id1 "  uCala  )" crlf))
)

(defrule bounce2
(declare (salience 4800))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bounce.clp 	bounce2   "  ?id "  uCala )" crlf))
)

;default_sense && category=verb	uCala_padZa	0
;"bounce","VI","1.uCala_padZanA"
;The rubber ball bounced
;He bounced to his feet
;--"2.vApisa_AnA"
;The check bounced
;Bounce a check
;--"3.mAranA"
;The ex-boxer's job is to bounce people who want to enter this private club
;
;