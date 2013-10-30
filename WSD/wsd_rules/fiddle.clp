
(defrule fiddle0
(declare (salience 5000))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fiddling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nagaNya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fiddle.clp  	fiddle0   "  ?id "  nagaNya )" crlf))
)

;"fiddling","Adj","1.nagaNya"
;These fiddling little details we can ignore at the moment.
;
;
(defrule fiddle1
(declare (salience 4900))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KilavAdZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fiddle.clp	fiddle1  "  ?id "  " ?id1 "  KilavAdZa_kara  )" crlf))
)

;Stop fiddling with your pencil.
;apanI kalama ke sAWa KilavAdZa mawa karo
(defrule fiddle2
(declare (salience 4800))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_kI_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fiddle.clp	fiddle2  "  ?id "  " ?id1 "  vyarWa_kI_bAwa_kara  )" crlf))
)

(defrule fiddle3
(declare (salience 4700))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_kI_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fiddle.clp	fiddle3  "  ?id "  " ?id1 "  vyarWa_kI_bAwa_kara  )" crlf))
)

(defrule fiddle4
(declare (salience 4600))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-around_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_kI_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fiddle.clp	fiddle4  "  ?id "  " ?id1 "  vyarWa_kI_bAwa_kara  )" crlf))
)

(defrule fiddle5
(declare (salience 4500))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyarWa_kI_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fiddle.clp	fiddle5  "  ?id "  " ?id1 "  vyarWa_kI_bAwa_kara  )" crlf))
)

(defrule fiddle6
(declare (salience 4400))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa_kI_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fiddle.clp 	fiddle6   "  ?id "  vyarWa_kI_bAwa_kara )" crlf))
)

(defrule fiddle7
(declare (salience 4300))
(id-root ?id fiddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAyalina_nAmaka_bAjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fiddle.clp 	fiddle7   "  ?id "  vAyalina_nAmaka_bAjA )" crlf))
)

;"fiddle","N","1.vAyalina_nAmaka_bAjA"
;He plays the fiddle in his spare time.
;
;
