


;Added by Meena(9.9.09)
(defrule these0
(declare (salience 5000))
;(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id these)
(id-root  ?id1  trousers|scissors)
(viSeRya-det_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id isa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  these.clp      these0   "  ?id "  isa )" crlf))
)




;Added by Meena(9.9.09)
;Are these your trousers ? 
(defrule these1
(declare (salience 5000))
;(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id these)
(id-root  ?id1  trousers|scissors)
(subject-subject_samAnAXikaraNa ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  these.clp      these1   "  ?id "  yaha )" crlf))
)

