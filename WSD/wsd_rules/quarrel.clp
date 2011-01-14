
(defrule quarrel0
(declare (salience 5000))
(id-root ?id quarrel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " quarrel.clp	quarrel0  "  ?id "  " ?id1 "  asahamawa_ho  )" crlf))
)

;I don't quarrel with your opinion in this situation.
;mEM isa sWiwi meM wumase asahamawa nahIM hUz
(defrule quarrel1
(declare (salience 4900))
(id-root ?id quarrel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarrel.clp 	quarrel1   "  ?id "  JagadZA )" crlf))
)

(defrule quarrel2
(declare (salience 4800))
(id-root ?id quarrel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarrel.clp 	quarrel2   "  ?id "  JagadA_kara )" crlf))
)

;"quarrel","V","1.JagadA_karanA"
;1.The two brothers often quarrel over trivial issues.
;
;