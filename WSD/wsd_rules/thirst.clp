
(defrule thirst0
(declare (salience 5000))
(id-root ?id thirst)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pyAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thirst.clp 	thirst0   "  ?id "  pyAsa )" crlf))
)

;"thirst","N","1.pyAsa"
;The man died of thirst.
;--"2.aBilARA"
;A thirst for knowledge can never be quenched in some people.
;
(defrule thirst1
(declare (salience 4900))
(id-root ?id thirst)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wqRiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thirst.clp 	thirst1   "  ?id "  wqRiwa_ho )" crlf))
)

;"thirst","VI","1.wqRiwa_honA"
;Naciketa was thirsting for knowledge.
;
