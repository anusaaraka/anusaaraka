
(defrule incorporate0
(declare (salience 5000))
(id-root ?id incorporate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id incorporated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samAviRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  incorporate.clp  	incorporate0   "  ?id "  samAviRta )" crlf))
)

;"incorporated","Adj","1.samAviRta"
;
(defrule incorporate1
(declare (salience 4900))
(id-root ?id incorporate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  incorporate.clp 	incorporate1   "  ?id "  sammiliwa_kara )" crlf))
)

;"incorporate","V","1.sammiliwa karanA"
;Many of your suggestion have been incorporated.
;
;