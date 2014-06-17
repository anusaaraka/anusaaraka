;$$$ Modified by Anita--20.2.2014
;We must return them to their rightful owner, How can you do that? [by mail]
;हमें उनके असली मालिक को ये मोती लौटा देना चाहिए,आप ऐसा कैसे कर सकते हैं?
(defrule return0
(declare (salience 5000))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-object ?id ?);Commented by Anita
(kriyA-to_saMbanXI  ?id ?) ; Added by Anita
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return0   "  ?id "  lOtA )" crlf))
)

(defrule return1
(declare (salience 4900))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return1   "  ?id "  lOta )" crlf))
)

(defrule return2
(declare (salience 4800))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return2   "  ?id "  vApasI )" crlf))
)

;"return","N","1.vApasI"
;Her return journey was memorable.
;--"2.AnA-jAnA"
;He bought the ticket a weekend return.
;--"3.prawyaparNa"
;The deposit is refunded on return of the vehicle.
;Her return of service in T.T.was very accurate
;--"4.punarAvqwwi"
;Many happy returns of the day.
;--"5.lABa{pUzjI_yA_lAgawa_para}"
;Have you submitted your returns of income for the year? 
;--"6.binA_bikA_yA_bikane_yogya_sAmAna_kI_vApasI"
;Merchandise returned to a retailer by a consumer.
;--"7.lOtawI_dAka_se"
;Kindly reply by return of post.
;
(defrule return3
(declare (salience 4700))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return3   "  ?id "  lOtA )" crlf))
)

(defrule return4
(declare (salience 4600))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return4   "  ?id "  lOta )" crlf))
)

;"return","V","1.lOtanA[lOtAnA]"
(defrule return5
(declare (salience 4500))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return5   "  ?id "  lOta )" crlf))
)

;"return","VI","1.lOtanA"
;She returned home from an excursion trip.
;--"2.purAnI_sWiwi_meM_lOta_jAnA"
;He has returned to his old bad habits after his wife's death.
;
(defrule return6
(declare (salience 4400))
(id-root ?id return)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApisa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  return.clp 	return6   "  ?id "  vApisa_kara )" crlf))
)

;"return","VT","1.vApisa_karanA/lOtAnA"
;I hope you will return my book soon.
;She never returned me my books.
;Good men return good for evil.
;She could not return his affection.
;Only an expert could have returned that ball.
;--"2.vApasa_AnA"
;The train service has returned to normal.
;The money i gave him returns to me in the event of his death.
;--"3.vApasa_raKanA"
;After reading returned the book to the shelf.
;--"4.lABa_praxAna_karanA"
;Our joint venture returned a net saving of five thousand rupees.
;--"5.vApisa_xenA"
;She taunted him but he returned with a witty sally.
;
