
(defrule underground0
(declare (salience 5000))
(id-root ?id underground)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUmigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underground.clp 	underground0   "  ?id "  BUmigawa )" crlf))
)

;"underground","Adj","1.BUmi_ke_nIce_kA"
;The underground shed is very dark.
;
(defrule underground1
(declare (salience 4900))
(id-root ?id underground)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gupwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underground.clp 	underground1   "  ?id "  gupwa )" crlf))
)

;"underground","Adv","1.gupwa"
;The thief went underground to escape capture.
;
