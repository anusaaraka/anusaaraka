
(defrule please0
(declare (salience 5000))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please0   "  ?id "  kqpayA )" crlf))
)

(defrule please1
(declare (salience 4900))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please1   "  ?id "  kqpayA )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 2013
; Now turn the page, please, and start work on exercise 2.p.
;अब कृपया, पृष्ठ पलटिए और अभ्यास 2.p पर काम करिये . 
(defrule please2
(declare (salience 4800))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please2   "  ?id "  kqpayA )" crlf))
)

;Added by Aditya and Hardik(20-06-2013),IIT(BHU) batch 2012-2017.
;can you call again later please.
(defrule please3
(declare (salience 4850))
(id-last_word ?id please)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please3   "  ?id "  kqpayA )" crlf))
)




;@@@Added by Sonam Gupta MTech IT Banasthali 2013
(defrule please4
(declare (salience 4890))
(id-last_word ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please4   "  ?id "  kqpayA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;I will go and beg if it pleases you. [Gyannidhi]
;अगर तुम खुश होती हो तो मैं भीख मॉँगने भी चला जाऊँगा।
(defrule please5
(declare (salience 4890))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pleases)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KuSa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please5   "  ?id "  KuSa_ho )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;We are pleased to announce that all five candidates were successful.  [OALD]
;हम घोषणा करने में खुशी हो रही है कि सभी पाँच उम्मीदवार सफल थे . 
(defrule please6
(declare (salience 5090))
(id-root ?id please)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pleased)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KuSI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  please.clp 	please6   "  ?id "  KuSI_ho )" crlf))
)
