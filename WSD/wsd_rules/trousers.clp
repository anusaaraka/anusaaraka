
;Added by Meena(9.9.09)
;Are these your trousers ? 
;Does this shirt match these trousers ? 
(defrule trousers1
(declare (salience 5000))
(id-root ?id trousers)
?mng <-(meaning_to_be_decided ?id)
;(id-root  ?id1  trousers|scissors)
;(subject-subject_samAnAXikaraNa ?id1 ?id)
;(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pawalUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  trousers.clp      trousers1   "  ?id "  pawalUna )" crlf))
)


;Added by Meena(9.9.09)
;I need a new pair of trousers.
(defrule trousers2
(declare (salience 5000))
(id-root ?id trousers)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 pair)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-word ?id2 of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 pawalUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  trousers.clp      trousers2   "  ?id " "?id1" "?id2 "  pawalUna )" crlf)
)
)




