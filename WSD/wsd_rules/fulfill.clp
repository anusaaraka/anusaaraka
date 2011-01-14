
(defrule fulfill0
(declare (salience 5000))
(id-root ?id fulfill)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fulfilling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fulfill.clp  	fulfill0   "  ?id "  saMwuRta )" crlf))
)

;"fulfilling","Adj","1.saMwuRta"
;A fulfilling job gives satisfaction.
;
(defrule fulfill1
(declare (salience 4900))
(id-root ?id fulfill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fulfill.clp 	fulfill1   "  ?id "  pUrA_kara )" crlf))
)

;"fulfill","V","1.pUrA_karanA"
;He fulfilled his promise.
;--"2.apekRAez_pUrI_karanA"
;The student fulfilled the conditions of entry to a college.
;
;