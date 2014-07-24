
(defrule inside0
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) from)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMxara_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside0   "  ?id "  ke_aMxara_se )" crlf))
)

;$$$ Modified by Prachi Rathore
;Meaning changed from aByanwara to anxara 
;The door was locked from the inside.[oald]
;दरवाजा अन्दर से बंद था . 
(defrule inside1
(declare (salience 4900))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside1   "  ?id "  anxara  )" crlf))
)

;"inside","N","1.aByanwara"
;The inside of the temple was carved on marble.
;
(defrule inside2
(declare (salience 4800))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside2   "  ?id "  ke_anxara )" crlf))
)

;"inside","Prep","1.ke_anxara"
;Roman emperors had bath spas inside their palaces.
;

;@@@   ---Added by Prachi Rathore
;Sawana was[ inside], preparing to go somewhere.[gyan-nidhi]
;सावन अंदर था वह कहीं जाने की तैयारी में था।
(defrule inside3
(declare (salience 4800))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside3   "  ?id "  anxara )" crlf))
)

;@@@   ---Added by Prachi Rathore
;He was sentenced to three years inside. [oald]
;उसको  तीन वर्षों की जेल की सजा सुनाई गई थी. 
(defrule inside4
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 sentence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside4   "  ?id "  jela )" crlf))
)

;@@@   ---Added by Prachi Rathore
;He complained of a pain in his insides. [oald]
;उसने उसके पेट में दर्द की शिकायत की .
(defrule inside5
(declare (salience 5000))
(id-root ?id inside)
(id-word ?id1 insides)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id peta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-word_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside5   "  ?id "  peta )" crlf))
)

;@@@   ---Added by Prachi Rathore
;He tried to overtake on the inside. [oald]
;उसने किनारे से आगे निकलने का प्रयास किया . 
(defrule inside6
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?id1 ?id)
(id-root ?id1 overtake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside6   "  ?id "  kinArA )" crlf))
)

;@@@   ---Added by Prachi Rathore
;the inside pages of a newspaper[oald]
;समाचारपत्र के अन्दरुनी पृष्ठ . 
(defrule inside7
(declare (salience 4800))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxarunI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside7   "  ?id "  anxarunI )" crlf))
)

;@@@   ---Added by Prachi Rathore
;Any newspaper would pay big money to get the inside story on her marriage.[oald]
;कोई भी समाचारपत्र उसकी शादी की गुप्त कहानी प्राप्त करने के लिये बहुत पैसा दे देगा . 
(defrule inside8
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 story|job|information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gupwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside8   "  ?id "  gupwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_inside8
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 story|job|information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gupwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " inside.clp   sub_samA_inside8   "   ?id " gupwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_inside8
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 story|job|information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gupwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " inside.clp   obj_samA_inside8   "   ?id " gupwa )" crlf))
)
