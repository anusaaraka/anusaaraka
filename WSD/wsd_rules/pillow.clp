
(defrule pillow0
(declare (salience 5000))
(id-root ?id pillow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pillow.clp 	pillow0   "  ?id "  wakiyA )" crlf))
)

;"pillow","N","1.wakiyA"
;She lay back on her pillow.
;
(defrule pillow1
(declare (salience 4900))
(id-root ?id pillow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pillow.clp 	pillow1   "  ?id "  sahArA_xe )" crlf))
)

;"pillow","V","1.sahArA_xenA"
;She pillowed his head to make him comfortable.
;
