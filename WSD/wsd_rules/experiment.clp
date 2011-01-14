
(defrule experiment0
(declare (salience 5000))
(id-root ?id experiment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  experiment.clp 	experiment0   "  ?id "  prayoga )" crlf))
)

;"experiment","N","1.prayoga"
;--"2.parIkRA"
;Researchers are conducting an experiment on human psychology.
;
(defrule experiment1
(declare (salience 4900))
(id-root ?id experiment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  experiment.clp 	experiment1   "  ?id "  parIkRA_kara )" crlf))
)

;"experiment","V","1.parIkRA_karanA"
;Medicines are first experimented on animals before recommending for human
;consumption.
;
