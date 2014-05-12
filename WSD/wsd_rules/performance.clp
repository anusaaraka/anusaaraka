
;Added by Meena(27.5.11)
;The Big Board's Mr. Grasso said, "Our systemic performance was good." 
(defrule performance0
(declare (salience 5000))
(id-root ?id performance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 systemic|economic|impressive|poor|academic|strong)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upalabXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  performance.clp       performance0   "  ?id "  upalabXi )" crlf))
)



;Added by Meena(27.5.11)
(defrule performance1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id performance)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  performance.clp       performance1   "  ?id "  praxarSana )" crlf))
)



;@@@ Added by Sukhada (12-05-14)
(defrule sub_samA_performance0
(declare (salience 5000))
(id-root ?id performance)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 systemic|economic|impressive|poor|academic|strong)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upalabXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sub_samA_performance0" ?id " upalabXi )" crlf))
)

;@@@ Added by Sukhada (12-05-14)
(defrule obj_samA_performance0
(declare (salience 5000))
(id-root ?id performance)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 systemic|economic|impressive|poor|academic|strong)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upalabXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obj_samA_performance0" ?id " upalabXi )" crlf))
)
