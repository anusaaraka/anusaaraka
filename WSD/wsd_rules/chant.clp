
(defrule chant0
(declare (salience 5000))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant0   "  ?id "  gIwa )" crlf))
)

;"chant","N","1.gIwa/Bajana"
;The pillgrims sang a religious chant.
;
(defrule chant1
(declare (salience 4900))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id japa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant1   "  ?id "  japa_kara )" crlf))
)

;"chant","V","1.japa_karanA"
(defrule chant2
(declare (salience 4800))
(id-root ?id chant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id japa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chant.clp 	chant2   "  ?id "  japa_kara )" crlf))
)

;"chant","VT","1.japa_karanA/alApanA"
;The students chanted the same slogan over && over again
;
