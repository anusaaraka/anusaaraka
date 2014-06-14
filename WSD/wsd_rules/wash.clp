
(defrule wash0
(declare (salience 5000))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id washing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XulAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wash.clp  	wash0   "  ?id "  XulAI )" crlf))
)

;"washing","N","1.XulAI"
;Hang the washing on the rope
;
;
(defrule wash1
(declare (salience 4900))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xo_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wash.clp wash1 " ?id "  Xo_dAla )" crlf)) 
)

(defrule wash2
(declare (salience 4800))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash2  "  ?id "  " ?id1 "  Xo_dAla  )" crlf))
)

(defrule wash3
(declare (salience 4700))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xo_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wash.clp wash3 " ?id "  Xo_xe )" crlf)) 
)

(defrule wash4
(declare (salience 4600))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash4  "  ?id "  " ?id1 "  Xo_xe  )" crlf))
)

(defrule wash5
(declare (salience 4500))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mitA_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " wash.clp wash5 " ?id "  mitA_xe )" crlf)) 
)

(defrule wash6
(declare (salience 4400))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mitA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash6  "  ?id "  " ?id1 "  mitA_xe  )" crlf))
)

;Added by human
(defrule wash7
(declare (salience 4300))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XonA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wash.clp 	wash7   "  ?id "  XonA )" crlf))
)

;"wash","VTI","1.XonA"
;You wash the clothes
(defrule wash8
;(declare (salience 4200)) ;Salience reduced by Roja(11-01-14)
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wash.clp 	wash8   "  ?id "  Xo )" crlf))
)

;Added by sheetal(29-12-2009).
;The whole village was washed away by the floods .
(defrule wash9
(declare (salience 4200))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-by_saMbanXI  ?id ?id2) ;$$$ Added this relation by Roja(11-01-14) for the same example (as connection b/w wash and flood was missing)
(id-root ?id2 flood)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  wash.clp      wash9   "  ?id "  "?id1" bahA_xe )" crlf))
)

;@@@ Added by Anita-9.1.2014
;It was a dark and rainy night, he had no light, the rain washed away the pug-marks yet he is certain ;that it was a leopard. [by mail]
;उस रात घना अंधेरा था और बरसात हो रही थी, उसके पास कोई लालटेन नहीं थी, बरसात ने पंजे के निशान मिटा दिए थे फिर भी उसे ;विश्वास है कि उसने चीता देखा था ।
(defrule wash10
(declare (salience 4100))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mitA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash10  "  ?id "  " ?id1 "  mitA_xe  )" crlf))
)

;@@@ Added by Anita-30.1.2014
;The rain water had washed them away. [By mail sentence]
;बारिश का पानी उनको दूर बहा ले गया था ।
(defrule wash11
(declare (salience 4200))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 water)
(id-word ?id2 rain)
(kriyA-subject  ?id ?id1)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wash.clp	wash11  "  ?id "   bahA_le_jA  )" crlf))
)
