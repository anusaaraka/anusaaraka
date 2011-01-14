
(defrule eat0
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wabAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eat.clp	eat0  "  ?id "  " ?id1 "  wabAha_kara  )" crlf))
)

;His son's extravagence has eaten into all his savings.
;usake bete ke PijZUlaKarca ne usakI sArI bacawa ko naRta kara xiyA
(defrule eat1
(declare (salience 4900))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat1   "  ?id "  KA )" crlf))
)

;"eat","VT","1.KAnA"
;Eat a good breakfast.
;
;
