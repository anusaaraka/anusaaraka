
(defrule torture0
(declare (salience 5000))
(id-root ?id torture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpIdana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torture.clp 	torture0   "  ?id "  uwpIdana )" crlf))
)

;"torture","N","1.uwpIdana"
;The torture was unaccountable for the jews  .
;
(defrule torture1
(declare (salience 4900))
(id-root ?id torture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_kaRta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torture.clp 	torture1   "  ?id "  awi_kaRta_xe )" crlf))
)

;"torture","VT","1.awi_kaRta_xenA"
;The innocents were tortured by the jailor.
;
