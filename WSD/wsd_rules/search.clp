
(defrule search0
(declare (salience 5000))
(id-root ?id search)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  search.clp 	search0   "  ?id "  walASa )" crlf))
)

;"search","N","1.walASa/Koja"
;A search for the culprit was made by police.
;
(defrule search1
(declare (salience 4900))
(id-root ?id search)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  search.clp 	search1   "  ?id "  walASa_kara )" crlf))
)

;"search","V","1.walASa_kara"
;--"2.walASa_karanA"
;I was searching for the encyclopedia in the library.
;
