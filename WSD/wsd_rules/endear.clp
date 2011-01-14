
(defrule endear0
(declare (salience 5000))
(id-root ?id endear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  endear.clp 	endear0   "  ?id "  priya_ba )" crlf))
)

(defrule endear1
(declare (salience 4900))
(id-root ?id endear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  endear.clp 	endear1   "  ?id "  priya_bana )" crlf))
)

;"endear","VT","1.priya_banA[bana]"
