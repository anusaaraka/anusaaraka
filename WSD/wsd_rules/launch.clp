
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


;Modified by Nandini(4-12-13)
;English and Hindi traslation added by Nandini
;Modified new meaning 
;It's time I launched out on my own.
;yahiM samaya hE ki mE svayam ko peSa karuM.
(defrule launch1
(declare (salience 4900))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " launch.clp	launch1  "  ?id "  " ?id1 "  peSa_kara  )" crlf))
)

;Hindi traslation added by Nandini(4-12-13)
;"launch","N","1.badI_motara_bota"
;We took a launch to cross the lake.
;hamane JIla pAra karane ke lie badI_motara bota liyA.
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


;Our company has launched a new product.
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

;@@@ Added by Nandini(4-12-13)
;The Infra Red Astronomy Satellite IRAS launched in 1983 succeeded in discovering such protoplanetary discs around a few nearby stars like beta pictoris.[from mail]
(defrule launch4
(declare (salience 4700))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 iras)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRepiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch4   "  ?id "  prakRepiwa_kara )" crlf))
)

;@@@ Added by Nandini(4-12-13)
;The party is going to launch his latest novel.[oxford advanced learner's dictionary]
;nayA mAdela julE meM praswuwa kiyA jAegA.
(defrule launch5
(declare (salience 4700))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 novel|model)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch5   "  ?id "  praswuwa_kara )" crlf))
)

;@@@ Added by Nandini(4-12-13)
;The Navy is to launch a new warship today.[oxford advanced learner's dictionary]
;samuxrI senA Aja eka nayA jafgI jahAja jala_meM uwArane vAlA hE.
(defrule launch6
(declare (salience 4700))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 warship|lifeboat)
(or(kriyA-object ?id ?id1)(kriyA-karma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jala_meM_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch6   "  ?id "  jala_meM_uwAra )" crlf))
)

;@@@ Added by Nandini(4-12-13)
;Without warning he launched himself at me. 
;cewAvanI ke binA usane muJapara svayaM AramBa kiyA.
(defrule launch7
(declare (salience 4750))
(id-root ?id launch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmane_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  launch.clp 	launch7   "  ?id "  sAmane_A )" crlf))
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
