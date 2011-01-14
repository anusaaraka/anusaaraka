
(defrule chew0
(declare (salience 5000))
(id-root ?id chew)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 socanA_yA_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chew.clp	chew0  "  ?id "  " ?id1 "  socanA_yA_bAwa_kara  )" crlf))
)

;He chewed over the problem.
;usane samasyA ke bAre meM socA
(defrule chew1
(declare (salience 4900))
(id-root ?id chew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chew.clp 	chew1   "  ?id "  cabA )" crlf))
)

;"chew","VT","1.cabAnA"
;You should chew your food properly.
;
;
