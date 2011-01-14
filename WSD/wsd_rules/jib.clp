
(defrule jib0
(declare (salience 5000))
(id-root ?id jib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAja_kA__wikonA_pAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jib.clp 	jib0   "  ?id "  jahAja_kA__wikonA_pAwA )" crlf))
)

(defrule jib1
(declare (salience 4900))
(id-root ?id jib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_kArya_ko_jArI_raKane_se_inkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jib.clp 	jib1   "  ?id "  kisI_kArya_ko_jArI_raKane_se_inkAra_kara )" crlf))
)

;"jib","V","1.kisI_kArya_ko_jArI_raKane_se_inkAra_karanA"
;He jibbed investing any more money in shares.
;
;