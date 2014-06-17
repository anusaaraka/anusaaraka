
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;Choose curtains that blend in with your decor.[oald]
;वह पर्दे चुनिये जो आपकी सजावट के साथ मेल खाते हैं
(defrule blend3
(declare (salience 3000))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 in)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mela_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blend.clp 	blend3  "  ?id "  " ?id1 "  mela_KA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;The thieves soon blended in with the crowd and got away.[oald]
;चोर जल्द ही भीड़ के साथ मिल गये और बच निकले
(defrule blend4
(declare (salience 3000))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 in)
(kriyA-subject  ?id ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blend.clp 	blend4  "  ?id "  " ?id1 "  mila_jA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;Beat the butter and sugar, then blend in the egg.[oald]
;मक्खन और चीनी को फेंटिये , उसके बाद अंडा मिलाइये.
(defrule blend5
(declare (salience 3500))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 in)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blend.clp 	blend5  "  ?id "  " ?id1 "  milA )" crlf))
)
;note: run the above exmple using parse5


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;He blended into the crowd.[oald]
;वह भीड़ में खो गया
(defrule blend6
(declare (salience 3000))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 crowd)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend6   "  ?id "  Ko )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;A blend of youth and experience.[oald]
;युवा और अनुभव का एक अच्छा संयोजन
(defrule blend7
(declare (salience 3000))
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-word ?id1 youth)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA_saMyojana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend7   "  ?id "  acCA_saMyojana )" crlf))
)
;**************************DEFAULT RULES*******************

(defrule blend0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend0   "  ?id "  miSraNa )" crlf))
)

;"blend","N","1.miSraNa/mela"
(defrule blend1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend1   "  ?id "  mila )" crlf))
)

;"blend","VI","1.milanA"
;This flavor will blend with those in your dish
;The colors blend well


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-03-2014
;Blend the nuts && raising together.[old example]
; सूखे मेवे और किशमिश को एक साथ मिलाओ.
(defrule blend2
(declare (salience 0)) ;salience reduced by Garima Singh
(id-root ?id blend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blend.clp 	blend2   "  ?id "  milA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  blend.clp 	blend2   "  ?id " ko )" crlf)
)
)

;"blend","VT","1.milAnA/miSraNa_karanA"

;*************************************EXAMPLES*****************

;A blend of youth and experience.
;Choose curtains that blend in with your decor.
;The thieves soon blended in with the crowd and got away.
;Beat the butter and sugar, then blend in the egg.
;He blended into the crowd.
;Blend the flour with the milk to make a smooth paste.
;Blend together the eggs, sugar and flour.
;Oil does not blend with water.
;Oil and water do not blend.
;The old and new buildings blend together perfectly.
;Their music blends traditional and modern styles.
