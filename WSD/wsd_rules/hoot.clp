;@@@ Added by Prachi Rathore[6-2-14]
;Passing motorists hooted their horns.[oald]
;गुजरते हुये मोटर यात्रियों ने उनके भोंपू बजाए . 
(defrule hoot2
(declare (salience 5000))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 horn)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot2   "  ?id "  bajA )" crlf))
)

;@@@ Added by Prachi Rathore[6-2-14]
;They hooted the speaker.[shiksharthi-kosh]
;उन्होंने वक्ता को धतकारा.  
(defrule hoot3
(declare (salience 5000))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XawakAra))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot3   "  ?id "  XawakAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hoot.clp 	hoot3   "  ?id " ko )" crlf))
)

;@@@ Added by Prachi Rathore[6-2-14]
;Hoot of the owl.[shiksharthi-kosh]
;उल्लू की घू-घू . 
(defrule hoot4
(declare (salience 5500))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 owl)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GU-GU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot4   "  ?id "  GU-GU )" crlf))
)


;@@@ Added by Prachi Rathore[6-2-14]
;Hoot of people.[shiksharthi-kosh]
;लोगों की धतकार . 
(defrule hoot5
(declare (salience 5500))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XawakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot5   "  ?id "  XawakAra )" crlf))
)
;xxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxx
(defrule hoot0
(declare (salience 5000))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOragula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot0   "  ?id "  SOragula )" crlf))
)

;"hoot","N","1.SOragula"
;BIdZa ke BArI 'hoot'(Soragula) kI AvAja meM newAjI kA BARaNa samaJa nahIM padZA.
;
(defrule hoot1
(declare (salience 4900))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillAkara_BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot1   "  ?id "  cillAkara_BagA )" crlf))
)

;"hoot","V","1.cillAkara_BagAnA"
;bacce Apasa mEM JagadZa rahe We unako'hoot'(cillA kara BagA xiyA.)
;



