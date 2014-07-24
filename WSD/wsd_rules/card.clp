;@@@ Added by Preeti(26-12-13)
;Here is my card if you need to contact me again.[ Oxford Advanced Learner's Dictionary]
;yaha merA kArdza hE yaxi Apako Pira se muJe samparka_karane kI jarUrawa huI.
(defrule card0
(declare (salience 1050))
(id-root ?id card)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?) (viSeRya-RaRTI_viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  card.clp 	card0   "  ?id "  kArdZa )" crlf))
)

;@@@ Added by Preeti(20-2-14)
;Card payments. 
;kArda BugawAna.
;Card holders primary details. [http://sentence.yourdictionary.com]
;kArda XAraka ke prAWamika jAnakArI.
(defrule card2
(declare (salience 1050))
(id-root ?id card)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id) 
(id-root ?id1 transaction|fraud|holder|issuer|payment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  card.clp 	card2   "  ?id "  kArdZa )" crlf))
)

;#############################Defaults rule#######################################

;@@@ Added by Preeti(26-12-13)
;We spent the evening playing cards. [ Oxford Advanced Learner's Dictionary]
;hamane wASa Kelawe hue sanXyA biwAI .
(defrule card1
(declare (salience 1000))
(id-root ?id card)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  card.clp 	card1   "  ?id "  wASa )" crlf))
)
