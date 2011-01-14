
(defrule ride0
(declare (salience 5000))
(id-root ?id ride)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id riding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id savArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ride.clp  	ride0   "  ?id "  savArI )" crlf))
)

;"riding","N","1.savArI"
;He has enrolled himself in a riding school.    
;
(defrule ride1
(declare (salience 4900))
(id-root ?id ride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ride.clp 	ride1   "  ?id "  sEra )" crlf))
)

;"ride","N","1.sEra{GodZe_yA_gAdZI_para_savAra_hokara_sEra}"
;He gave me a ride in his new car.   
;
(defrule ride2
(declare (salience 4800))
(id-root ?id ride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id savArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ride.clp 	ride2   "  ?id "  savArI_kara )" crlf))
)

;"ride","VTI","1.savArI_karanA"
;He rode his jeep over the rough mountains.       
;
