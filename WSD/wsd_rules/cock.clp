
(defrule cock0
(declare (salience 5000))
(id-root ?id cock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id murgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cock.clp 	cock0   "  ?id "  murgA )" crlf))
)

;"cock","N","1.murgA"
;The cock crows in the morning.
;
(defrule cock1
(declare (salience 4900))
(id-root ?id cock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cock.clp 	cock1   "  ?id "  KadZA_kara )" crlf))
)

;"cock","V","1.KadZA_karanA"
;The dog cocked its ears when it heard a sound.
;--"2.eka_waraPa_JukAnA"
;She cocked her scooter  to check the oil.
;--"3.uTAkara_wEyAra_raKanA"
;Soldiers cocked the Bofors gun.
;
