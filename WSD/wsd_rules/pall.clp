
(defrule pall0
(declare (salience 5000))
(id-root ?id pall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 arUcikara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pall.clp	pall0  "  ?id "  " ?id1 "  arUcikara_ho  )" crlf))
)

;She was watching movie,but because of so many songs it soon palled on her.
;vaha Pilma xeKa rahI WI paranwu bahuwa se gIwa hone ke kAraNa SIGra hI vaha (Pilma) usake lie arUcikara ho gaI
(defrule pall1
(declare (salience 4900))
(id-root ?id pall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id labAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pall.clp 	pall1   "  ?id "  labAxA )" crlf))
)

;"pall","N","1.labAxA"
;A pall of smoke spread over the town.
;Xuez kA eka labAxA nagara para PElA huA WA.
;--"2.kaPZana"
;The wind blew away the pall from the dead body.
;mqwa SarIra para se havA ne kaPZana udZA xiyA.
;
(defrule pall2
(declare (salience 4800))
(id-root ?id pall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIrasa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pall.clp 	pall2   "  ?id "  nIrasa_ho_jA )" crlf))
)

;"pall","VTI","1.nIrasa_ho_jAnA"
;As the person grows older,worldly pleasures begin to pall.
;jEse manuRya bUDZA howA jAwA hE.sAMsArika KuSiyAz nIrasa hone lagawI hEM.
;
