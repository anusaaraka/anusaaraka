
(defrule deluge0
(declare (salience 5000))
(id-root ?id deluge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deluge.clp 	deluge0   "  ?id "  acAnaka )" crlf))
)

(defrule deluge1
(declare (salience 4900))
(id-root ?id deluge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_dUba_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deluge.clp 	deluge1   "  ?id "  meM_dUba_jA )" crlf))
)

;"deluge","VT","1.meM_dUba_jAnA"
;The town was deluged due to the heavy monsoon rains.
;
;