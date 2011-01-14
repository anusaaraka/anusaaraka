
(defrule boomerang0
(declare (salience 5000))
(id-root ?id boomerang)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bUmarEMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boomerang.clp 	boomerang0   "  ?id "  bUmarEMga )" crlf))
)

;"boomerang","N","1.bUmarEMga"
;Nowadays boomerangs are very popular among children.
;
(defrule boomerang1
(declare (salience 4900))
(id-root ?id boomerang)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa_A_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boomerang.clp 	boomerang1   "  ?id "  viparIwa_A_padZa )" crlf))
)

;"boomerang","V","1.viparIwa_A_padZanA"
;Her attempt to defame me boomeranged on her when I charged her with libel.
;
