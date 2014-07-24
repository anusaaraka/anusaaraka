;She cashed in her shares to buy a car.
;usane apane SeyaroM ko kAra KarIxane ke lie pEsoM meM parivarwiwa kiyA
(defrule cash0
(declare (salience 5000))
(id-root ?id cash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pEse_meM_parivarwiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cash.clp	cash0  "  ?id "  " ?id1 "  pEse_meM_parivarwiwa_kara  )" crlf))
)


;(defrule cash1
;(declare (salience 4900))
;(id-root ?id cash)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id lABa_uTA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cash.clp cash1 " ?id "  lABa_uTA )" crlf)) 
;)

(defrule cash2
(declare (salience 4800))
(id-root ?id cash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cash.clp	cash2  "  ?id "  " ?id1 "  lABa_uTA  )" crlf))
)

(defrule cash3
(declare (salience 4700))
(id-root ?id cash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rokadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cash.clp 	cash3   "  ?id "  rokadZa )" crlf))
)

;"cash","N","1.rokadZa"
;Due to cards,one doesn't have to carry cash.
;
(defrule cash4
(declare (salience 4600))
(id-root ?id cash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rokadZa_meM_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cash.clp 	cash4   "  ?id "  rokadZa_meM_baxala )" crlf))
)

;@@@ Added by Preeti(11-4-14)
;The men broke into the office while staff were cashing up. [Oxford Advanced Learner's Dictionary]
; jaba karmacArI nakaxI_gina rahe We, AxamI xaPwara ke aMxara Guse.
(defrule cash5
(declare (salience 4800))
(id-root ?id cash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nakaxI_gina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cash.clp	cash5  "  ?id "  " ?id1 "  nakaxI_gina  )" crlf))
)


;"cash","V","1.rokadZa_meM_baxalanA"
;I have to go to the bank to cash a check.
;
