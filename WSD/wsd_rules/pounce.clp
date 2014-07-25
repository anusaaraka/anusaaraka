
(defrule pounce0
(declare (salience 5000))
(id-root ?id pounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pounce.clp	pounce0  "  ?id "  " ?id1 "  Japata  )" crlf))
)

;The lion pounced on the deer.
;Sera hiraNa para Japata padZA
(defrule pounce1
(declare (salience 4900))
(id-root ?id pounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pounce.clp 	pounce1   "  ?id "  Japata )" crlf))
)

;"pounce","V","1.JapatanA/paMjA mAranA"
;He saw the lion about to pounce on a deer.
;He pounced on me && accused me of lying.
;
;

;@@@ Added by Sona Gupta MTech IT Banasthali 3-4-2014
;His comments were pounced upon by the press. [oald]
;उसकी टिप्पणियाँ प्रैस के द्वारा पकड़ी गईं थी .
(defrule pounce2
(declare (salience 5500))
(id-root ?id pounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 comment|remark|explanation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pounce.clp 	pounce2   "  ?id "  pakadZa )" crlf))
)


;@@@ Added by Sona Gupta MTech IT Banasthali 3-4-2014
(defrule pounce3
(id-root ?id pounce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pounce.clp 	pounce3   "  ?id "  Japata )" crlf))
)

