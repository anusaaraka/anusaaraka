
(defrule jog0
(declare (salience 5000))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_XIre_xOda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog0   "  ?id "  XIre_XIre_xOda )" crlf))
)

(defrule jog1
(declare (salience 4900))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog1   "  ?id "  xOdZa )" crlf))
)

;"jog","N","1.xOdZa"
;I go for a jog in the park every morning.
;
;


;@@@ Added by Prachi Rathore[24-3-14]
;"How's your research going?" "Oh, it's jogging along." 
;आपका शोध "कैसे जा रहा है?" "आह", यह किसी तरह चल रहा है . 
(defrule jog2
(declare (salience 5100))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 along)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_waraha_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jog.clp 	jog2  "  ?id "  " ?id1 "  kisI_waraha_cala )" crlf))
)


;@@@ Added by Prachi Rathore[24-3-14]
;The horse and cart jogged down the rough track towards the farm. 
;घोडा और गाडी खेत की ओर ट्रैक से आगे बढे . 
(defrule jog3
(declare (salience 5100))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jog.clp 	jog3  "  ?id "  " ?id1 "  Age_baDa )" crlf))
)

;@@@ Added by Prachi Rathore[24-3-14]
;The police showed him a photo to try to jog his memory about what had happened on the night of the robbery.
;To jog his memory.[shiksharthi-kosh]
;उसकी याद्दाश्त जगाना
(defrule jog4
(declare (salience 5200))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(or(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id2 pronoun))
(id-root ?id1 memory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog4   "  ?id "  jagA )" crlf))
)


;@@@ Added by Prachi Rathore[24-3-14]
;Someone jogged her elbow, making her spill her coffee. [oald]
;किसी ने उसकी कुहनी पर धक्का मारा, जिससे  उसकी कॉफी छलक गयी . 
(defrule jog5
(declare (salience 5100))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(or(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id2 pronoun))
(id-root ?id1 elbow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog5   "  ?id "  XakkA_mAra )" crlf))
)


;@@@ Added by Prachi Rathore[24-3-14]
;To give a jog.[shiksharthi-kosh]
;धक्का देना . 
(defrule jog6
(declare (salience 5100))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 get|give)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog6   "  ?id "  XakkA )" crlf))
)

