;@@@ Added by Krithika 11-11-2013
;He fastened his gaze on her face.  [ Oxford Advanced Learner's Dictionary]
;उसके चेहरे पर उसकी नजर डाली .
	
(defrule fasten_dAla
(declare (salience 11))
(id-root ?id fasten)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-object  ?id ?id1)
;(id-root ?id1 gaze)
(kriyA-on_saMbanXI  ? ?)

(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fasten.clp 	fasten_dAla   "  ?id "  dAla)" crlf))
)

;___________________________________________________________________

;@@@ Added by Krithika 11-11-2013
;I fastened the sticker to the windscreen.   [ Oxford Advanced Learner's Dictionary]
;मैंने स्टीकर को विंड स्क्रीन पर चिपका दिया .
	
(defrule fasten_cipakA_xe
(declare (salience 10))
(id-root ?id fasten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 sticker)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakA_xe))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fasten.clp 	fasten_cipakA_xe  "  ?id "  cipakA_xe )" crlf))
)
;____________________________________________________________________
;@@@ Added by Krithika 11-11-2013
;The dog fastened its teeth in his leg.   [ Oxford Advanced Learner's Dictionary]
;कुत्ते ने अपने दांत  उसकी  टांग में गड़ा दिए  .
	
(defrule fasten_gadA_xe
(declare (salience 10))
(id-root ?id fasten)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-in_saMbanXI  ?id ?id1) (kriyA-on_saMbanXI  ?id ?id1))
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadA_xe))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fasten.clp 	fasten_gadA_xe "  ?id "  gadA_xe)" crlf))
)
;_____________________________________________________________________
;@@@ Added by Krithika 11-11-2013
;He fastened back the shutters.   [ Oxford Advanced Learner's Dictionary]
;उसने शटर बंद कर दिए .
	
(defrule fasten_baMxa_kara_xe_1
(declare (salience 10))
(id-root ?id fasten)
(id-word ?id1 back)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng   ?id    ?id1    baMxa_kara_xe))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng     " ?*wsd_dir* "  fasten.clp 	fasten_baMxa_kara_xe_1     "  ?id "     "?id1"    baMxa_kara_xe )" crlf))
)
;_____________________________________________________________________
; @@@ Added by Krithika 11-11-2013
;He fastened up his coat and hurried out.    [ Oxford Advanced Learner's Dictionary]
;उसने अपना कोट पहना और जल्दी से बाहर चला गया .(या) वह अपना कोट पहन कर जल्दी से बाहर चला गया .	
(defrule fasten_pehana
(declare (salience 10))
(id-root ?id fasten)
(id-word ?id1 up)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng   ?id    ?id1    pehana))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng     " ?*wsd_dir* "  fasten.clp 	fasten_pehana     "  ?id "     "?id1"    pehana)" crlf))
)

;_____________________________________________________________________
; @@@ Added by Krithika 11-11-2013

;Fasten the gates securely so that they do not blow open.   [ Oxford Advanced Learner's Dictionary]
;दरवाजों को ठीक से बंद कर दो ताकि वे नहीं खुलें .

(defrule fasten_baMxa_kara_xe_2
(declare (salience 10))
(id-root ?id fasten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 lock|gate|door)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng   ?id   baMxa_kara_xe))
(if ?*debug_flag* then 
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng     " ?*wsd_dir* "  fasten.clp 	fasten_baMxa_kara_xe_2     "  ?id "      baMxa_kara_xe)" crlf))
)

;_________________________________________________________________

;#############################Default rules ####################################

; @@@ Added by Krithika 11-11-2013
;The shirt fastens at the back.
;कमीज पीछे से बंद है .
		
(defrule fasten_default
;(declare (salience 0))
(id-root ?id fasten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa))

(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fasten.clp 	fasten_default   "  ?id "  baMxa )" crlf))
)

;#############################Additional examples###############################

;baMxa

;Make sure your seat belt is securely fastened. 
;The window wouldn't fasten.
;He fastened the papers together with a paper clip.
;He found the door fastened and wondered who the fastener was.


;baMxa_kara_xe

;Fasten the lock onto the door.


;dAla
;His gaze fastened on the jewels.
;He fastened his gaze on the girl.
;She fastened her gaze on the stranger.
;His hand fastened on her arm.


