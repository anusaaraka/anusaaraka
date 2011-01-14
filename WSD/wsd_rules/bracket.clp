
(defrule bracket0
(declare (salience 5000))
(id-root ?id bracket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koRTaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bracket.clp 	bracket0   "  ?id "  koRTaka )" crlf))
)

;"bracket","N","1.koRTaka/brEkata"
;Put the grammatical category in brackets after each entry.
;
(defrule bracket1
(declare (salience 4900))
(id-root ?id bracket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koRTa_meM_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bracket.clp 	bracket1   "  ?id "  koRTa_meM_banxa_kara )" crlf))
)

;"bracket","VT","1.koRTa_meM_banxa_karanA"
;Please bracket this remark
;
