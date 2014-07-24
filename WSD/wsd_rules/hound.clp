
(defrule hound0
(declare (salience 5000))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikArIkuwwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hound.clp 	hound0   "  ?id "  SikArIkuwwA )" crlf))
)

;"hound","N","1.SikArIkuwwA"
;KaragoSa kA SikAra'hound'(SikArI kuwwA)AsAnI se kara lewA hE.
;
(defrule hound1
(declare (salience 4900))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hound.clp 	hound1   "  ?id "  pICe_padZa )" crlf))
)

;"hound","V","1.pICe_padZanA"
;kAryAlaya aXIkRaka hAWa Xokara usake'hound'(pICe padZa gayA )hE.
;

;@@@ Added by Prachi Rathore[8-3-14]
;He claims he has been hounded from his job by jealous colleagues.[oald]
;वह दावा करता है वह ईर्ष्यालु सहकार्यकर्ता द्वारा उसके काम से निकाल दिया गया है . 
(defrule hound2
(declare (salience 5000))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hound.clp 	hound2   "  ?id "  nikAla_xe )" crlf))
)


;@@@ Added by Prachi Rathore[8-3-14]
;He claims he was hounded out of his job by a group of students who disapproved of his views.[cambridge]
;वह दावा करता है वह विद्यार्थियों के समूह द्वारा जिन्होंने उसके विचारों का अस्वीकार किया  उसके काम से निकाल दिया गया था 
(defrule hound3
(declare (salience 5000))
(id-root ?id hound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hound.clp	hound3  "  ?id "  " ?id1 "  nikAla_xe )" crlf))
)

