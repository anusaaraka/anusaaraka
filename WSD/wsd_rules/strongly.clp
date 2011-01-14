
(defrule strongly0
(declare (salience 5000))
(id-root ?id strongly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZawA_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strongly.clp 	strongly0   "  ?id "  xqDZawA_se )" crlf))
)

;"strongly","Adj","1.xqDZawA_se"
;I strongly feel that one should opposse injustice.
;
(defrule strongly1
(declare (salience 4900))
(id-root ?id strongly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZabUwI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strongly.clp 	strongly1   "  ?id "  majZabUwI_se )" crlf))
)

;"strongly","Adv","1.majZabUwI_se"
