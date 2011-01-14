
(defrule am0
(declare (salience 5000))
(id-root ?id am)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr:morning_before_midday)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xopahara_se_pahale_kA_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  am.clp 	am0   "  ?id "  xopahara_se_pahale_kA_samaya )" crlf))
)

;"am","Abbr:morning before midday","1.xopahara_se_pahale_kA_samaya"
;The programme begins at 9 a.m.
;
;first_word && given_word=Am && category=verb	$_hE{tam:hE})

;currently pos tagger fails on the sentence' Am I a fool?"
;For Am it assigns 'NNP' POS
(defrule am1
(declare (salience 4900))
(id-root ?id am)
?mng <-(meaning_to_be_decided ?id)
(id-word 1 ?id)
(id-word ?id Am)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kyA_hUz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  am.clp  	am1   "  ?id "  kyA_hUz )" crlf))
)



;Added by Meena(25.9.09)
;I am very well.
(defrule am2
(declare (salience 4800))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id am)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hUz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  am.clp        am2   "  ?id "  hUz )" crlf))
)




;Modified by Meena(6.3.10)
;Added by Meena(7.11.09)
;I am afraid you have completely misunderstood the question .
(defrule am3
(declare (salience 4800))
(id-root ?id be )
?mng <-(meaning_to_be_decided ?id)
(id-word ?id am)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
;(assert (kriyA_id-subject_viBakwi ?id ko))   ;by Meena(6.3.10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  am.clp        am3   "  ?id "  hE )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  am.clp      am3   "  ?id " ko )" crlf)
)
)



(defrule am4
(declare (salience 4800))
(id-root ?id am)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id modal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hUz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  am.clp 	am4   "  ?id "  hUz )" crlf))
)



;Salience reduced by Meena(7.11.09)
(defrule am5
(declare (salience -100))
(id-root ?id am)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hUz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  am.clp 	am5   "  ?id "  hUz )" crlf))
)

;"am","AuxV","1.hUz"
;I am a girl.

