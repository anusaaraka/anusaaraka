
(defrule snake0
(declare (salience 5000))
(id-root ?id snake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snake.clp 	snake0   "  ?id "  sAzpa )" crlf))
)

;"snake","N","1.sAzpa"
;All snakes are not poisonous.
;
(defrule snake1
(declare (salience 4900))
(id-root ?id snake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snake.clp 	snake1   "  ?id "  reMga )" crlf))
)

;"snake","V","1.reMganA"
;The path snakes in the hilly areas.
;
