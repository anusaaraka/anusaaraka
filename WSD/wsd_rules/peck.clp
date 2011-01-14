
(defrule peck0
(declare (salience 5000))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caMcu_prahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck0   "  ?id "  caMcu_prahAra )" crlf))
)

;"peck","N","1.caMcu_prahAra"
;I had purchased 2 pecks of sugar.
;
(defrule peck1
(declare (salience 4900))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id coMca_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck1   "  ?id "  coMca_mAra )" crlf))
)

;"peck","V","1.coMca_mAranA"
;Birds are pecking on the trunk of the trees.
;
