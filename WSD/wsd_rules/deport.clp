
(defrule deport0
(declare (salience 5000))
(id-root ?id deport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAsiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deport.clp 	deport0   "  ?id "  nirvAsiwa_kara )" crlf))
)

;"deport","V","1.nirvAsiwa_karanA2"
(defrule deport1
(declare (salience 4900))
(id-root ?id deport)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAsiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deport.clp 	deport1   "  ?id "  nirvAsiwa_kara )" crlf))
)

;"deport","VT","1.nirvAsiwa_karanA"
;He was deported because of his alleged involvement in the conspiracy. 
;
