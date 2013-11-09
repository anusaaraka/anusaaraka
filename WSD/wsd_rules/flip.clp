
(defrule flip0
(declare (salience 5000))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flipping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nApasaMxagI_xiKAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flip.clp  	flip0   "  ?id "  nApasaMxagI_xiKAnA )" crlf))
)

;"flipping","Adj","1.nApasaMxagI_xiKAnA"
;This is a flipping town.
;
(defrule flip1
(declare (salience 4900))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flipping )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nApasaMxagI_xiKAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flip.clp  	flip1   "  ?id "  nApasaMxagI_xiKAnA )" crlf))
)

;"flipping","Adv","1.nApasaMxagI_xiKAnA"
(defrule flip2
(declare (salience 4800))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlASa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flip.clp flip2 " ?id "  wAlASa_kara )" crlf)) 
)

(defrule flip3
(declare (salience 4700))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlASa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flip.clp flip3 " ?id "  wAlASa_kara )" crlf)) 
)

(defrule flip4
(declare (salience 4600))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlASa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flip.clp flip4 " ?id "  wAlASa_kara )" crlf)) 
)

(defrule flip5
(declare (salience 4500))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wAlASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flip.clp	flip5  "  ?id "  " ?id1 "  wAlASa_kara  )" crlf))
)

(defrule flip6
(declare (salience 4400))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flip.clp 	flip6   "  ?id "  palata )" crlf))
)

(defrule flip7
(declare (salience 4300))
(id-root ?id flip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Plipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flip.clp 	flip7   "  ?id "  Plipa )" crlf))
)

;"flip","Interj","1.Plipa{ArScaya yA xuKa kA uxgAra}"
;Oh flip !
;
;