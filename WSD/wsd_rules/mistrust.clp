
(defrule mistrust0
(declare (salience 5000))
(id-root ?id mistrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mistrust.clp 	mistrust0   "  ?id "  aviSvAsa )" crlf))
)

;"mistrust","N","1.aviSvAsa"
;Her mistrust of her husband often led to their quarrels.
;
(defrule mistrust1
(declare (salience 4900))
(id-root ?id mistrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mistrust.clp 	mistrust1   "  ?id "  aviSvAsa_kara )" crlf))
)

;"mistrust","V","1.aviSvAsa_karanA"
;Don't mistrust everyone.
;
