
(defrule irresistible0
(declare (salience 5000))
(id-root ?id irresistible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawiroXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irresistible.clp 	irresistible0   "  ?id "  aprawiroXya )" crlf))
)

(defrule irresistible1
(declare (salience 4900))
(id-root ?id irresistible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawiroXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irresistible.clp 	irresistible1   "  ?id "  aprawiroXya )" crlf))
)

;"irresistible","Adj","1.aprawiroXya"
;He felt an irresistible urge to slap her.
;--"2.luBAvanA"
;Children find their desire for ice cream irresistible.
;
;
