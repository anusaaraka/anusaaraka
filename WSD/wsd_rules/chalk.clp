
(defrule chalk0
(declare (salience 5000))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa_hAsila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk0  "  ?id "  " ?id1 "  jIwa_hAsila_kara  )" crlf))
)

;He has chalked up in the game.
;usane Kela meM jIwa hAsila kara lI
(defrule chalk1
(declare (salience 4900))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mawWe_maDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk1  "  ?id "  " ?id1 "  mawWe_maDZa  )" crlf))
)

;You cannot chalk up your mistakes on others.
;wuma apanI galwiyAz xUsaroM ke mawWe nahIM maDZa sakawe
(defrule chalk2
(declare (salience 4800))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " chalk.clp chalk2 " ?id "  liKa )" crlf)) 
)

(defrule chalk3
(declare (salience 4700))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk3  "  ?id "  " ?id1 "  liKa  )" crlf))
)

(defrule chalk4
(declare (salience 4600))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chalk.clp 	chalk4   "  ?id "  KadZiyA )" crlf))
)

(defrule chalk5
(declare (salience 4500))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chalk.clp 	chalk5   "  ?id "  cihna_lagA )" crlf))
)

;"chalk","VT","1.cihna_lagAnA"
;We have to chalk the items that have to be bought from the list .
;
;