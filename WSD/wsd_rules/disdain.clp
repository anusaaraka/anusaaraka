
(defrule disdain0
(declare (salience 5000))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avahelanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disdain.clp 	disdain0   "  ?id "  avahelanA )" crlf))
)

;"disdain","N","1.avahelanA"
;She gave me a look of disdain.
;
(defrule disdain1
(declare (salience 4900))
(id-root ?id disdain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avahelanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disdain.clp 	disdain1   "  ?id "  avahelanA_kara )" crlf))
)

;"disdain","VT","1.avahelanA_karanA"
;She disdains to eat with low class people.
;
