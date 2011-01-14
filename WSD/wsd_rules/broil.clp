
(defrule broil0
(declare (salience 5000))
(id-root ?id broil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soragula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broil.clp 	broil0   "  ?id "  Soragula )" crlf))
)

;"broil","N","1.Soragula"
(defrule broil1
(declare (salience 4900))
(id-root ?id broil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broil.clp 	broil1   "  ?id "  garma_kara )" crlf))
)

;"broil","V","1.garma_karanA"
;The travellers sat broiling in the sun, for their next bus.
;--"2.Aga_yA_SIKa_para_pakAnA"
;They broiled some chicken for dinner.
;--"3.seMkanA"
;Broil fish
;The sun broils the valley in the summer
;
