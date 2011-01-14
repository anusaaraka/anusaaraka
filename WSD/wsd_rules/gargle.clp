
(defrule gargle0
(declare (salience 5000))
(id-root ?id gargle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kullA_karane_kA_warala_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gargle.clp 	gargle0   "  ?id "  kullA_karane_kA_warala_paxArWa )" crlf))
)

;"gargle","N","1.kullA_karane_kA_warala_paxArWa"
;Use a salt water gargle for soar throat.
;
(defrule gargle1
(declare (salience 4900))
(id-root ?id gargle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kullA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gargle.clp 	gargle1   "  ?id "  kullA_kara )" crlf))
)

;"gargle","V","1.kullA_karanA"
;Gargle with salt water to cure soar throat.
;
