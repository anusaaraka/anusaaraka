;@@@ Added by Anita 29-11-13 
;"Do you realize (that) this is the third time you've forgotten?" she said angrily.
;उसने गुस्से से (में) कहा – क्या तुम जानते हो कि यह तीसरी बार है जब तुम भूल गए ।
(defrule realize0
(declare (salience 15))
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realize.clp 	realize0   "?id "  jAna)" crlf))
)

;@@@ Added by Anita 29-11-13
;Lots of money, a luxury house, a fast car - Danny had realized all his ambitions ;by the age of 25.
;बहुत सारा पैसा ,बड़ा सा घर , कार –  इन सब अपनी महत्वकांक्षाओं को डेनी ने २५ वर्ष की आयु में ही साकार कर लिया था ।
(defrule realize1
(declare (salience 20))
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
;(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realize.clp 	realize1   "?id "  sAkAra_kara)" crlf))
)

;@@@ Added by Anita 29-11-13
;Ten years later her worst fears were realized.
;दस साल के बाद उसका बुरा सपना सत्य सिद्ध हुआ ।
(defrule realize2
(declare (salience 25))
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sixXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realize.clp 	realize2   "?id "  sixXa_ho)" crlf))
)

;@@@ Added by Anita 29-11-13
;The paintings are expected to realize £500,000 each.
;प्रत्येक पेंटिंग्स पॉउन्ड ५००,०००  तक में बिकने वाली है .
(defrule realize3
(declare (salience 30))
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realize.clp 	realize3   "?id "  bika)" crlf))
)

;#####################default rule################################
;@@@ Added by Anita 29-11-13
;They didn't realize the danger they were in.  [cambridge Dictionary]
;उन्हें अहसास नहीं हुआ कि वे कितने खतरे में थे ।
(defrule realize4
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ahasAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  realize.clp 	realize4   "?id "  ahasAsa_ho )" crlf))
)
