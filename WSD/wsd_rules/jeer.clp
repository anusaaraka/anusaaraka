
(defrule jeer0
(declare (salience 5000))
(id-root ?id jeer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jeer.clp 	jeer0   "  ?id "  wAnA )" crlf))
)

;"jeer","N","1.wAnA"
;Azharuddin had to face jeers from the public for bad captaincy.
;
(defrule jeer1
(declare (salience 4900))
(id-root ?id jeer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jeer.clp 	jeer1   "  ?id "  ciDZA )" crlf))
)

;"jeer","V","1.ciDZAnA"
;The players were jeered at by the crowd for poor performance.
;
