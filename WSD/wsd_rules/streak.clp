;@@@ Added by jagriti(5.2.2014)
;Try to know his mental streak.[rajpal]
;उसकी मानसिक- प्रवॄत्ति जानने प्रयास कीजिए . 
;She has a streak of selfishness.[rajpal]
;उसमे स्वार्थपरता की प्रवॄत्ति है . 
(defrule streak0
(declare (salience 5000))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-viSeRaNa ?id ?id1))
(id-root ?id1 mental|selfishness|cruelty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravqwwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak0   "  ?id "  pravqwwi )" crlf))
)

;@@@ Added by jagriti(5.2.2014)
;Something happened like a streak of lightning.[rajpal]
;कुछ बिजली की चमक की तरह हुआ . 
(defrule streak1
(declare (salience 4900))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 lightning|light)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak1   "  ?id "  camaka )" crlf))
)

;@@@ Added by jagriti(5.2.2014)
;Runner streaked from the starting point.[rajpal]
;धावक ने शुरू करने के स्थान से तेज दौड लगायी . 
(defrule streak2
(declare (salience 4800))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 runner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_xOdZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak2   "  ?id "  weja_xOdZa_lagA )" crlf))
)
;----------------- Default rules-----------------------
;Mng modified from 'laMbI_va_pawalI_lakIra_yA_XArI' to 'laMbI-pawalI-XArI'. Suggested by Chaitanya Sir, Aditi Mam and Dipti Mam in discussions. (07-02-14)
(defrule streak3
(declare (salience 100))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbI-pawalI-XArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak3   "  ?id "  laMbI-pawalI-XArI )" crlf))
)

;"streak","N","1.laMbI_va_pawalI_lakIra_yA_XArI"
;Zebra has black streaks on its body.
;
(defrule streak4
(declare (salience 100))
(id-root ?id streak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAriyAz_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  streak.clp 	streak4   "  ?id "  XAriyAz_banA )" crlf))
)

;"streak","V","1.XAriyAz_banAnA"
;To get hair streaked in different colours has become a fashion now a days.
;
