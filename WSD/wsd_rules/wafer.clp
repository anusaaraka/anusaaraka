
(defrule wafer0
(declare (salience 5000))
(id-root ?id wafer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pApadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wafer.clp 	wafer0   "  ?id "  pApadZa )" crlf))
)

;"wafer","N","1.pApadZa"
;She loves potato wafers.
;
(defrule wafer1
(declare (salience 4900))
(id-root ?id wafer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tikiyA_se_baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wafer.clp 	wafer1   "  ?id "  tikiyA_se_baMxa_kara )" crlf))
)

;"wafer","VT","1.tikiyA_se_baMxa_karanA"
