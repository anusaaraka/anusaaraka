
(defrule concentrate0
(declare (salience 5000))
(id-root ?id concentrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAMxra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concentrate.clp 	concentrate0   "  ?id "  sAMxra )" crlf))
)

(defrule concentrate1
(declare (salience 4900))
(id-root ?id concentrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  concentrate.clp 	concentrate1   "  ?id "  XyAna_xe )" crlf))
)

;"concentrate","V","1.XyAna_xenA"
;Nowadays I can't concentrate in my studies.
;--"2.samAhqwa_karanA"
;These groups concentrate in the inner cities
;
;