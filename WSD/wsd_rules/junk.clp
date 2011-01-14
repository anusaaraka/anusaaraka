
(defrule junk0
(declare (salience 5000))
(id-root ?id junk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  junk.clp 	junk0   "  ?id "  bekAra_vaswu )" crlf))
)

;"junk","N","1.bekAra_vaswu"
;I have lot of junk in my store room.
;
(defrule junk1
(declare (salience 4900))
(id-root ?id junk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  junk.clp 	junk1   "  ?id "  PeMka_xe )" crlf))
)

;"junk","V","1.PeMka_xenA"
;I junked all the old newspapers.
;
