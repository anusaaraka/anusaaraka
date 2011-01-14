
(defrule wont0
(declare (salience 5000))
(id-root ?id wont)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wont.clp 	wont0   "  ?id "  aByaswa )" crlf))
)

;"wont","Adj","1.aByaswa"
;He is wont to drink water before the meals.
;
(defrule wont1
(declare (salience 4900))
(id-root ?id wont)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svaBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wont.clp 	wont1   "  ?id "  svaBAva )" crlf))
)

;"wont","N","1.svaBAva"
;It was her wont to get up early.
;
