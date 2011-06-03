
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



;Added by Meena(1.6.11)
;She was found crying in a patch of nettles.
(defrule patch1
(declare (salience 4900))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 nettle|vegetable|cabbage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BU_KaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp     patch1   "  ?id "  BU_KaMda )" crlf))
)


;Salience reduced by Meena(1.6.11)
;They patched it up after a long discussion.
;lambI bahasa ke bAxa unhone (mAmalA) nipatA xiyA
(defrule patch2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch2   "  ?id "  tukadZA )" crlf))
)



(defrule patch3
(declare (salience 4800))
(id-root ?id patch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patch.clp 	patch3   "  ?id "  jodZa )" crlf))
)

;"patch","V","1.jodZanA"
;They tried to patch the leaking roof.
;After their break up they patched up easily.	(figurative)
;
;
