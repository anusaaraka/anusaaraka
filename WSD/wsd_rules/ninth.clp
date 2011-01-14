
(defrule ninth0
(declare (salience 5000))
(id-root ?id ninth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id navAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ninth.clp 	ninth0   "  ?id "  navAz )" crlf))
)

;"ninth","Adj","1.navAz"
;Hers is the ninth book on the list.
;
(defrule ninth1
(declare (salience 4900))
(id-root ?id ninth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id navAz_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ninth.clp 	ninth1   "  ?id "  navAz_aMSa )" crlf))
)

;"ninth","N","1.navAz_aMSa"
;He gave her a ninth of the total amount.
;
