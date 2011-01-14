
(defrule universe0
(declare (salience 5000))
(id-root ?id universe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id brahmAMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  universe.clp 	universe0   "  ?id "  brahmAMda )" crlf))
)

(defrule universe1
(declare (salience 4900))
(id-root ?id universe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  universe.clp 	universe1   "  ?id "  viSva )" crlf))
)

;default_sense && category=noun	sqRti	0
;"universe","N","1.sqRti/saMsAra/viSva/jagawa"
;Our universe is mysterious.
;
;
