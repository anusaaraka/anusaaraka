
(defrule beggar0
(declare (salience 5000))
(id-root ?id beggar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BiKArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beggar.clp 	beggar0   "  ?id "  BiKArI )" crlf))
)

;"beggar","N","1.BiKArI"
;One should discourage the beggars.
;
(defrule beggar1
(declare (salience 4900))
(id-root ?id beggar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMgAla_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beggar.clp 	beggar1   "  ?id "  kaMgAla_kara_xe )" crlf))
)

;"beggar","V","1.kaMgAla_kara_xenA"
;His spendrift habits will soon beggar him.
;
