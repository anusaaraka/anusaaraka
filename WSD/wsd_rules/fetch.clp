; @@@ Added by Krithika 22/1/2014
;  I fetched him a smart blow on the ear!   [Cambridge]
; मैंने उसके कान पर एक जोर का चाटा लगाया (जड़ा, मारा )
(defrule fetch2
(declare (salience 4800))
(id-root ?id fetch)
(id-word ?id fetched)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-cat_coarse ?id2 PropN|pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch2   "  ?id "  lagA)" crlf))
)
;______________________________________________________________
; Added by Krithika 22/1/2014
;  It fetched him a clip round the ear.   [IITB]
;(defrule fetch2.1
;(declare (salience 4900))
;(id-root ?id fetch)
;(id-word ?id fetched)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject  ?id ?id2)
;(id-root ?id2 it)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id laga ))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch2.1   "  ?id "  laga)" crlf))
;)
;______________________________________________________________
; @@@ Added by Krithika 22/1/2014
;  And then, a few years later, he somehow fetched up in Rome. [OALD]
; और फिर कुछ वर्षो के बाद ,वह किसी तरह रोम पहुंच गया .
(defrule fetch3
(declare (salience 4900))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  fetch.clp 	fetch3   "  ?id "  "?id1"   pahuzca)" crlf))
)
;______________________________________________________________
; @@@ Added by Krithika 22/1/2014
;  The painting is expected to fetch $10000 at auction. [OALD]
; नीलामी में पेन्टिंग का १०००० डालर के दाम में बिकने कि उम्मीद है
(defrule fetch4
(declare (salience 4900))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id) 
(id-root ?id1 expect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAma_para_bika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch4   "  ?id "  xAma_para_bika)" crlf))
)
;______________________________________________________________
; @@@ Added by Krithika 22/1/2014
;  The house did not fetch as much as she was hoping it would.  [Cambridge]
;  घर के दाम उसे उतने नहीं मिले जितने मिलने कि वह आशा कर रही थी .
(defrule fetch5
(declare (salience 4600))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?id1 ?)
(kriyA-kriyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id   xAma_para_bika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch5   "  ?id "  xAma_para_bika)" crlf))
)
;______________________________________________________________
; @@@ Added by Krithika 22/1/2014
;  The paintings fetched over a million dollars.  [Cambridge]
; पेन्टिंग करीब एक मिलियन डालर के दाम में बिकी .
(defrule fetch6
(declare (salience 4600))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI  ?id ?)
(id-root ?id2 over)
;(kriyA-subject  ?id ?id1)
;(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id2 xAma_para_bika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch6   "  ?id "   "?id2" xAma_para_bika)" crlf))
)
;__________________________________________________________________________________
; @@@ Added by Krithika 12/02/2014
; If you throw the ball the dog will fetch it. 	[MW]
; yaxi Apa golA PeMkawe hEM wo kuwwA usako vApasa_le AegA.
(defrule fetch7
(declare (salience 4900))
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 dog)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_le_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp 	fetch7   "  ?id "  vApasa_le_A)" crlf))
)

;---------------Default rule ------------------------------------
; $$$ Modified by Krithika 22/1/2014
; Could you fetch me my bag?    [OALD]
; क्या तुम मेरा थैला ला दोगे ?
; Changed the meaning from jAkara_lA to le_A
(defrule fetch1
(id-root ?id fetch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetch.clp    fetch1   "  ?id "  le_A)" crlf))
)
;______________________________________________________________

; #################### To be handled##############################
; It fetched him a clip round the ear. 

;___________________________________________________________________________________
;"fetch","V","1.jAkara_lAnA"
;Please go && fetch some chairs.
;--"2.mUlya_prApwi"
;This house will fetch atleast Rs.1.million if sold.
;
;---------------- Removed rules -----------------
;fetch0  (by  Krithika 22/1/2014)
;	if word fetching and category is adjective then 'ArkaRaka'

