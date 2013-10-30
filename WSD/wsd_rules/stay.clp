
(defrule stay0
(declare (salience 5000))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAge_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stay.clp	stay0  "  ?id "  " ?id1 "  jAge_raha  )" crlf))
)

(defrule stay1
(declare (salience 4900))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAge_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stay.clp	stay1  "  ?id "  " ?id1 "  jAge_raha  )" crlf))
)

;The trial was stayed and then the adoption was dismissed.
;I would make sure my baby stayed home and i talked to her.
;In the evenings she stayed home with us. 
;Interest rates have stayed low through these deficits.
;Added by Abhinav gupta,IIT BHU
(defrule stay3
(declare (salience 4850))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat ?id verb_past_participle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stay.clp 	stay3   "  ?id "  ruka )" crlf))
)

(defrule stay2
(declare (salience 4800))
(id-root ?id stay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stay.clp 	stay2   "  ?id "  raha )" crlf))
)

;default_sense && category=verb	raha	0
;"stay","V","1.rahanA"
;You have to stay in that cottage to save your life.
;
;
