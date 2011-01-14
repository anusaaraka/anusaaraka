
(defrule vagrant0
(declare (salience 5000))
(id-root ?id vagrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumakkadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vagrant.clp 	vagrant0   "  ?id "  GumakkadZa )" crlf))
)

;"vagrant","Adj","1.GumakkadZa"
;The vagrant man saw a hamlet
;
(defrule vagrant1
(declare (salience 4900))
(id-root ?id vagrant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gumakkada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vagrant.clp 	vagrant1   "  ?id "  Gumakkada )" crlf))
)

;"vagrant","N","1.Gumakkada"
;A shelter for vagrants was constructed
;
