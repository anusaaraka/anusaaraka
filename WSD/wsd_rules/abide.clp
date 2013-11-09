
(defrule abide0
(declare (salience 5000))
(id-root ?id abide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-by_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " abide.clp abide0 " ?id "  mAna_le )" crlf)) 
)

(defrule abide1
(declare (salience 4900))
(id-root ?id abide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " abide.clp	abide1  "  ?id "  " ?id1 "  mAna_le  )" crlf))
)

(defrule abide2
(declare (salience 4800))
(id-root ?id abide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id abiding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  abide.clp  	abide2   "  ?id "  sWAI )" crlf))
)

;"abiding","Adj","1.sWAI"
(defrule abide3
(declare (salience 4700))
(id-root ?id abide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abide.clp 	abide3   "  ?id "  pAlana_kara )" crlf))
)

;"abide","V","1.pAlana_karanA"
;If you join sports club,you have to abide by its rules.
;--"2.bane_rahanA"
;According to Article 370, everyone doesn't have the right to abide in J && K.
;
;
