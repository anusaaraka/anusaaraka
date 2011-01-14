
(defrule concrete0
(declare (salience 5000))
(id-root ?id concrete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tosa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concrete.clp 	concrete0   "  ?id "  Tosa )" crlf))
)

;"concrete","Adj","1.Tosa"
;Trees,books etc are concrete things.
;The police couldn't solve the case due to the lack of concrete evidence.
;
(defrule concrete1
(declare (salience 4900))
(id-root ?id concrete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concrete.clp 	concrete1   "  ?id "  rodZA )" crlf))
)

;"concrete","N","1.rodZA"
;Modern buildings are mainly concrete.
;
