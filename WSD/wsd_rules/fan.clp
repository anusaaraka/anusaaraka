
;$$$ Modified by Krithika 17/12/2013
;Added cat_coarse
;Added by Meena(19.10.09)
;His reluctance to answer her questions simply fanned her curiosity.
(defrule fan1
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 curiosity)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan1    "  ?id "  uwwejiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fan.clp      fan1   "  ?id " ko )" crlf))
)


;$$$ Modified by Krithika 17/12/2013
;Added cat_coarse
;Added by Meena(19.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule fan2
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaDakAyA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan2    "  ?id "  BaDakAyA_jA )" crlf))
)




;$$$ Modified by Krithika 17/12/2013
;Added relations (kriyA-object ? ?id), (kriyA-subject  ? ?id) and cat_course
;Added by Meena(19.10.09)
;Please turn off the fan.
(defrule fan3
(declare (salience 3000))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ? ?id) (kriyA-subject  ? ?id) (viSeRya-det_viSeRaNa ?id ? ))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan3    "  ?id "  panKA )" crlf))
)


;$$$ Modified by Krithika 2/22/2013 
;Added relation (samAsa_viSeRya-samAsa_viSeRaNa  ?id ?),  (subject-subject_samAnAXikaraNa  ?id ?) (subject-subject_samAnAXikaraNa  ? ?id) 
;The team won and the fans went mad.
;tIma jIwI Ora praSaMsaka pAgala ho gaye.
;More than 15,000 Liverpool fans attended Saturday's game. 
;15,000 se aXika livarapUla ke praSaMsaka SanivAra ke Kela meM upasWiwa hue.
;Added by Meena(19.10.09)
(defrule fan4
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(or (subject-subject_samAnAXikaraNa  ?id ?) (subject-subject_samAnAXikaraNa  ? ?id) (samAsa_viSeRya-samAsa_viSeRaNa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan4    "  ?id "  praSaMsaka )" crlf))
)

;__________________________________________________________________
;@@@ Added by Krithika 17/12/2013
;The police fanned out to surround the house. 
;pulIsa ne Gara ke cAroM_ora_se Gerane ke liye PElAyA.
(defrule fan5
(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)	
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  fan.clp      fan5   "  ?id "  "?id1"  PElA )" crlf))
)

;################### Default Rules ####################
;@@@ Added by Krithika 17/12/2013
;The team won and the fans went mad.
;tIma jIwI Ora praSaMsaka pAgala ho gaye.
(defrule fan6
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)	
(assert (id-wsd_root_mng ?id praSaMsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan6    "  ?id "  praSaMsaka )" crlf))
)
;_________________________________________________________________________________

;$$$ Modified by Krithika 17/12/2013
;Added cat_coarse, removed (kriyA-object) relation
;FILE ADDED BY MEENA(19.10.09)
;Added by Meena(19.10.09)
;People were fanning themselves in the hall.
;He fanned himself with a newspaper to cool down.
;A warm breeze fanned her cheeks.
(defrule fan0
;(declare (salience 3900))
(id-root ?id fan)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id panKA_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fan.clp      fan0    "  ?id "  panKA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fan.clp      fan0   "  ?id " ko )" crlf))
)

;################### Additional Examples ####################
;She is a big fan of Madonna.
;Crowds of football fans gathered around the television.
;The team won , the fans went mad.
;The team won and the fans went mad.
;The fans went mad when the team won.
;He is a great fan of Lata Mangeshkar . 
;He is a big fan of music.
;I've always been a fan of hip-hop, and I went to see a show in 1998. 
;He is a great fan of Lata Mangeshkar. 

;Powerful electric fans rotated rapidly at the end of each trough.
;Rajvir too was an ardent fan of detective stories, but at the moment he was keener on looking at the beautiful scenery.
;The bird fanned out its tail feathers.
