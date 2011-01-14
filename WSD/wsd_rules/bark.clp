
(defrule bark0
(declare (salience 5000))
(id-root ?id bark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id valkala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bark.clp 	bark0   "  ?id "  valkala )" crlf))
)

(defrule bark1
(declare (salience 4900))
(id-root ?id bark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bark.clp 	bark1   "  ?id "  BOMka )" crlf))
)

;"bark","VI","1.BOzkanA"
;The dog barks loudly at the night.
;
;
