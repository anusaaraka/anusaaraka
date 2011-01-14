
(defrule scheme0
(declare (salience 5000))
(id-root ?id scheme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scheme.clp 	scheme0   "  ?id "  yojanA )" crlf))
)

(defrule scheme1
(declare (salience 4900))
(id-root ?id scheme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scheme.clp 	scheme1   "  ?id "  yojanA_banA )" crlf))
)

;"scheme","V","1.yojanA banAnA"
;The workers started scheming against the manager.
;
;