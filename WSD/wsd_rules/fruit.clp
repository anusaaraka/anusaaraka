
(defrule fruit0
(declare (salience 5000))
(id-root ?id fruit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fruit.clp 	fruit0   "  ?id "  Pala )" crlf))
)

;"fruit","N","1.Pala"
;Fruits are good for health.
;--"2.bIja"
;Almond is a fruit.
;--"3.lABa"
;We must nurture the fruits of the earth.
;--"4.pariNAma"
;Susi enjoyed the fruits of her labour after getting her ph.D.
;
(defrule fruit1
(declare (salience 4900))
(id-root ?id fruit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fruit.clp 	fruit1   "  ?id "  Pala )" crlf))
)

;"fruit","V","1.PalanA"
;The mango trees have fruited well this year.
;
