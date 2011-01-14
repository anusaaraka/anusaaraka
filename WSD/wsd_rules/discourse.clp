
(defrule discourse0
(declare (salience 5000))
(id-root ?id discourse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravacana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discourse.clp 	discourse0   "  ?id "  pravacana )" crlf))
)

;"discourse","N","1.pravacana"
;We went to attend a discourse on yogabhyas.
;
(defrule discourse1
(declare (salience 4900))
(id-root ?id discourse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravacana_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discourse.clp 	discourse1   "  ?id "  pravacana_xe )" crlf))
)

;"discourse","VT","1.pravacana_xenA"
;Mr.Yogi discoursed on the power of yogabhyas.
;
