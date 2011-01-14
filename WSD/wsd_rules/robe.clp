
(defrule robe0
(declare (salience 5000))
(id-root ?id robe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  robe.clp 	robe0   "  ?id "  jAmA )" crlf))
)

;"robe","N","1.jAmA"
;Many Arabs wear long flowing robes.
;
(defrule robe1
(declare (salience 4900))
(id-root ?id robe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saBAvaswra_XAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  robe.clp 	robe1   "  ?id "  saBAvaswra_XAraNa_kara )" crlf))
)

;"robe","VT","1.saBAvaswra_XAraNa_karanA"
;All advocates were robed in their black gowns.
;
