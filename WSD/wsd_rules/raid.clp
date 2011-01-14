
(defrule raid0
(declare (salience 5000))
(id-root ?id raid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raid.clp 	raid0   "  ?id "  XAvA )" crlf))
)

(defrule raid1
(declare (salience 4900))
(id-root ?id raid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raid.clp 	raid1   "  ?id "  CApA_mAra )" crlf))
)

;"raid","VT","1.CApA_mAranA"
;Custom officers raided the houses of many film stars.
;--"2.XAvA_bolanA"    
;The children have been raiding their room again.
;
;