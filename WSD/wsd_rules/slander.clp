
(defrule slander0
(declare (salience 5000))
(id-root ?id slander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miWyApavAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slander.clp 	slander0   "  ?id "  miWyApavAxa )" crlf))
)

;"slander","N","1.miWyApavAxa"
;Ramesh started a vicious slander against Rahul.
;
(defrule slander1
(declare (salience 4900))
(id-root ?id slander)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miWyApavAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slander.clp 	slander1   "  ?id "  miWyApavAxa_kara )" crlf))
)

;"slander","V","1.miWyApavAxa_karanA"
;He was charged with slandering a government minister.
;
