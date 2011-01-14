
(defrule unveil0
(declare (salience 5000))
(id-root ?id unveil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kula_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unveil.clp 	unveil0   "  ?id "  Kula_jA )" crlf))
)

;"unveil","VI","1.Kula_jA/prakASa_me_A"
; Women must not unveil themselves in public in Islamic societies
;
(defrule unveil1
(declare (salience 4900))
(id-root ?id unveil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzGata_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unveil.clp 	unveil1   "  ?id "  GUzGata_uTA )" crlf))
)

;"unveil","VT","1.GUzGata_uTA/Kola"
;The bride was asked to unveil herself after the wedding.
;
