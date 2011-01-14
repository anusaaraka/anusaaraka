
(defrule adjoin0
(declare (salience 5000))
(id-root ?id adjoin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adjoin.clp 	adjoin0   "  ?id "  saMyukwa_ho )" crlf))
)

(defrule adjoin1
(declare (salience 4900))
(id-root ?id adjoin)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adjoin.clp 	adjoin1   "  ?id "  saMyukwa_kara )" crlf))
)

;"adjoin","V","1.saMyukwa_honA[karanA]"
;The telegraph office adjoins the post office.
;
