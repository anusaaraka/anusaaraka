
(defrule lobby0
(declare (salience 5000))
(id-root ?id lobby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRA-kakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lobby.clp 	lobby0   "  ?id "  prawIkRA-kakRa )" crlf))
)

;"lobby","N","1.prawIkRA-kakRa"
;He is waiting for you in the lobby.
;--"2.lAbI{pakRa_me_janamawa}"
;Indian lobby in the American senate is quite active these days.
;
(defrule lobby1
(declare (salience 4900))
(id-root ?id lobby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apane_pakRa_meM_janamawa_wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lobby.clp 	lobby1   "  ?id "  apane_pakRa_meM_janamawa_wEyAra_kara )" crlf))
)

;"lobby","V","1.apane_pakRa_meM_janamawa_wEyAra_karanA"
;In spite of intense lobbying the government failed to secure a consensus on the bill.
;
