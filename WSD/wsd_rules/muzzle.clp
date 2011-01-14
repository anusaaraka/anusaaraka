
(defrule muzzle0
(declare (salience 5000))
(id-root ?id muzzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WUWana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muzzle.clp 	muzzle0   "  ?id "  WUWana )" crlf))
)

;"muzzle","N","1.WUWana"
(defrule muzzle1
(declare (salience 4900))
(id-root ?id muzzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha_bAMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muzzle.clp 	muzzle1   "  ?id "  muzha_bAMXa )" crlf))
)

;"muzzle","VT","1.muzha_bAMXanA/jAba_lagAnA"
