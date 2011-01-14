
(defrule abrasive0
(declare (salience 5000))
(id-root ?id abrasive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cota_pahuzcAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abrasive.clp 	abrasive0   "  ?id "  cota_pahuzcAne_vAlA )" crlf))
)

;"abrasive","Adj","1.cota_pahuzcAne_vAlA"
;We should not have abrasive behavior towards others.
;
(defrule abrasive1
(declare (salience 4900))
(id-root ?id abrasive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIsane_yA_ragadZane_kI_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abrasive.clp 	abrasive1   "  ?id "  pIsane_yA_ragadZane_kI_vaswu )" crlf))
)

;"abrasive","N","1.pIsane_yA_ragadZane_kI_vaswu"
;She used a pumic stone as an abrasive to polish the surface of the shelf.
;
