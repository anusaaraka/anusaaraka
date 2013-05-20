
(defrule satisfy0
(declare (salience 5000))
(id-root ?id satisfy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id satisfied )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwuRta_kara))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  satisfy.clp  	satisfy0   "  ?id "  saMwuRta_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  satisfy.clp    satisfy0   "  ?id " yA )" crlf))
)

(defrule satisfy1
(declare (salience 4900))
(id-root ?id satisfy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id satisfied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  satisfy.clp  	satisfy1   "  ?id "  saMwuRta )" crlf))
)

;"satisfied","Adj","1.saMwuRta"
;Labour is satisfied with their salary.
;
;
(defrule satisfy2
(declare (salience 4800))
(id-root ?id satisfy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwuRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  satisfy.clp 	satisfy2   "  ?id "  sanwuRta_kara )" crlf))
)

;"satisfy","V","1.sanwuRta_karanA"
;She wasn't satisfied by my explanation. 
;--"2.pUrA_karanA"
;She has satisfied the conditions for entry into the college.
;--"3.sanxeha_xUra_karanA"
;My assurances don't satisfy him, he's still sceptical?.
;


;Add by samapika (29.3.10)
;Labour is satisfied with their salary.
(defrule satisfy3
(declare (salience 4900))
(id-root ?id satisfy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id satisfied)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  satisfy.clp   satisfy3   "  ?id "  saMwuRta )" crlf))
)
