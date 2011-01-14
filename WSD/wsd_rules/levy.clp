
(defrule levy0
(declare (salience 5000))
(id-root ?id levy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  levy.clp 	levy0   "  ?id "  ugAhI )" crlf))
)

;"levy","N","1.ugAhI"
;Levy on imported cosmatics ha sfurther gone up.
;
(defrule levy1
(declare (salience 4900))
(id-root ?id levy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  levy.clp 	levy1   "  ?id "  ugAha )" crlf))
)

;"levy","V","1.ugAhanA"
;The government has levied agricultural products as well.
;
