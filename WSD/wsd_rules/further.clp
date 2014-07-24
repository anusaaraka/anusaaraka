

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
(declare (salience 4950))
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


;Added by Pramila(Banasthali University)
;"further","Adv","1.Ora_Age"
;I want to hear his speech further.
(defrule further1
(declare (salience 4900))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 want)
(kriyA-kriyArWa_kriyA ?id1 ?kri)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further1   "  ?id "  Ora_Age )" crlf))
)



;Added by Pramila(Banasthali University)
;Frozen star never shrinks further.
;The law was further developed by Newton.

(defrule further2
(declare (salience 4850))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further2   "  ?id "  Ora_aXika )" crlf))
)

;added by Pramila(Banasthali University)
;Further,we have seen the magnetism in this chapter.
;Further,it has come to my notice .
(defrule further3
(declare (salience 4870))
(id-root 1 further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse 1 adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 isake_alAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further3    1   isake_alAvA )" crlf))
)

;added by Pramila(Banasthali University)
;Further,we will study more about it.
(defrule further4
(declare (salience 4875))
(id-root 1 further)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 more)
(id-cat_coarse 1 adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 Ora_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further4    1   Ora_Age )" crlf))
)



(defrule further5
(declare (salience 4800))
(id-root ?id further)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  further.clp 	further5   "  ?id "  Age_baDZA )" crlf))
)

;"further","VT","1.Age_baDZAnA"
;Mahatma Gandhi furthered the cause of peace.
;





