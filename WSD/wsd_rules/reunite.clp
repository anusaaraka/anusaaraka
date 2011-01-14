
(defrule reunite0
(declare (salience 5000))
(id-root ?id reunite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reunite.clp 	reunite0   "  ?id "  Pira_milA )" crlf))
)

(defrule reunite1
(declare (salience 4900))
(id-root ?id reunite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reunite.clp 	reunite1   "  ?id "  Pira_mila )" crlf))
)

;"reunite","VTI","1.Pira_milanA[milAnA]"
;Divorced parents were reunited with the help of their children.
;
