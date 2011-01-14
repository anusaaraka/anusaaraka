
(defrule bale0
(declare (salience 5000))
(id-root ?id bale)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vipawwi_meM_havAIjahAja_se_pErASUta_xvArA_kUxa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bale.clp	bale0  "  ?id "  " ?id1 "  vipawwi_meM_havAIjahAja_se_pErASUta_xvArA_kUxa_jA  )" crlf))
)

;The pilot had managed to bale out of the plane safely.
;pAyalata vipawwi meM havAIjahAja se surakRApUrvaka kUxa gayA
(defrule bale1
(declare (salience 4900))
(id-root ?id bale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bale.clp 	bale1   "  ?id "  gaTarI )" crlf))
)

;"bale","N","1.gaTarI"
;The washerman carried bales of clothes .
;
(defrule bale2
(declare (salience 4800))
(id-root ?id bale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CatarI_se_uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bale.clp 	bale2   "  ?id "  CatarI_se_uwara )" crlf))
)

;"bale","V","1.CatarI{perASUta}se_uwaranA"
;The pilot safely baled out from the damaged aircraft.
;
