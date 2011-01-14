
(defrule buck0
(declare (salience 5000))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck0  "  ?id "  " ?id1 "  jalxI_kara  )" crlf))
)

;Buck up!we are getting late.
;jalxI karo! hameM xera ho rahI hE
(defrule buck1
(declare (salience 4900))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck1  "  ?id "  " ?id1 "  KuSa_ho  )" crlf))
)

; Good result bucked all the children up. 
;acCe pariNAma ne saBI baccoM ko KuSa kara xiyA
(defrule buck2
(declare (salience 4800))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suXAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buck.clp	buck2  "  ?id "  " ?id1 "  suXAra_kara  )" crlf))
)

;Buck up your behaviour or you'll be out of this school.
;vyavahAra meM suXAra lAo nahIM wo skUla se bAhara ho jAoge
(defrule buck3
(declare (salience 4700))
(id-root ?id buck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buck.clp 	buck3   "  ?id "  hiraNa )" crlf))
)

;default_sense && category=noun	mqga/hirana	0
;"buck","N","1.mqga/hirana"
;I saw three wild bucks in the bushes.
;
;