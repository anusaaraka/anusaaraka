
(defrule hear0
(declare (salience 5000))
(id-root ?id hear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hearing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sunavAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hear.clp  	hear0   "  ?id "  sunavAI )" crlf))
)

;given_word=hearing && word_category=noun	$SravaNa_Sakwi)

;"hearing","N","1.SravaNa_Sakwi"
;bama XamAke se usa bacce kI"hearing"(SravaNa Sakwi)calI gaI.
;--"2.sunavAI"
;He has gone to the court for the hearing of his case.






;Modified by Meena
;I heard a yelp from the hostel last night .
(defrule hear1
(declare (salience 4900))
(id-root ?id hear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suna))
;(assert (kriyA_id-object_viBakwi ?id ko))   ;commented by Meena(3.02.10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hear.clp 	hear1   "  ?id "  suna )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hear.clp      hear1   "  ?id " ko )" crlf)
)
)

;default_sense && category=verb	sunAI xe	0
;"hear","V","1.sunAI xenA"
;bahare manuRya ko"hear"nahIM xewA,(sunAI nahIM padZawA)
;
;
