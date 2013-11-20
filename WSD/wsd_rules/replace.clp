(defrule replace1
(declare (salience 1000))
(id-root ?id replace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  replace.clp      replace1   "  ?id "  baxala )" crlf))
)
;------ Suggestions by Chaitanya Sir
;Based on formal and informal 'replace' meaning need to be decided.
;Ex: In Fig. 6.2 the bar magnet is [replaced] by a second coil C2 connected to a battery.
;Here replace meaning should be 'prawisWApiwa'
