
(defrule wanting0
(declare (salience 5000))
(id-root ?id wanting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparyApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wanting.clp 	wanting0   "  ?id "  aparyApwa )" crlf))
)

;"wanting","Adj","1.aparyApwa"
;Rita is wanting in good manners
;
(defrule wanting1
(declare (salience 4900))
(id-root ?id wanting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sivA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wanting.clp 	wanting1   "  ?id "  ke_sivA )" crlf))
)

;"wanting","Prep","1.ke_sivA"
