;@@@   --- Added by Nandini(10-4-14)
;She carefully turned the leaves of the precious volume.[OALD]
;usane sAvaXAnI se mUlyavAna granWa ke panne palatAeM.
(defrule leaves0
(declare (salience 5000))
(id-word ?id leaves)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 turn)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaves.clp 	leaves0   "  ?id "  panne )" crlf))
)

;@@@   --- Added by Nandini(10-4-14)
;The leaves spread everywhere.
;pawwe sarvawra PEla gaye.
(defrule leaves1
(declare (salience 4000))
(id-word ?id leaves)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 spread)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaves.clp 	leaves1   "  ?id " pawwe )" crlf))
)


;@@@   --- Added by Nandini(10-4-14)
;The path was strewn with leaves.
(defrule leaves2
(declare (salience 3000))
(id-word ?id leaves)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaves.clp 	leaves2   "  ?id " pawwe )" crlf))
)