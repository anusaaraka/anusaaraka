
(defrule house0
(declare (salience 5000))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id housing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  house.clp  	house0   "  ?id "  Gara )" crlf))
)

;"housing","N","1.Gara"
;gqha nirmANa maNdala'housing'(Gara) AsAna kiSwoM para AvaNtiwa karawI hE.
;
(defrule house1
(declare (salience 4900))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house1   "  ?id "  saMsaxa )" crlf))
)

;In case of capital words, POS tagger gives the lable prop_noun
;The bill was approved by the House.
(defrule house2
(declare (salience 4800))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house2   "  ?id "  Gara )" crlf))
)

(defrule house3
(declare (salience 4700))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GarameM_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house3   "  ?id "  GarameM_TaharA )" crlf))
)

;"house","V","1.GarameM TaharAnA"
;kaI logOM ne beGarabAra BUkampa pIdZiwoM ko apane'house'(GarameM TaharAyA.)
;
;
