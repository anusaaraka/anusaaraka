
(defrule elevate0
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id elevated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uccaswarIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  elevate.clp  	elevate0   "  ?id "  uccaswarIya )" crlf))
)

;"elevated","Adj","1.uccaswarIya"
;Spiritial thoughts lead to elevated mind.
;
(defrule elevate1
(declare (salience 4000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UcAz_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate1   "  ?id "  UcAz_uTA )" crlf))
)

;"elevate","VT","1.UcAz_uTAnA"
;The captain was elevated to the rank of a colonel.
;--"2.uTAnA{swara}"
;The teacher elevates the minds of the young students.
;
;

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;He was elevated to higher rank.   ;shiksharthi
;उसकी ऊँची रैंक में पदवृद्धि की गई. 
(defrule elevate2
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 rank)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxavqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate2   "  ?id "  paxavqxXi_kara)" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;He elevates his voice.              ;shiksharthi
;उसने अपनी आवाज ऊँची की.
(defrule elevate3
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate3   "  ?id "  UzcA_kara)" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;She did not even elevate her eyes to see me.    ;shiksharthi
;उसने मुझे देखने के लिए आँख तक नहीं उठाई.
(defrule elevate4
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate4   "  ?id "  uTA)" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;His elevate to the higher rank delighted me.    ;shiksharthi
;ऊँचे दर्जे पर उसकी तरक्की से मुझे प्रसन्नता हुई.
(defrule elevate5
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warakkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate5   "  ?id "  warakkI)" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;The cave was at an elevate of 300 meters above the sea-level.    ;shiksharthi
;गफा समुद्र-तल से 300 मीटर की ऊँचाई पर थी.
(defrule elevate6
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate6   "  ?id "  UzcAI)" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 28-02-2014
;The teacher elevates the minds of the young students.              ;by email
;शिक्षक युवा विद्यार्थियों के मन का विकास करता है .
(defrule elevate7
(declare (salience 5000))
(id-root ?id elevate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 mind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elevate.clp 	elevate7   "  ?id "  vikAsa_kara)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  elevate.clp 	elevate7  "?id " kA )" crlf))
)

