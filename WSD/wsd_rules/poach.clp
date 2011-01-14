
(defrule poach0
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama_pAnI_meM_walanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach0   "  ?id "  garama_pAnI_meM_walanA )" crlf))
)

;"poach","N","1.garama_pAnI_meM_walanA"
;I ate poach in my breakfast.
;
(defrule poach1
(declare (salience 4900))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anaXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach1   "  ?id "  anaXikAra )" crlf))
)

;"poach","V","1.anaXikAra"
;The villager was caught by the forester for poaching elephant.
;
