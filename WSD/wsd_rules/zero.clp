
(defrule zero0
(declare (salience 5000))
(id-root ?id zero)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zero.clp 	zero0   "  ?id "  SUnya )" crlf))
)

;"zero","N","1.SUnya"
;The temperature fell below zero in Adampur,Punjab.
;


;Added by Meena(18.01.10)
;The missiles were zeroed in on the enemy camps .
(defrule zero1
(declare (salience 4900))
(id-root ?id zero)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " zero.clp  zero1  "  ?id "  " ?id1 "  lakRiwa_kara  )" crlf))
)



;Salience reduced by Meena(18.01.10)
(defrule zero2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id zero)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA_sAXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zero.clp 	zero2   "  ?id "  niSAnA_sAXa )" crlf))
)

;"zero","V","1.niSAnA_sAXanA"
;The missiles were zeroed in on the enemy camps.
;--"2.XyAna_kenxriwa_karanA"
;The media zeroed in on the Kargil issue for the past three months.
;
