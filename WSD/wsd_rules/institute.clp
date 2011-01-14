
(defrule institute0
(declare (salience 5000))
(id-root ?id institute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  institute.clp 	institute0   "  ?id "  saMsWA )" crlf))
)

(defrule institute1
(declare (salience 4900))
(id-root ?id institute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  institute.clp 	institute1   "  ?id "  saMsWApiwa_kara )" crlf))
)

;"institute","VT","1.saMsWApiwa_karanA"
;Tatas have instituted a number of openings for the engineers.
;
;
