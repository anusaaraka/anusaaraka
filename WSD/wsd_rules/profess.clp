
(defrule profess0
(declare (salience 5000))
(id-root ?id profess)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id professed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Awma_GoRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  profess.clp  	profess0   "  ?id "  Awma_GoRiwa )" crlf))
)

;"professed","Adj","1.Awma GoRiwa"
;His professed rights of property are not agreed.
;





;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He professes confidence in his friend. [MW]
;वह उसके मित्र में भरोसा दावा करता है . 
(defrule profess1
(declare (salience 4900))
(id-root ?id profess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 pronoun)
(kriyA-object  ?id ?id1)
(kriyA-subject  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profess.clp 	profess1   "  ?id "  xAvA_kara )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;To profess Islam. [OALD]
;इस्लाम को स्वीकार करना.
(defrule profess2
(declare (salience 4800))
(id-root ?id profess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profess.clp 	profess2   "  ?id "  svIkAra_kara )" crlf))
)


(defrule profess3
(declare (salience 4700))
(id-root ?id profess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profess.clp 	profess3   "  ?id "  xAvA_kara )" crlf))
)

;"profess","V","1.xAvA karanA"
;He professed himself as an intellectual.
;--"2.Kule Ama svIkAra karanA"
;She professed of being his mother.
;--"3.Xarma ko apanAnA"
;Professing christianity as a religion was considered as a crime during that period.
;
;
