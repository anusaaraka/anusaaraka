
(defrule lust0
(declare (salience 5000))
(id-root ?id lust)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pasaMxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lust.clp	lust0  "  ?id "  " ?id1 "  pasaMxa_A  )" crlf))
)

;She'd been lusting after that pearl bangles && finally she bought them.
;use vaha mowiyoM ke kazgana bahuwa xinoM se pasaMxa A rahe We Ora AKZirakAra usane unhe KarIxa liyA
(defrule lust1
(declare (salience 4900))
(id-root ?id lust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAmukawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lust.clp 	lust1   "  ?id "  kAmukawA )" crlf))
)

;"lust","N","1.kAmukawA"
;On eshould learn to curb one's lust.
;--"2.lAlaca"
;His lust for power is frightening.
;
(defrule lust2
(declare (salience 4800))
(id-root ?id lust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lust.clp 	lust2   "  ?id "  loBa_kara )" crlf))
)

;"lust","VI","1.loBa_karanA"
;He lusts for a materially rich life.
;
