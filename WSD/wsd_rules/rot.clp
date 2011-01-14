
(defrule rot0
(declare (salience 5000))
(id-root ?id rot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rot.clp 	rot0   "  ?id "  sadZana )" crlf))
)

;"rot","N","1.sadZana"
(defrule rot1
(declare (salience 4900))
(id-root ?id rot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rot.clp 	rot1   "  ?id "  sadZa )" crlf))
)

;"rot","VTI","1.sadZanA"
;There is a heap of rotting garbage near our colony.
;
