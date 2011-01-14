
(defrule monumental0
(declare (salience 5000))
(id-root ?id monumental)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 effort)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahaw))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  monumental.clp 	monumental0   "  ?id "  mahaw )" crlf))
)

(defrule monumental1
(declare (salience 4900))
(id-root ?id monumental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id smArakIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  monumental.clp 	monumental1   "  ?id "  smArakIya )" crlf))
)

;"monumental","Adj","1.smArakIya"
;--"2.bqhawa"
;
;
