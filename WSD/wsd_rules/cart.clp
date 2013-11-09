
(defrule cart0
(declare (salience 5000))
(id-root ?id cart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aBaxrawApUrvaka_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cart.clp	cart0  "  ?id "  " ?id1 "  aBaxrawApUrvaka_le_jA  )" crlf))
)

;They carted him off to the jail.
;ve use aBaxrawApUrvaka jela meM le gae
(defrule cart1
(declare (salience 4900))
(id-root ?id cart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_nikAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cart.clp cart1 " ?id "  sAmAna_nikAla )" crlf)) 
)

(defrule cart2
(declare (salience 4800))
(id-root ?id cart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAmAna_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cart.clp	cart2  "  ?id "  " ?id1 "  sAmAna_nikAla  )" crlf))
)

(defrule cart3
(declare (salience 4700))
(id-root ?id cart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cart.clp 	cart3   "  ?id "  gAdZI )" crlf))
)

;default_sense && category=noun	CakadZA_gAdZI/gAdZI	0
;"cart","N","1.CakadZA_gAdZI/gAdZI"
;He used a handcart to carry the rocks away
;
;