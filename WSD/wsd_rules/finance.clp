
(defrule finance0
(declare (salience 5000))
(id-root ?id finance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArWika_vyavasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finance.clp 	finance0   "  ?id "  ArWika_vyavasWA )" crlf))
)

;"finance","N","1.ArWika_vyavasWA"
;He has financed his studies through loan from bank.
;He has not been able to manage his finances properly resulting in a big loss.
;
(defrule finance1
(declare (salience 4900))
(id-root ?id finance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArWika_prabanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finance.clp 	finance1   "  ?id "  ArWika_prabanXa )" crlf))
)

;"finance","V","1.ArWika_prabanXa"
;The company has arranged finance for their new project through issue of bonds.
;
