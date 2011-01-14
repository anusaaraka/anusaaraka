
(defrule unify0
(declare (salience 5000))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify0   "  ?id "  eka_banA )" crlf))
)

;"unify","V","1.eka_banAnA"
(defrule unify1
(declare (salience 4900))
(id-root ?id unify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_rUpa_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unify.clp 	unify1   "  ?id "  eka_rUpa_ba )" crlf))
)

;"unify","VT","1.eka_rUpa_banA/jodZa"
;The rally was an attempt to unify the nation.
;
