
(defrule buy0
(declare (salience 5000))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarIxakara_mAla_ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buy.clp	buy0  "  ?id "  " ?id1 "  KarIxakara_mAla_ikatTA_kara  )" crlf))
)

;Buy in some sweets Diwali.
;xIvAlI ke lie kuCa miTAiyAz KarIxakara ikatTI kara lo
(defrule buy1
(declare (salience 4900))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_KarIxa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " buy.clp buy1 " ?id "  Pira_se_KarIxa )" crlf)) 
)

(defrule buy2
(declare (salience 4800))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pira_se_KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buy.clp	buy2  "  ?id "  " ?id1 "  Pira_se_KarIxa  )" crlf))
)

(defrule buy3
(declare (salience 3900)) ;Salience reduced from 4700 to 3900 by Roja 08-11-13. Ex: Phil gave me a sweater which he bought in Paris. (Note: this rule need to be improved)
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa_le));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " buy.clp buy3 " ?id "  KarIxa_le )" crlf)) 
)

(defrule buy4
(declare (salience 4600))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarIxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buy.clp	buy4  "  ?id "  " ?id1 "  KarIxa_le  )" crlf))
)

(defrule buy5
(declare (salience 4500))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " buy.clp buy5 " ?id "  KarIxa_dAla )" crlf)) 
)

(defrule buy6
(declare (salience 4400))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarIxa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buy.clp	buy6  "  ?id "  " ?id1 "  KarIxa_dAla  )" crlf))
)

(defrule buy7
(declare (salience 4300))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa_dAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " buy.clp buy7 " ?id "  KarIxa_dAla )" crlf)) 
)

(defrule buy8
(declare (salience 4200))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarIxa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buy.clp	buy8  "  ?id "  " ?id1 "  KarIxa_dAla  )" crlf))
)

(defrule buy9
(declare (salience 4100))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buy.clp 	buy9   "  ?id "  KarIxa )" crlf))
)

;"buy","N","1.KarIxa"
;The best buys of this winter are carrots && peas.
;
(defrule buy10
(declare (salience 4000))
(id-root ?id buy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarIxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buy.clp 	buy10   "  ?id "  KarIxa )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ke_liye))
)

;"buy","VT","1.KZarIxanA"
;I can't afford to buy expensive things.
;
