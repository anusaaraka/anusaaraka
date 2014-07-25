;$$$ modified by Pramila(BU) on 18-01-2014 [changed meaning from "dubA" to "dubAkara_mAra_xe"]
(defrule drown0
(declare (salience 4900))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubAkara_mAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown0   "  ?id "  dubAkara_mAra_xe )" crlf))
)

(defrule drown1
(declare (salience 4000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown1   "  ?id "  dUba )" crlf))
)

;"drown","V","1.dUbanA[dubAnA]"
;I was drowned in work
;She drowned her trouble in alcohol
;The child drowned in the lake
;He drowned the kittens
;

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The land was drowned by the river.       ;shiksharthi
;जमीन नदी से जलमग्न हो गई.
(defrule drown2
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 river)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalamagna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown2   "  ?id " jalamagna_ho  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;A whole valley was drowned when the river was dammed.          ;cald
;जब नदी अवरुद्ध हो गई तो पूरी घाटी जलमग्न हो गई. 
(defrule drown3
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id ?id1)
(kriyA-karma  ?id1 ?id2)
(id-root ?id2 river)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalamagna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown3   "  ?id "  jalamagna_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;She drowned her trouble in alcohol.            ;shiksharthi
;उसने शराब पीकर अपनी परेशानी भुला दी.
(defrule drown4
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 trouble|problem|sorrow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BulA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown4   "  ?id "  BulA_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;She turned up the radio to drown out the noise from next door.       ;oald
;उसने दूसरे मकान से आ रहे शोर को दबाने के लिए रेडियो चलाया.

(defrule drown5
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drown.clp	drown5  "  ?id "  " ?id1 "  xabA  )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The noise in the hall drowned his voice.       ;shiksharthi
;हॉल में शोर ने उसकी आवाज दबा दी.
(defrule drown6
(declare (salience 5000))
(id-root ?id drown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1))
(id-word ?id1 noise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drown.clp 	drown6   "  ?id "  xabA_xe )" crlf))
)

