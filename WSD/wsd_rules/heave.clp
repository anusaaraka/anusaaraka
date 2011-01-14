
(defrule heave0
(declare (salience 5000))
(id-root ?id heave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkRepaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heave.clp 	heave0   "  ?id "  uwkRepaNa )" crlf))
)

;"heave","N","1.uwkRepaNa"
;They will heave the satellite into the space through a rocket.
;upagraha kA aMwarikRa meM rAketa xvArA uwkRepaNa kiyA jAyegA.
;
(defrule heave1
(declare (salience 4900))
(id-root ?id heave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_lagAkara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heave.clp 	heave1   "  ?id "  jora_lagAkara_uTA )" crlf))
)

;"heave","V","1.jora_lagAkara_uTAnA"
;The player heaved the football in the air with a kick . 
;KilAdZI ne PutabAla ko kika se jora lagAkara havA meM uTA xiyA.
;
