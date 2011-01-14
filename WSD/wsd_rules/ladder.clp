
(defrule ladder0
(declare (salience 5000))
(id-root ?id ladder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIDI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ladder.clp 	ladder0   "  ?id "  sIDI )" crlf))
)

;"ladder","N","1.sIDI"
;Use this ladder to climb up.
;Hard work is a sure ladder to advance in one's career.
;
(defrule ladder1
(declare (salience 4900))
(id-root ?id ladder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIDI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ladder.clp 	ladder1   "  ?id "  sIDI_banA )" crlf))
)

;"ladder","V","1.sIDI_banAnA"
