
(defrule garrison0
(declare (salience 5000))
(id-root ?id garrison)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRakasenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garrison.clp 	garrison0   "  ?id "  rakRakasenA )" crlf))
)

;"garrison","N","1.rakRakasenA"
;He is on garrison duty.
;
(defrule garrison1
(declare (salience 4900))
(id-root ?id garrison)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moracA_banxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  garrison.clp 	garrison1   "  ?id "  moracA_banxI_kara )" crlf))
)

;"garrison","V","1.moracA_banxI_karanA"
;Indian troops have garrisoned all along the border.
;
