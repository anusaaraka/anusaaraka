;@@@ Added by Anita  8.3.2014 
;Ready in debate, prompt and firm in giving decisions, he has, I believe, been a most expert chairman at meetings. --[By mail]
;मैंने सुना है कि विवाद में निपुण, फैसले करने में चुस्त और दृढ़ होने के कारण वे बैठकों में सबसे अधिक कुशल अध्यक्ष रहे हैं।
(defrule ready3
(declare (salience 5000))
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 firm) 
(id-root ?id2 debate) 
(viSeRya-in_saMbanXI  ?id ?id1) 
(viSeRya-in_saMbanXI ?id ?id2) 
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready3   "  ?id "  wEyAra )" crlf))
)


;@@@ Added by Anita--14.3.2014
;The dimensional formulae of a large number and wide variety of physical quantities derived from the ;equations representing the relationships among other physical quantities and expressed in terms of ;base quantities are given in Appendix 9 for your guidance and ready reference.
(defrule ready2
(declare (salience 5100))
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ? $? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAwkAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready2   "  ?id "  wAwkAlika )" crlf))
)
;------------------------ Default rules ---------------------
(defrule ready0
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready0   "  ?id "  wEyAra )" crlf))
)

(defrule ready1
(id-root ?id ready)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ready.clp 	ready1   "  ?id "  prApwa_Xana )" crlf))
)

;"ready","N","1.prApwa_Xana"
;She is not having enough of the ready.   
;--"2.kAma_me_lAne_ke_liye_wEyAra"    
;The watchman keeps his spear && torch ready to hand.

