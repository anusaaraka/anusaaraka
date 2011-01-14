
(defrule market0
(declare (salience 5000))
(id-root ?id market)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id marketing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bikrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  market.clp  	market0   "  ?id "  bikrI )" crlf))
)

;given_word=marketing && word_category=noun	$vipaNana)

;"marketing","N","1.vipaNana"
;We should adopt high powered marketing strategies.
;
(defrule market1
(declare (salience 4900))
(id-root ?id market)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAjAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  market.clp 	market1   "  ?id "  bAjAra )" crlf))
)
; Hindi meaning "hAta" in this rule is changed as "bAjAra" because of the more familiarity by Sukhada. Date: 21/0309
;default_sense && category=noun	hAta	0
;"market","N","1.hAta"
;She has gone to the market to buy vegetables.
;
;
