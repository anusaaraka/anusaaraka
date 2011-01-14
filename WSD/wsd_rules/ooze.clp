
(defrule ooze0
(declare (salience 5000))
(id-root ?id ooze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalaxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ooze.clp 	ooze0   "  ?id "  xalaxala )" crlf))
)

;"ooze","N","1.xalaxala"
;Ooze can be found at the bottom of the rivers && lakes.
;
(defrule ooze1
(declare (salience 4900))
(id-root ?id ooze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ooze.clp 	ooze1   "  ?id "  cU )" crlf))
)

;"ooze","VT","1.cUnA/XIre_XIre_bahanA"
;Some of the toothpaste had oozed out.
;
