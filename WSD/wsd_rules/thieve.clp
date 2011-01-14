
(defrule thieve0
(declare (salience 5000))
(id-root ?id thieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id curA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thieve.clp 	thieve0   "  ?id "  curA )" crlf))
)

;"thieve","VI","1.curAnA[anOpacArika]"
;Pickpocketers thieve when they get an oppurtunity.
;
(defrule thieve1
(declare (salience 4900))
(id-root ?id thieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id curA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thieve.clp 	thieve1   "  ?id "  curA )" crlf))
)

;"thieve","VT","1.curAnA"
;The man forced the boy to thieve the watch.
;
