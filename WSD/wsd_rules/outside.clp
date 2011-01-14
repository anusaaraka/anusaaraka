
(defrule outside0
(declare (salience 5000))
(id-root ?id outside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outside.clp 	outside0   "  ?id "  bAhya )" crlf))
)

;"outside","Adj","1.bAhya"
;The outside world could not care less.
;--"2.bAhara"
;The outside call costs a lot.
;--"3.kama"
;Steffi has an outside chance of returning to competitive tennis.
;
(defrule outside1
(declare (salience 4900))
(id-root ?id outside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outside.clp 	outside1   "  ?id "  bAhara )" crlf))
)

;"outside","Adv","1.bAhara"
;That job is outside my duty.
;
(defrule outside2
(declare (salience 4800))
(id-root ?id outside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outside.clp 	outside2   "  ?id "  ke_bAhara )" crlf))
)

;"outside","Prep","1.
;outside{[ke]_bAhara}"
;
(defrule outside3
(declare (salience 4700))
(id-root ?id outside)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outside.clp 	outside3   "  ?id "  bAhara )" crlf))
)

