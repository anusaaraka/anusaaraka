
(defrule chat0
(declare (salience 5000))
(id-root ?id chat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " chat.clp chat0 " ?id "  bAwacIwa_kara )" crlf)) 
)

(defrule chat1
(declare (salience 4900))
(id-root ?id chat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chat.clp	chat1  "  ?id "  " ?id1 "  bAwacIwa_kara  )" crlf))
)

(defrule chat2
(declare (salience 4800))
(id-root ?id chat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gapaSapa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chat.clp 	chat2   "  ?id "  gapaSapa )" crlf))
)

;"chat","N","1.gapaSapa"
;My friend && I had a long chat about our school days.
;
(defrule chat3
(declare (salience 4700))
(id-root ?id chat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gapaSapa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chat.clp 	chat3   "  ?id "  gapaSapa_kara )" crlf))
)

;"chat","V","1.gapaSapa_karanA"
;My friend && I chatted whole night.
;
