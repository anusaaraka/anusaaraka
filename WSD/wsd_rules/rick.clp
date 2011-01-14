
(defrule rick0
(declare (salience 5000))
(id-root ?id rick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rick.clp 	rick0   "  ?id "  Dera )" crlf))
)

;"rick","N","1.Dera"
;There is a huge rick of straw in her neighbourhood.
;
(defrule rick1
(declare (salience 4900))
(id-root ?id rick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rick.clp 	rick1   "  ?id "  xarxa )" crlf))
)

;"rick","V","1.xarxa{_jodZoM_kA}"
;Her lower back got ricked.    
;
