
(defrule vein0
(declare (salience 5000))
(id-root ?id vein)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id veined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nAdImaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vein.clp  	vein0   "  ?id "  nAdImaya )" crlf))
)

;"veined","Adj","1.nAdImaya"
;The doctor took blood from the veined hand
;
(defrule vein1
(declare (salience 4900))
(id-root ?id vein)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vein.clp 	vein1   "  ?id "  SIrA )" crlf))
)

;default_sense && category=noun	SirA	0
;"vein","N","1.SirA"
;She had an injury in the vein
;The picture on the veins of the pipal leaf is wonderful 
;--"2.vyApwa_guNa"
;A vein of melancholy was noted in her song
;--"3.manoxaSA"
;The king && the vidushak had discussion in a lighter vein
;
;