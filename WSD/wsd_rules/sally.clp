
(defrule sally0
(declare (salience 5000))
(id-root ?id sally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sally.clp 	sally0   "  ?id "  XAvA )" crlf))
)

;"sally","N","1.XAvA"
;The army made a successful sally.
;
(defrule sally1
(declare (salience 4900))
(id-root ?id sally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sally.clp 	sally1   "  ?id "  nikala )" crlf))
)

;"sally","V","1.nikalanA"
;After lunch she sallied forth for a short walk.
;
