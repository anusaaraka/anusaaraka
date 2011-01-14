
(defrule repeal0
(declare (salience 5000))
(id-root ?id repeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMdana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeal.clp 	repeal0   "  ?id "  KaMdana )" crlf))
)

;"repeal","N","1.KaMdana"
;He is repealing the law.
;
(defrule repeal1
(declare (salience 4900))
(id-root ?id repeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeal.clp 	repeal1   "  ?id "  raxxa_kara )" crlf))
)

;"repeal","VT","1.raxxa_karanA"
;Management has repealed the grant.
;
