;"shaven","Adj","1.muzdA huA"
;His clean shaven face looked better.
;
;
(defrule shave0
(declare (salience 5000))
(id-root ?id shave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Seva_kara_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " shave.clp shave0 " ?id "  Seva_kara_xe )" crlf)) 
)

(defrule shave1
(declare (salience 4900))
(id-root ?id shave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Seva_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shave.clp	shave1  "  ?id "  " ?id1 "  Seva_kara_xe  )" crlf))
)

(defrule shave2
(declare (salience 4800))
(id-root ?id shave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shaven )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muzdA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shave.clp  	shave2   "  ?id "  muzdA_huA )" crlf))
)

(defrule shave3
(declare (salience 4700))
(id-root ?id shave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzdana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shave.clp 	shave3   "  ?id "  muzdana )" crlf))
)

;"shave","N","1.muzdana"
;He had a shave before he came, that's why he was looking better.
;
(defrule shave4
(declare (salience 4600))
(id-root ?id shave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shave.clp 	shave4   "  ?id "  mUdZa )" crlf))
)

;"shave","V","1.mUdZanA"
;Due to his illness, he was not able to shave.
;--"2.CIlanA"
;He asked the carpenter to shave a millimetre of the bottom of the window.
;
