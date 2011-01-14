
(defrule patch0
(declare (salience 5000))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " patch.clp	patch0  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

;They patched it up after a long discussion.
;lambI bahasa ke bAxa unhone (mAmalA) nipatA xiyA
(defrule patch1
(declare (salience 4900))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch1   "  ?id "  tukadZA )" crlf))
)

(defrule patch2
(declare (salience 4800))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch2   "  ?id "  jodZa )" crlf))
)

;"patch","V","1.jodZanA"
;They tried to patch the leaking roof.
;After their break up they patched up easily.	(figurative)
;
;
