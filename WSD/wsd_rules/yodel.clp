
(defrule yodel0
(declare (salience 5000))
(id-root ?id yodel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yodel.clp 	yodel0   "  ?id "  AlApa )" crlf))
)

;"yodel","N","1.AlApa"
;I find the yodel of classical music boring.
;
(defrule yodel1
(declare (salience 4900))
(id-root ?id yodel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yodel.clp 	yodel1   "  ?id "  AlApa )" crlf))
)

;"yodel","V","1.AlApanA{svijZa_saMgIwa}"
;Kishore Kumar was known for his yodelling.
;
