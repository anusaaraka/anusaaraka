
(defrule revile0
(declare (salience 5000))
(id-root ?id revile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ninxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revile.clp 	revile0   "  ?id "  ninxA_kara )" crlf))
)

;"revile","V","1.ninxA_kara"
(defrule revile1
(declare (salience 4900))
(id-root ?id revile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revile.clp 	revile1   "  ?id "  gAlI_xe )" crlf))
)

;"revile","VT","1.gAlI_xenA"
;His boss always reviles at corruption.
;
