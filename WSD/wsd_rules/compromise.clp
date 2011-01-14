
(defrule compromise0
(declare (salience 5000))
(id-root ?id compromise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJOwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compromise.clp 	compromise0   "  ?id "  samaJOwA )" crlf))
)

(defrule compromise1
(declare (salience 4900))
(id-root ?id compromise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJOwA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compromise.clp 	compromise1   "  ?id "  samaJOwA_kara )" crlf))
)

;"compromise","VT","1.samaJOwA_karanA"
;Nobody will get everything he wants; we all must compromise.
;
;