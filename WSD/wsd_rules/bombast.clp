
(defrule bombast0
(declare (salience 5000))
(id-root ?id bombast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambI_cOdZI_bAwacIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bombast.clp 	bombast0   "  ?id "  lambI_cOdZI_bAwacIwa )" crlf))
)

;"bombast","N","1.lambI_cOdZI_bAwacIwa"
(defrule bombast1
(declare (salience 4900))
(id-root ?id bombast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambI_cOdZI_bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bombast.clp 	bombast1   "  ?id "  lambI_cOdZI_bAwacIwa_kara )" crlf))
)

;"bombast","V","1.lambI_cOdZI_bAwacIwa_karanA"
;He bombasted his audience.
;
