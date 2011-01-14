
(defrule clobber0
(declare (salience 5000))
(id-root ?id clobber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe-lawwe_iwyAxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clobber.clp 	clobber0   "  ?id "  kapadZe-lawwe_iwyAxi )" crlf))
)

;"clobber","N","1.kapadZe-lawwe_iwyAxi"
;She unnecessarily takes clobbers while going for walking.
;
(defrule clobber1
(declare (salience 4900))
(id-root ?id clobber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha_pIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clobber.clp 	clobber1   "  ?id "  burI_waraha_pIta )" crlf))
)

;"clobber","V","1.burI_waraha_pItanA"
;The children clobbered the stray dog.
;
