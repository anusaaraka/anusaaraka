
(defrule snooker0
(declare (salience 5000))
(id-root ?id snooker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biliyarda_tebala_kA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snooker.clp 	snooker0   "  ?id "  biliyarda_tebala_kA_Kela )" crlf))
)

;"snooker","N","1.biliyarda_tebala_kA_Kela"
;He loves playing snookers.
;
(defrule snooker1
(declare (salience 4900))
(id-root ?id snooker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_karaxe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snooker.clp 	snooker1   "  ?id "  pareSAna_karaxe )" crlf))
)

;"snooker","V","1.pareSAna_karaxenA"
;You can't win you have been completely snookered.
;
