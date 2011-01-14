
(defrule urge0
(declare (salience 5000))
(id-root ?id urge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avega))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urge.clp 	urge0   "  ?id "  Avega )" crlf))
)

;"urge","N","1.Avega/preraNA"
;He has a strong urge to go to space.
;
(defrule urge1
(declare (salience 4900))
(id-root ?id urge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ukasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urge.clp 	urge1   "  ?id "  ukasA )" crlf))
)

;"urge","V","1.ukasAnA"
;I urged him to finish his studies
;
