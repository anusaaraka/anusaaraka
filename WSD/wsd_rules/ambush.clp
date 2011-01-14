
(defrule ambush0
(declare (salience 5000))
(id-root ?id ambush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambush.clp 	ambush0   "  ?id "  GAwa )" crlf))
)

;"ambush","N","1.GAwa"
;The soldier was killed in an ambush.
;
(defrule ambush1
(declare (salience 4900))
(id-root ?id ambush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambush.clp 	ambush1   "  ?id "  GAwa_lagA )" crlf))
)

;"ambush","V","1.GAwa_lagAnA"
;The actress was ambushed by reporters && cameramen. 
;
