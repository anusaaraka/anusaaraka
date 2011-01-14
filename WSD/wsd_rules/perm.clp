
(defrule perm0
(declare (salience 5000))
(id-root ?id perm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAloM_ko_lahariyAxAra_banAne_kI_kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perm.clp 	perm0   "  ?id "  bAloM_ko_lahariyAxAra_banAne_kI_kriyA )" crlf))
)

;"perm","N","1.bAloM_ko_lahariyAxAra_banAne_kI_kriyA"
;Have a perm.
;
(defrule perm1
(declare (salience 4900))
(id-root ?id perm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAloM_ko_lahariyAxAra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perm.clp 	perm1   "  ?id "  bAloM_ko_lahariyAxAra_banA )" crlf))
)

;"perm","V","1.bAloM_ko_lahariyAxAra_banAnA"
;Her hair has been permed.
;
