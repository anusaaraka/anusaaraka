
(defrule trek0
(declare (salience 5000))
(id-root ?id trek)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambI_yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trek.clp 	trek0   "  ?id "  lambI_yAwrA )" crlf))
)

;"trek","N","1.lambI_yAwrA{paxayAwrA}"
;They went on a trek to the mountains.
;
(defrule trek1
(declare (salience 4900))
(id-root ?id trek)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambI_yAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trek.clp 	trek1   "  ?id "  lambI_yAwrA_kara )" crlf))
)

;"trek","V","1.lambI_yAwrA_karanA{paxayAwrA}"
;They loved trekking in the Himalayas.
;
