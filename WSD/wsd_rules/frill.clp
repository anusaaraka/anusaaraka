
(defrule frill0
(declare (salience 5000))
(id-root ?id frill)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id frilled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JAlara_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  frill.clp  	frill0   "  ?id "  JAlara_lagA_huA )" crlf))
)

;"frilled","Adj","1.JAlara_lagA_huA"
;The frilled curtain in the room is beautiful.
;
(defrule frill1
(declare (salience 4900))
(id-root ?id frill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAlara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frill.clp 	frill1   "  ?id "  JAlara )" crlf))
)

;"frill","N","1.JAlara"
;Her skirt has lots of frills.
;
(defrule frill2
(declare (salience 4800))
(id-root ?id frill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAlara_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frill.clp 	frill2   "  ?id "  JAlara_lagA )" crlf))
)

;"frill","V","1.JAlara_lagA"
