
(defrule jaunt0
(declare (salience 5000))
(id-root ?id jaunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaunt.clp 	jaunt0   "  ?id "  sEra )" crlf))
)

;"jaunt","N","1.sEra"
;I went on a jaunt with my friend.
;
(defrule jaunt1
(declare (salience 4900))
(id-root ?id jaunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaunt.clp 	jaunt1   "  ?id "  sEra_kara )" crlf))
)

;"jaunt","V","1.sEra_karanA"
;We jaunted on the beach last evening.
;
