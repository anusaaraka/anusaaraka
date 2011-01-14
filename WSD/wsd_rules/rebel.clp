
(defrule rebel0
(declare (salience 5000))
(id-root ?id rebel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixrohI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebel.clp 	rebel0   "  ?id "  vixrohI )" crlf))
)

(defrule rebel1
(declare (salience 4900))
(id-root ?id rebel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixroha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebel.clp 	rebel1   "  ?id "  vixroha_kara )" crlf))
)

;"rebel","VT","1.vixroha_karanA"
;They rebelled against conventions.
;
;