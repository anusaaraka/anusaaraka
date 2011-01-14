




;FILE ADDED BY MEENA(19.10.09)
;Added by Meena(19.10.09)
;People were fanning themselves in the hall.
;He fanned himself with a newspaper to cool down.
;A warm breeze fanned her cheeks.
(defrule fan0
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panKA_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan0    "  ?id "  panKA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fan.clp      fan0   "  ?id " ko )" crlf)
)
)



;Added by Meena(19.10.09)
;His reluctance to answer her questions simply fanned her curiosity.
(defrule fan1
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 curiosity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan1    "  ?id "  uwwejiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fan.clp      fan1   "  ?id " ko )" crlf)
)
)



;Added by Meena(19.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule fan2
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaDakAyA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan2    "  ?id "  BaDakAyA_jA )" crlf))
)





;Added by Meena(19.10.09)
;Please turn off the fan.
(defrule fan3
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan3    "  ?id "  panKA )" crlf))
)





;Added by Meena(19.10.09)
;He is a great fan of Lata Mangeshkar . 
(defrule fan4
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
;(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan4    "  ?id "  praSaMsaka )" crlf))
)








