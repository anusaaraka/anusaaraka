
(defrule goad0
(declare (salience 5000))
(id-root ?id goad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMkuSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  goad.clp 	goad0   "  ?id "  aMkuSa )" crlf))
)

(defrule goad1
(declare (salience 4900))
(id-root ?id goad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  goad.clp 	goad1   "  ?id "  preriwa_kara )" crlf))
)

;"goad","VT","1.preriwa_karanA"
;Vinoth keeps goading me to work hard.
;
;