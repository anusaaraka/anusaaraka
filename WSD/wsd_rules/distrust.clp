
(defrule distrust0
(declare (salience 5000))
(id-root ?id distrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distrust.clp 	distrust0   "  ?id "  aviSvAsa )" crlf))
)

;"distrust","N","1.aviSvAsa/saMxeha"
(defrule distrust1
(declare (salience 4900))
(id-root ?id distrust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aviSvAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distrust.clp 	distrust1   "  ?id "  aviSvAsa_kara )" crlf))
)

;"distrust","VT","1.aviSvAsa_karanA/saMxeha_karanA"
;I distrust that man
;
