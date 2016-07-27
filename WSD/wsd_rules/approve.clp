

;Added by Meena(2.03.10)
;She said she did not approve of my behavior .
(defrule approve0
(declare (salience 5000))
(id-root ?id approve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "   approve.clp     approve0   "  ?id "  pasaMxa_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)15-jan-2014
;The committee unanimously approved the plan.[oald]
;समिति ने सर्वसम्मति से योजना को स्वीकृति दी . 
(defrule approve2
(declare (salience 5000))
(id-root ?id approve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "   approve.clp     approve2   "  ?id "  svIkqwi_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  approve.clp      approve2   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)15-jan-2014
;The auditors approved the company's accounts.[oald]
;लेखा परीक्षकों ने कंपनी के खातों को पारित किया.
(defrule approve3
(declare (salience 5010))
(id-root ?id approve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj account)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "   approve.clp     approve3   "  ?id "  pAriwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  approve.clp      approve3   "  ?id " ko )" crlf)
)
)


;*******************DEFAULT RULES********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)15-jan-2014
;I told my mother I wanted to leave school but she didn't approve.[oald]
;मैंने मेरी माँ को बताया कि मैं विद्यालय छोड़ना चाहता हूँ परन्तु उन्होने स्वीकृति नहीं दी . 
(defrule approve1
(declare (salience 0))
(id-root ?id approve)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "   approve.clp     approve1   "  ?id "  svIkqwi_xe )" crlf))
)
