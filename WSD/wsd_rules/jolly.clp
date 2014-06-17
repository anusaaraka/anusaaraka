
(defrule jolly0
(declare (salience 5000))
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jolly.clp	jolly0  "  ?id "  " ?id1 "  KuSa_kara  )" crlf))
)

;She was very upset && din't want to go for party but we jollied her along by showing her funny pictures.
;vaha bahuwa xuKI WI Ora pArtI meM nahIM jAnA cAhawI WI lekina hamane use ajIba-ajIba ciwra xiKAkara KuSa kara xiyA

;@@@ Added by Prachi Rathore[30-1-14]
;I thought I'd jolly the room up with some colourful curtains.[cambridge]
;मैंने सोचा कि मैं कुछ रङ्ग-बिरङ्गा पर्दों के साथ कमरे को खुशनुमा बनाऊँगा . 
(defrule jolly2
(declare (salience 5000))
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSanumA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jolly.clp	jolly2  "  ?id "  " ?id1 "  KuSanumA_bana )" crlf))
)


;xxxxxxxxxxxxxxxxxxxxxxxxxxx Default rule xxxxxxxxxxxxxxxx
(defrule jolly1
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolly.clp 	jolly1   "  ?id "  mOjI )" crlf))
)

;"jolly","Adj","1.mOjI"
;She has a jolly nature.
;
;

;@@@ Added by Prachi Rathore[30-1-14]
;That's a jolly nice scarf you're wearing.[cambridge]
;वह एक अत्यंत अच्छा स्कार्फ है जिसे आप पहन रहे हैं . 
(defrule jolly3
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolly.clp 	jolly3   "  ?id "  awyaMwa )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;She didn't really want to go to the party, so we had to jolly her along a bit. [cambridge]
;वह वास्तव में पार्टी में  नहीं जाना  चाहती थी, इसलिए हमें  उसको थोडा सा  प्रोत्साहित करना पडा . 
(defrule jolly4
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolly.clp 	jolly4   "  ?id "  prowsAhiwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;He's one of those sad guys who gets his jollies from lurking in chat rooms. [oald]
;वह उन उदास आदमीयों में से एक है जिसे गपशप कमरों/चैट रूम में छिप कर बैठने से उसकी खुशी मिलती है .  
(defrule jolly5
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KuSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolly.clp 	jolly5   "  ?id "  KuSI )" crlf))
)
