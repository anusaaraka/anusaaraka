
(defrule document0
(declare (salience 5000))
(id-root ?id document)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaswAveja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  document.clp 	document0   "  ?id "  xaswAveja )" crlf))
)

;default_sense && category=noun	leKya_pawra	0
;"document","N","1.leKya_pawra/xaswAvejZa"
(defrule document1
(declare (salience 4900))
(id-root ?id document)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  document.clp 	document1   "  ?id "  liKa )" crlf))
)

;"document","VT","1.liKanA"
;The parents documented every step of their child's development
;--"2.liKiwa_pramANa_xenA/pramANa_pawra_xenA"
;Can you document your claims?
;
