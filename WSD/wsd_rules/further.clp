

;Added by Meena(6.5.10)
;How much further you think we should drive tonight .
(defrule how_much_further
(declare (salience 5000))
(id-word ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) much)
(id-root =(- ?id 2) how)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2)  kiwanA_xura_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " further.clp how_much_further  "  ?id "  " (- ?id 1) " " (- ?id 2) "  kiwanA_xura_Ora  )" crlf)
)
)



(defrule further0
(declare (salience 5000))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_Age_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further0   "  ?id "  Ora_Age_kA )" crlf))
)

;"further","Adj","1.Ora_Age_kA"
;The military thought that further movement could be risky.
;
(defrule further1
(declare (salience 4900))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further1   "  ?id "  Ora_Age )" crlf))
)

;"further","Adv","1.Ora_Age"
;I want to hear his speech further.
;--"2.aXika_viswAra_se"
;He went further to explain the meaning.
;--"3.ke_alAvA"
;Further,it has come to my notice .
;
(defrule further2
(declare (salience 4800))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further2   "  ?id "  Age_baDZA )" crlf))
)

;"further","VT","1.Age_baDZAnA"
;Mahatma Gandhi furthered the cause of peace.
;
