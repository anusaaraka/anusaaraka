
(defrule cheat0
(declare (salience 5000))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat0   "  ?id "  Taga )" crlf))
)

;"cheat","N","1.Taga"
;He is a cheat.
;
(defrule cheat1
(declare (salience 4900))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat1   "  ?id "  kapata_kara )" crlf))
)

;"cheat","V","1.kapata_karanA"
;He cheated his friend that cost him his life.
;
