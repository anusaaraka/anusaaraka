
(defrule lump0
(declare (salience 5000))
(id-root ?id lump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ekawriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lump.clp	lump0  "  ?id "  " ?id1 "  ekawriwa_kara  )" crlf))
)

;All the children are lumped together in one class.
; saBI baccoM ko eka hI kakRA meM ekawriwa kara xiyA gayA hE
(defrule lump1
(declare (salience 4900))
(id-root ?id lump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lump.clp 	lump1   "  ?id "  DelA )" crlf))
)

(defrule lump2
(declare (salience 4800))
(id-root ?id lump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lump.clp 	lump2   "  ?id "  Dera_lagA )" crlf))
)

;"lump","VT","1.Dera_lagAnA"
;Lump together all the applicants
;
;