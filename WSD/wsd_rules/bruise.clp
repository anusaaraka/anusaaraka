
(defrule bruise0
(declare (salience 5000))
(id-root ?id bruise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bruise.clp 	bruise0   "  ?id "  KaroMca )" crlf))
)

;"bruise","N","1.KaroMca"
;--"2.cota"
;The soldier was covered with bruises after returning from the front.
;
(defrule bruise1
(declare (salience 4900))
(id-root ?id bruise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cota_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bruise.clp 	bruise1   "  ?id "  cota_laga )" crlf))
)

;"bruise","VT","1.cota_laganA"
;He fell from the bike && bruised himself.
;
