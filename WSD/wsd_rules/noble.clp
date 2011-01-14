
(defrule noble0
(declare (salience 5000))
(id-root ?id noble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  noble.clp 	noble0   "  ?id "  kulIna )" crlf))
)

;"noble","Adj","1.kulIna"
;Nehru belonged to a family of noble descent.
;--"2.nIwivAna"
;Martin Luther King died for a noble cause.
;
(defrule noble1
(declare (salience 4900))
(id-root ?id noble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulIna_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  noble.clp 	noble1   "  ?id "  kulIna_manuRya )" crlf))
)

;"noble","N","1.kulIna_manuRya"
;He is noble && easily approachable.
;
