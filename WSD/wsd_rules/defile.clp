
(defrule defile0
(declare (salience 5000))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkuciwa_mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defile.clp 	defile0   "  ?id "  saMkuciwa_mArga )" crlf))
)

;"defile","N","1.saMkuciwa_mArga"
;The route through the mountains was a defile one .
;
(defrule defile1
(declare (salience 4900))
(id-root ?id defile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xURiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defile.clp 	defile1   "  ?id "  xURiwa_kara )" crlf))
)

;"defile","V","1.xURiwa_karanA"
;Ganges are defiled by pollutants.
;--"2.apaviwra_karanA"
;The public defiled the holy place by throwing garbage near it.
;
