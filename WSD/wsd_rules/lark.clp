
(defrule lark0
(declare (salience 5000))
(id-root ?id lark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lark.clp	lark0  "  ?id "  " ?id1 "  Kela  )" crlf))
)

;Children were larking about in the park.
;bacce bagIce meM Kela rahe We
(defrule lark1
(declare (salience 4900))
(id-root ?id lark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_pakRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lark.clp 	lark1   "  ?id "  eka_pakRI )" crlf))
)

;"lark","N","1.eka pakRI"
;Larks clouded the sky.
;--"2.krIdA-kOwuka"
;We enjoyed the lark that day.
;
;
