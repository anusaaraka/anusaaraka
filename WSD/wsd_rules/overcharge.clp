
(defrule overcharge0
(declare (salience 5000))
(id-root ?id overcharge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_mola_yA_aXika_xAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcharge.clp 	overcharge0   "  ?id "  aXika_mola_yA_aXika_xAma )" crlf))
)

;"overcharge","N","1.aXika_mola_yA_aXika_xAma"
;The overcharge in the goods is very high
;
(defrule overcharge1
(declare (salience 4900))
(id-root ?id overcharge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_xAma_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcharge.clp 	overcharge1   "  ?id "  aXika_xAma_lagA )" crlf))
)

;"overcharge","VT","1.aXika_xAma_lagAnA"
;The shopkeeper makes a profit by overcharge
;--"2.aXika_lAxa_xenA_yA_BAra_xenA"
;The battery got spoilt due to overcharge
;
