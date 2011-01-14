
(defrule vegetarian0
(declare (salience 5000))
(id-root ?id vegetarian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAkAhArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vegetarian.clp 	vegetarian0   "  ?id "  SAkAhArI )" crlf))
)

;"vegetarian","Adj","1.SAkAhArI"
;Vegetarian food is good for health
;
(defrule vegetarian1
(declare (salience 4900))
(id-root ?id vegetarian)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAkAhArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vegetarian.clp 	vegetarian1   "  ?id "  SAkAhArI )" crlf))
)

;"vegetarian","N","1.SAkAhArI"
;I am a vegetarian
;
