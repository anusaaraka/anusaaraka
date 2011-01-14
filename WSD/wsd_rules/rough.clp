
(defrule rough0
(declare (salience 5000))
(id-root ?id rough)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rough.clp 	rough0   "  ?id "   - )" crlf)))

(defrule rough1
(declare (salience 4900))
(id-root ?id rough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_saha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rough.clp 	rough1   "  ?id "  kaTinAI_saha )" crlf))
)

;"rough","VT","1.kaTinAI_sahanA"
;You may have to rough it a little more if you come to stay in the hostel.
;
;
