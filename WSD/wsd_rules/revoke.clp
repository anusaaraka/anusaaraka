
(defrule revoke0
(declare (salience 5000))
(id-root ?id revoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revoke.clp 	revoke0   "  ?id "  raxxa_kara )" crlf))
)

;"revoke","V","1.raxxa_karanA"
(defrule revoke1
(declare (salience 4900))
(id-root ?id revoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revoke.clp 	revoke1   "  ?id "  raxXa_kara )" crlf))
)

;"revoke","VTI","1.raxXa_karanA"
;He has revoked an agreement with his partner.
;
