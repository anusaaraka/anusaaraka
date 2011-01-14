
(defrule neuter0
(declare (salience 5000))
(id-root ?id neuter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id napuMsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neuter.clp 	neuter0   "  ?id "  napuMsaka )" crlf))
)

;"neuter","Adj","1.napuMsaka"
;`it' is a neuter gender pronoun in English.
;
(defrule neuter1
(declare (salience 4900))
(id-root ?id neuter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id napuMsaka_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neuter.clp 	neuter1   "  ?id "  napuMsaka_banA )" crlf))
)

;"neuter","V","1.napuMsaka_banAnA"
;The vets neutered the dog.
;
