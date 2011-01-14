
(defrule squint0
(declare (salience 5000))
(id-root ?id squint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeMgApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squint.clp 	squint0   "  ?id "  BeMgApana )" crlf))
)

;"squint","N","1.BeMgApana"
;She was born with a squint.
;
(defrule squint1
(declare (salience 4900))
(id-root ?id squint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXaKulI_AzKoM_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squint.clp 	squint1   "  ?id "  aXaKulI_AzKoM_se_xeKa )" crlf))
)

;"squint","V","1.aXaKulI_AzKoM_se_xeKanA"
;Her eyes squinted as she came out of the movie hall.
;
