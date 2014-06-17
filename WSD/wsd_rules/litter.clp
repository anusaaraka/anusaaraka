
(defrule litter0
(declare (salience 5000))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUdA-karakata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter0   "  ?id "  kUdA-karakata )" crlf))
)

;"litter","N","1.kUdA-karakata"
;A lot of litter is piled up outside the locality.
;--"2.eka_sAWa_pExA_hue_bacce"
;A litter of pups.
;--"3.pAlakI"
;In some parts of the country even now litters are used for travelling.
;
(defrule litter1
(declare (salience 4900))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biKera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter1   "  ?id "  biKera )" crlf))
)

;"litter","V","1.biKeranA"
;All kinds of things are found littered on roads.
;

;@@@ Added by Nandini(22-1-14)
;Discarded food containers and bottles littered the streets.
;Discarded food containers littered the streets.
;Discarded bottles littered the streets.
(defrule litter2
(declare (salience 4950))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 bottle|container)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ganxA_ho_jA))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter2   "  ?id "  ganxA_ho_jA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  litter.clp  litter2   "  ?id " se )" crlf)
)


;@@@ Added by Nandini(3-5-14)
;In some parts of the country even now litters are used for travelling.[hinKoja]
;aBI BI  xeSa ke kuCa BAgoM meM saPara ke liye pAlakiyAz  upayoga meM lAyI jAwI hE.
(defrule litter3
(declare (salience 5000))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 use)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter3   "  ?id "  pAlakI )" crlf))
)

;@@@ Added by Nandini(3-5-14)
;I saw a litter of puppies. [OLAD]
;mEMne ekA sAWa janme bacchoM ko xeKA.  
(defrule litter4
(declare (salience 5000))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 puppy|cat|rat)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_sAWa_janme_bacce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter4   "  ?id "  eka_sAWa_janme_bacce )" crlf))
)

;@@@ Added by Nandini(3-5-14)
;Your essay is littered with spelling mistakes.[OLAD]
;ApakA nibaMXa varwanI galawiyoM se BarA huA hE.
(defrule litter5
(declare (salience 4900))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter5   "  ?id "  BarA_ho )" crlf))
)

;@@@ Added by Nandini(3-5-14)
;He was arrested for littering. [OLAD] 
;vaha ganxagI PElAne ke liye pakadA gayA WA.
(defrule litter6
(declare (salience 5050))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id1 ?id)
(id-root ?id1 arrest)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ganxagI_PElAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter6   "  ?id "  ganxagI_PElAnA )" crlf))
)

