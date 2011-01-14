
(defrule water0
(declare (salience 5000))
(id-root ?id water)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  water.clp 	water0   "  ?id "  pAnI )" crlf))
)

;"water","N","1.pAnI"
;Drink plenty of water to keep good health
;
(defrule water1
(declare (salience 4900))
(id-root ?id water)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  water.clp 	water1   "  ?id "  sIMca )" crlf))
)

;"water","VTI","1.sIMcanA"
;He waters the plants regularly.
;--"2.pAnI_AnA"
;His mouth watered when he saw the sweets
;
