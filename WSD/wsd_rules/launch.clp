
(defrule launch0
(declare (salience 5000))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nAtakIya_DaMga_se_SuruAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " launch.clp	launch0  "  ?id "  " ?id1 "  nAtakIya_DaMga_se_SuruAwa_kara  )" crlf))
)

;
;
(defrule launch1
(declare (salience 4900))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " launch.clp	launch1  "  ?id "  " ?id1 "  cala_padZa  )" crlf))
)

;
;
(defrule launch2
(declare (salience 4800))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badI_motara_bota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch2   "  ?id "  badI_motara_bota )" crlf))
)

;"launch","N","1.badI_motara_bota"
;We took a launch to cross the lake.?
;
(defrule launch3
(declare (salience 4700))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch3   "  ?id "  AramBa_kara )" crlf))
)

;"launch","V","1.AramBa_karanA"
;Our company has launched a new product.
;--"2.jalAvawaraNa"
;Launch a ship. 
;--"3.CodanA"
;launch a satellite.
;--"4.pravarwwana_karanA"
;Launch a new model of car.
;
