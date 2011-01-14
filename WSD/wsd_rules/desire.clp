
(defrule desire0
(declare (salience 5000))
(id-root ?id desire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id icCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desire.clp 	desire0   "  ?id "  icCA )" crlf))
)

;"desire","N","1.icCA"
;A man of many desires but of no efforts ,can't do anything.
;--"2.icCiwa"
;She was his heart's desire.
;
(defrule desire1
(declare (salience 4900))
(id-root ?id desire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desire.clp 	desire1   "  ?id "  cAha )" crlf))
)

;"desire","VT","1.cAhanA"
;We must desire for freedom.
;
