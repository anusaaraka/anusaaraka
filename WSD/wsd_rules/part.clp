
(defrule part0
(declare (salience 5000))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id parting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alagAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  part.clp  	part0   "  ?id "  alagAI )" crlf))
)

;"parting","N","1.alagAI"
;I remember my parting from my parents when I was a child.
;
;
(defrule part1
(declare (salience 4900))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " part.clp	part1  "  ?id "  " ?id1 "  xe  )" crlf))
)

;She doesn't like parting with dresses.
;vaha (kisI ko) apane kapadZe xenA pasaMxa nahIM karawI hE
(defrule part2
(declare (salience 4800))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part2   "  ?id "  BAga )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;He played a prominent part in the campaign. [OALD]
;उसने अभियान में एक महत्वपूर्ण भूमिका निभाई .
(defrule part3
(declare (salience 5000))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 play|write)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUmikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part3   "  ?id "  BUmikA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;Aircraft parts. [Cambridge]
;वायुयान के पुर्जे .
(defrule part4
(declare (salience 4990))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 plane|aircraft|machine|mechinery|spare)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part4   "  ?id "  purjA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;Slowly her lips parted and she smiled. [Cambridge]
;धीरे से उसके होंठ खुले और वो मुस्कुराई .
(defrule part5
(declare (salience 4990))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 lip)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part5   "  ?id "  Kula )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;That summer, after six years of marriage, we parted. [Cambridge]
;उन गर्मियों में, छः वर्ष के विवाह के बाद, हम अलग हो गए .
(defrule part6
(declare (salience 4990))
(id-root ?id part)
(id-word ?id parted)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp 	part6   "  ?id "  alaga_ho )" crlf))
)

;--------------Default Rule ----------------
(defrule part7
(declare (salience 4700))
(id-root ?id part)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBakwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  part.clp     part7   "  ?id "  viBakwa_ho )" crlf))
)




;default_sense && category=verb	alaga_ho	
;"part","V","1.alagahonA"
;He was parted from his family after division.
;
;
