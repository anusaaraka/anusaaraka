
(defrule dab0
(declare (salience 5000))
(id-root ?id dab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dab.clp 	dab0   "  ?id "  WapakI )" crlf))
)

;"dab","N","1.WapakI"
;Put a dab of paint here.
;
(defrule dab1
(declare (salience 4900))
(id-root ?id dab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cupadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dab.clp 	dab1   "  ?id "  cupadZa )" crlf))
)

;"dab","VT","1.cupadZanA"
;Some women dab layers of powder on their faces.
;
