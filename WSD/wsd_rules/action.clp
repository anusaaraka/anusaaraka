
(defrule action0
(declare (salience 5000))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 take)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action0   "  ?id "  kAryavAhI )" crlf))
)

(defrule action1
(declare (salience 4900))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnUnI_kAryavAhI_karane_yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action1   "  ?id "  kAnUnI_kAryavAhI_karane_yogya )" crlf))
)

;"action","Adj","1.kAnUnI_kAryavAhI_karane_yogya"
;In that book there were stories of murders && other unnatural actions.
;
(defrule action2
(declare (salience 4800))
(id-root ?id action)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  action.clp 	action2   "  ?id "  kriyA )" crlf))
)

;"action","N","1.kriyA"
;To every action there is an equal && opposite reaction.
;The government took action against the anti-national group.
;
