
(defrule nurture0
(declare (salience 5000))
(id-root ?id nurture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_poRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurture.clp 	nurture0   "  ?id "  pAlana_poRaNa )" crlf))
)

;"nurture","N","1.pAlana_poRaNa"
;They debated whether nature or nurture was more important.
;
(defrule nurture1
(declare (salience 4900))
(id-root ?id nurture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puRta_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurture.clp 	nurture1   "  ?id "  puRta_banA )" crlf))
)

;"nurture","V","1.puRta_banAnA"
(defrule nurture2
(declare (salience 4800))
(id-root ?id nurture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puRta_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nurture.clp 	nurture2   "  ?id "  puRta_banA )" crlf))
)

;"nurture","VT","1.puRta_banAnA"
;The nurse nurtured the patient.
;The teachers nurtured the child's talent.
;
