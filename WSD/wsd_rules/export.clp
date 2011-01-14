
(defrule export0
(declare (salience 5000))
(id-root ?id export)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niryAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  export.clp 	export0   "  ?id "  niryAwa )" crlf))
)

;"export","N","1.niryAwa"
;The government has banned the export of low quality goods.
;
(defrule export1
(declare (salience 4900))
(id-root ?id export)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niryAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  export.clp 	export1   "  ?id "  niryAwa_kara )" crlf))
)

;"export","VT","1.niryAwa_karanA"
;India exports many edible items to UAE.
;
