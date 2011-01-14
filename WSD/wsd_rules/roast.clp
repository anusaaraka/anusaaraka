
(defrule roast0
(declare (salience 5000))
(id-root ?id roast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BunI_huI_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roast.clp 	roast0   "  ?id "  BunI_huI_vaswu )" crlf))
)

;"roast","N","1.BunI_huI_vaswu"
;He has ordered a roast in the fast food centre.
;
(defrule roast1
(declare (salience 4900))
(id-root ?id roast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roast.clp 	roast1   "  ?id "  BUna )" crlf))
)

;"roast","VT","1.BUnanA"
;The smell of roasted coffee beans is mouth watering.
;--"2.CixrAnveRaNa_karanA"
;The critics eventually roasted his new play.
;
