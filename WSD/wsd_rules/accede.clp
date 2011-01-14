
(defrule accede0
(declare (salience 5000))
(id-root ?id accede)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " accede.clp	accede0  "  ?id "  " ?id1 "  mAna_le  )" crlf))
)

;He acceded to my proposal.
;usane merA praswAva mAna liyA hE
(defrule accede1
(declare (salience 4900))
(id-root ?id accede)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accede.clp 	accede1   "  ?id "  svIkAra_kara )" crlf))
)

;"accede","VT","1.svIkAra_karanA"
;They will lightly accede to his request.
;
;