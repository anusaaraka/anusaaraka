
(defrule debate0
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate0   "  ?id "  bahasa )" crlf))
)

;"debate","N","1.bahasa/vAxa_vivAxa/vivAxa"
(defrule debate1
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxa_vivAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate1   "  ?id "  vAxa_vivAxa_kara )" crlf))
)

;"debate","VT","1.vAxa_vivAxa_karanA/bahasa_karanA"
;We debated the question of abortion
;

;@@@ Added by Pramila(BU) on 03-01-2014
;I debated in my mind.     ;shiksharthi
;मैंने अपने दिमाग में विचार किया.
(defrule debate2
(declare (salience 4900))
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id2)
(viSeRya-RaRTI_viSeRaNa  ?id2 ?id1)
(id-root ?id1 my|his|her|our|their)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate2   "  ?id "  vicAra_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 03-01-2014
;He is debating with himself whether to go or not.     ;shiksharthi
;वह स्वयं से सोच-विचार कर रहा है कि जाना है या नहीं.
(defrule debate3
(declare (salience 4900))
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 himself|herself|themselves|myself|ourselves)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca-vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate3   "  ?id "  soca-vicAra_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 01-02-2014
;Ready in debate, prompt and  firm  in giving decisions, he has, I believe, been a most expert chairman at meetings.     ;gyannidhi
;मैंने सुना है कि विवाद में निपुण, फैसले करने में चुस्त और चर्चा में हमेशा तैयार होने के कारण वे बैठकों में सबसे अधिक कुशल अध्यक्ष रहे हैं।
(defrule debate4
(declare (salience 5000))
(id-root ?id debate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debate.clp 	debate4   "  ?id "  carcA )" crlf))
)
