
(defrule relight0
(declare (salience 5000))
(id-root ?id relight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_jalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relight.clp 	relight0   "  ?id "  Pira_jalA )" crlf))
)

(defrule relight1
(declare (salience 4900))
(id-root ?id relight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_jala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relight.clp 	relight1   "  ?id "  Pira_jala )" crlf))
)

;"relight","V","1.Pira_jala[jalA]"
