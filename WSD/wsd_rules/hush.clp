
(defrule hush0
(declare (salience 5000))
(id-root ?id hush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hush.clp 	hush0   "  ?id "  SAnwi )" crlf))
)

;"hush","N","1.SAnwi"
;XyAna karane ke lie 'hush' anivArya hE
;
(defrule hush1
(declare (salience 4900))
(id-root ?id hush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cupa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hush.clp 	hush1   "  ?id "  cupa_ho_jA )" crlf))
)

;"hush","V","1.cupa_ho_jAnA"
;muKyAXyApaka ko xeKawe hI CAwra 'hush' ho gae 
;
