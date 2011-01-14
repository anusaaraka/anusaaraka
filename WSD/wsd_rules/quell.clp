
(defrule quell0
(declare (salience 5000))
(id-root ?id quell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quell.clp 	quell0   "  ?id "  xabA )" crlf))
)

;"quell","V","1.xabAnA^SAMwa_karanA"
(defrule quell1
(declare (salience 4900))
(id-root ?id quell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quell.clp 	quell1   "  ?id "  xabA )" crlf))
)

;"quell","VT","1.xabAnA"
;To quell the violence the area was cordoned off
;I quelled my hunger.
;
