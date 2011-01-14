
(defrule embrace0
(declare (salience 5000))
(id-root ?id embrace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AliMgana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embrace.clp 	embrace0   "  ?id "  AliMgana )" crlf))
)

;"embrace","N","1.AliMgana"
;The lady held her daughter in a warm embrace.
;
(defrule embrace1
(declare (salience 4900))
(id-root ?id embrace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AliMgana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embrace.clp 	embrace1   "  ?id "  AliMgana_kara )" crlf))
)

;"embrace","VT","1.AliMgana_karanA"
;Guha embraced Rama.
;--"2.aMgIkAra_karanA"
;He embraced Christianity.
;
