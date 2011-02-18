
(defrule second0
(declare (salience 5000))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sekaMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second0   "  ?id "  sekaMxa )" crlf))
)

(defrule second1
(declare (salience 4900))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second1   "  ?id "  xUsarA )" crlf))
)

;"second","Adj","1.xUsarA/xviwIya"
;He stood second in his class.
;
(defrule second2
(declare (salience 4800))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
 (or (samAsa ?id1 ?id )( id-cat_coarse ?id determiner)) ; Added by sukhada Ex: Can we open a second browser window.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second2   "  ?id "  xUsarA )" crlf))
)

;"second","Det","1.xUsarA"
;She is his second wife.
;
(defrule second3
(declare (salience 4700))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second3   "  ?id "  kRaNa )" crlf))
)

;"second","N","1.kRaNa"
;There are sixty seconds in a minute.
;--"1.xviwIya_SreNI"
;I came to know that he has come second in B.A.
;
(defrule second4
(declare (salience 4600))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second4   "  ?id "  xUsarA )" crlf))
)

;"second","Pron","1.xUsarA"
;She is his second wife.
;
(defrule second5
(declare (salience 4500))
(id-root ?id second)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWana_karara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  second.clp 	second5   "  ?id "  samarWana_karara )" crlf))
)

;"second","V","1.samarWana_kararanA"
;She seconded the proposal of making the old man as the president.
;--"2.sahArA_xenA"
;I was ably seconded in this research by my son.
;--"3.sWAnAnwariwa_karanA"
;The police officer was seconded from a town to a district head quarters.
;
