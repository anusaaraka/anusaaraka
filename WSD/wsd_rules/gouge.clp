
(defrule gouge0
(declare (salience 5000))
(id-root ?id gouge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_karake_nikAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " gouge.clp gouge0 " ?id "  Cexa_karake_nikAla )" crlf)) 
)

(defrule gouge1
(declare (salience 4900))
(id-root ?id gouge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cexa_karake_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gouge.clp	gouge1  "  ?id "  " ?id1 "  Cexa_karake_nikAla  )" crlf))
)

(defrule gouge2
(declare (salience 4800))
(id-root ?id gouge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gouged )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Cexa_karake_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gouge.clp  	gouge2   "  ?id "  Cexa_karake_nikAla )" crlf))
)

(defrule gouge3
(declare (salience 4700))
(id-root ?id gouge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_karanA_kA_yaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gouge.clp 	gouge3   "  ?id "  Cexa_karanA_kA_yaMwra )" crlf))
)

;"gouge","N","1.Cexa_karanA_kA_yaMwra"
;Holes on the were made with a gouge.
;
(defrule gouge4
(declare (salience 4600))
(id-root ?id gouge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gola_baramA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gouge.clp 	gouge4   "  ?id "  gola_baramA )" crlf))
)

;"gouge","V","1.gola_baramAnA"
;Holes were gouged on the wall.
;
