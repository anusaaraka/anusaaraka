
(defrule worm0
(declare (salience 5000))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm0   "  ?id "  kIdZA )" crlf))
)

;"worm","N","1.kIdZA"
;He is dissecting a worm.
;
(defrule worm1
(declare (salience 4900))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIde_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm1   "  ?id "  kIde_nikAla )" crlf))
)

;"worm","VI","1.kIde_nikAlanA"
;The horses should be wormed often.
;
