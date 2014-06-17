
(defrule side0
(declare (salience 5000))
(id-root ?id side)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id siding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bagalI_relapaWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  side.clp  	side0   "  ?id "  bagalI_relapaWa )" crlf))
)

;@@@ Added by jagriti(2.12.2013)
;The ingredients are listed on the side of the box. [cambridge dictionary]
;सामग्री बॉक्स की सतह पर सूचीबद्ध हैं.
(defrule side1
(declare (salience 4800))
(id-root ?id side)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-on_saMbanXI ? ?id)(viSeRya-saMKyA_viSeRaNa ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  side.clp 	side1   "  ?id "  sawaha )" crlf))
)


;"siding","N","1.bagalI relapaWa"
;
(defrule side2
(declare (salience 1))
(id-root ?id side)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waraPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  side.clp 	side2   "  ?id "  waraPZa )" crlf))
)

;"side","N","1.waraPZa"
;While driving both sides should be watched carefully to avoid accidents.
;--"2.bagZala"
;He was lying on his side.
;--"3.ora"
;All the friends were my side.
;--"4.kinArA"
;There was large crowd on the either side of the road.
;--"5.DZAla"
;All sides of mountains were covered with snow.
;--"6.Palaka"
;All the six sides of a cube are equal.
;--"7.BujA"
;There are four sides in a square.
;--"8.pakRa/xala"
;There are faults on both sides.
;--"9.pahalU"
;We must study all the side of a problem && then try to solve.
;-- "10. Baga/hissA"
;He lives on the farther side of the town.
;vaha Sahara ke xUra vAle Baga/hisse meM rahawA hE.


(defrule side3
(declare (salience 1))
(id-root ?id side)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_pakRa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  side.clp 	side3   "  ?id "  kA_pakRa_le )" crlf))
)

;"side","V","1.kA_pakRa_lenA/kA_samarWana_karanA"
;I always sides with my mother against my father.
;
