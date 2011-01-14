
(defrule syndicate0
(declare (salience 5000))
(id-root ?id syndicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasAya_saMGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  syndicate.clp 	syndicate0   "  ?id "  vyavasAya_saMGa )" crlf))
)

;"syndicate","N","1.vyavasAya_saMGa/aBiRaxa"
;The various software industries in the countries formed a syndicate.
;
(defrule syndicate1
(declare (salience 4900))
(id-root ?id syndicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASana_hewu_saMGa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  syndicate.clp 	syndicate1   "  ?id "  prakASana_hewu_saMGa_banA )" crlf))
)

;"syndicate","V","1.prakASana_hewu_saMGa_banAnA"
;His articles && strip cartoons are syndicated throughout the country.
;
