
(defrule reign0
(declare (salience 5000))
(id-root ?id reign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reign.clp 	reign0   "  ?id "  SAsana )" crlf))
)

;"reign","N","1.SAsana"
;--"2.rAjya_SAsana"
;During the reign of Harsha,there was a peace && order.
;
(defrule reign1
(declare (salience 4900))
(id-root ?id reign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reign.clp 	reign1   "  ?id "  prabala_ho )" crlf))
)

;"reign","VI","1.prabala_honA"
;Darkness reigns on a cloudy day.
;--"2.mOjUxa_honA"
;Silence reigned everywhere.
;--"3.SAsana_karanA"
;He reigned over the land for four years.
;
