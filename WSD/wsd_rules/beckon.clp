
(defrule beckon0
(declare (salience 5000))
(id-root ?id beckon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSAre_se_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beckon.clp 	beckon0   "  ?id "  iSAre_se_bulA )" crlf))
)

;"beckon","V","1.iSAre_se_bulA"
(defrule beckon1
(declare (salience 4900))
(id-root ?id beckon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beckon.clp 	beckon1   "  ?id "  saMkewa_kara )" crlf))
)

;"beckon","VT","1.saMkewa_karanA"
;From the balcony she beckoned to come to her home.
;
