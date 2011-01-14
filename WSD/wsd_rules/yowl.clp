
(defrule yowl0
(declare (salience 5000))
(id-root ?id yowl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id huAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yowl.clp 	yowl0   "  ?id "  huAz )" crlf))
)

;"yowl","N","1.huAz/cIKa"
;The yowl of dogs kept me awake whole night.
;
(defrule yowl1
(declare (salience 4900))
(id-root ?id yowl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yowl.clp 	yowl1   "  ?id "  huA )" crlf))
)

;"yowl","V","1.huAnA/cIKanA"
;The dogs were yowling whole night.
;
