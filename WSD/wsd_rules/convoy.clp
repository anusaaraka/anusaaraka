
(defrule convoy0
(declare (salience 5000))
(id-root ?id convoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAhanoM_kI_tolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convoy.clp 	convoy0   "  ?id "  vAhanoM_kI_tolI )" crlf))
)

;"convoy","N","1.vAhanoM_kI_tolI"
;Ministers on high posts move about in convoys.
;--"2.rakRA_xala"
;The convoy of armed troops reached safely.
;
(defrule convoy1
(declare (salience 4900))
(id-root ?id convoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkasI_se_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convoy.clp 	convoy1   "  ?id "  cOkasI_se_le_jA )" crlf))
)

;"convoy","VT","1.cOkasI_se_le_jAnA"
;They convoyed their chief across the country border.
;
