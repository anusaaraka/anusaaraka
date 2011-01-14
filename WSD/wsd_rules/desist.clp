
(defrule desist0
(declare (salience 5000))
(id-root ?id desist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_lagAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desist.clp 	desist0   "  ?id "  roka_lagAnA )" crlf))
)

;"desist","N","1.roka_lagAnA"
;He should desist from loosing his temper so quickly.
;
(defrule desist1
(declare (salience 4900))
(id-root ?id desist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desist.clp 	desist1   "  ?id "  ruka_jA )" crlf))
)

;"desist","VT","1.ruka_jAnA"
;We should not desist before we achieve our target.
;
