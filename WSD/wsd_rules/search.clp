
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




;Added by Meena(29.8.11)
;She decided to search her biological mother. 
(defrule search1
(declare (salience 4900))
(id-root ?id search)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  search.clp    search1   "  ?id "  walASa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  search.clp      search1   "  ?id " ko )" crlf)
))




;Salience reduced by Meena(29.8.11)
(defrule search2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id search)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  search.clp 	search2   "  ?id "  walASa_kara )" crlf))
)

;"search","V","1.walASa_kara"
;--"2.walASa_karanA"
;I was searching for the encyclopedia in the library.
;
