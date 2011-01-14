
(defrule potter0
(declare (salience 5000))
(id-root ?id potter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kumhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potter.clp 	potter0   "  ?id "  kumhAra )" crlf))
)

;"potter","N","1.kumhAra"
;Ram krishan is the famous potter in India.
;
(defrule potter1
(declare (salience 4900))
(id-root ?id potter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potter.clp 	potter1   "  ?id "  vyarWa_GUma )" crlf))
)

;"potter","V","1.vyarWa_GUmanA"
;He loves pottering in the garden.
;
