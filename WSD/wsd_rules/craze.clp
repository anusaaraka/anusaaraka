
(defrule craze0
(declare (salience 5000))
(id-root ?id craze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAvalApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  craze.clp 	craze0   "  ?id "  bAvalApana )" crlf))
)

;"craze","N","1.bAvalApana/sanaka_asWAI_samaya_waka"
;Nowadays there is latest teenage dance craze among children. 
;
(defrule craze1
(declare (salience 4900))
(id-root ?id craze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JakI_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  craze.clp 	craze1   "  ?id "  JakI_ho_jA )" crlf))
)

;"craze","VI","1.JakI_ho_jAnA"
;He was crazed by the desire for drugs.
;
(defrule craze2
(declare (salience 4800))
(id-root ?id craze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  craze.clp 	craze2   "  ?id "  pAgala_banA )" crlf))
)

;"craze","VT","1.pAgala_banAnA"
;Every body is scared of a crazed look in his eyes.
;
