
(defrule jack0
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jack.clp jack0 " ?id "  manA_kara )" crlf)) 
)

;I asked my maid to clean my car but she jacked up on me.
;mEne apanI nOkarAnI se kahA ki merI kAra sAPa kara xe lekina usane manA kara xiyA
(defrule jack1
(declare (salience 4900))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack1  "  ?id "  " ?id1 "  manA_kara  )" crlf))
)

;I asked my maid to clean my car but she jacked up on me.
;mEne apanI nOkarAnI se kahA ki merI kAra sAPa kara xe lekina usane manA kara xiyA
(defrule jack2
(declare (salience 4800))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jack.clp 	jack2   "  ?id "  jEka )" crlf))
)

;default_sense && category=noun	BArI_boJA_Upara_uTAne_kA_yanwra	0
;"jack","N","1.BArI_boJA_Upara_uTAne_kA_yanwra"
;I don't know how to use a jack.
;--"2.gulAma{wASa_ke_pawwoM_meM}"
;Jack is a Court Card in a pack of playing cards.
;--"3.eka_prakAra_kA_plaga"
;The speaker was connected to the tape recorder by a jack.
;
;