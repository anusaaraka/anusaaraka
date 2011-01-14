
(defrule aerial0
(declare (salience 5000))
(id-root ?id aerial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkASIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aerial.clp 	aerial0   "  ?id "  AkASIya )" crlf))
)

;"aerial","Adj","1.AkASIya/vimAna_se/havA_meM_se_kiyA_gayA"
;The first atomic bomb was dropped by aerial bombardment.
;--"2.havAI"
;The earliest form of aerial transport was balloon.
;
(defrule aerial1
(declare (salience 4900))
(id-root ?id aerial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eriyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aerial.clp 	aerial1   "  ?id "  eriyala )" crlf))
)

;"aerial","N","1.eriyala{rediyo_saMkewa_pakadZane_vAlA_yaMwra}"
;Please, change the aerial direction so that radio can give clear voice.
;
