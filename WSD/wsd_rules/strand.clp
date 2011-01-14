
(defrule strand0
(declare (salience 5000))
(id-root ?id strand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strand.clp 	strand0   "  ?id "  waMwu )" crlf))
)

;"strand","N","1.waMwu"
;Strands are drawn together to do any work.
;--"2.kinArA"
;Strands of seas are made dirty by people.
;
(defrule strand1
(declare (salience 4900))
(id-root ?id strand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PaMsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strand.clp 	strand1   "  ?id "  PaMsa_jA )" crlf))
)

;"strand","V","1.PaMsa_jAnA{rewa_Axi_meM}[=>asahAya_honA]"
