
(defrule scream0
(declare (salience 5000))
(id-root ?id scream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scream.clp 	scream0   "  ?id "  cIKa )" crlf))
)

;"scream","N","1.cIKa"
;Screams of laughter are being heard from the theatre.
;
(defrule scream1
(declare (salience 4900))
(id-root ?id scream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scream.clp 	scream1   "  ?id "  cIKa )" crlf))
)

;"scream","V","1.cIKanA"
;The fans screamed with delight when they saw him.
;
