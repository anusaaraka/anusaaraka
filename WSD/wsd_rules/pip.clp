
(defrule pip0
(declare (salience 5000))
(id-root ?id pip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pip.clp 	pip0   "  ?id "  bIja )" crlf))
)

;"pip","N","1.bIja"
;Ravi found some pips of grapes on the ground.
;--"2.Xvani_saMkewa"
;I got up in the morning with help of pip.
;
(defrule pip1
(declare (salience 4900))
(id-root ?id pip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najZaxIkI_se_harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pip.clp 	pip1   "  ?id "  najZaxIkI_se_harA )" crlf))
)

;"pip","V","1.najZaxIkI_se_harAnA"
;We were piped by the other team in the volley ball game && we missed the champion-ship.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 18-2-2014
;The news will follow the pips at six o'clock. [oald]
;समाचार ध्वनि संकेत के बाद छः बजे शुरू होंगे .
(defrule pip2
(declare (salience 5200))
(id-root ?id pip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 follow|chase)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xvani_saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pip.clp 	pip2   "  ?id "  Xvani_saMkewa )" crlf))
)
