
(defrule initial0
(declare (salience 5000))
(id-root ?id initial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initial.clp 	initial0   "  ?id "  prAramBika )" crlf))
)

;"initial","Adj","1.prAramBika"
;Children should have good foundation in schools in the initial stages.
;
(defrule initial1
(declare (salience 4900))
(id-root ?id initial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahalA_akRara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initial.clp 	initial1   "  ?id "  pahalA_akRara )" crlf))
)

;"initial","N","1.pahalA_akRara{nAma_yA_Sabxa_kA}"
;The child wrote his initials clearly.
;
(defrule initial2
(declare (salience 4800))
(id-root ?id initial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma_kA_pahalA_akRara_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initial.clp 	initial2   "  ?id "  nAma_kA_pahalA_akRara_liKa )" crlf))
)

;"initial","VT","1.nAma_kA_pahalA_akRara_liKanA"
;He initialled the document..
;
