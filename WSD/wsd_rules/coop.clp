
(defrule coop0
(declare (salience 5000))
(id-root ?id coop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_kisI_CotI_jagaha_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " coop.clp	coop0  "  ?id "  " ?id1 "  kisI_ko_kisI_CotI_jagaha_meM_raKa  )" crlf))
)

; You can't coop her up in the house.
;wuma use Gara meM nahIM raKa sakawe
(defrule coop1
(declare (salience 4900))
(id-root ?id coop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xadZabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coop.clp 	coop1   "  ?id "  xadZabA )" crlf))
)

;"coop","N","1.xadZabA"
;Don't keep the chickens in the small coop.
;
(defrule coop2
(declare (salience 4800))
(id-root ?id coop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xadZabe_meM_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coop.clp 	coop2   "  ?id "  xadZabe_meM_baMxa_kara )" crlf))
)

;"coop","VT","1.xadZabe_meM_baMxa_karanA"
;She had been cooped up indoors all day because of her board exams.
;
