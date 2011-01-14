
(defrule leaven0
(declare (salience 5000))
(id-root ?id leaven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KamIrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaven.clp 	leaven0   "  ?id "  KamIrA )" crlf))
)

;"leaven","N","1.KamIrA"
;The leaven is ready for bread.
;
(defrule leaven1
(declare (salience 4900))
(id-root ?id leaven)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanAva_kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaven.clp 	leaven1   "  ?id "  wanAva_kama_kara )" crlf))
)

;"leaven","V","1.wanAva_kama_karanA"
;His remarkes leaven the tense atmosphere.
;
