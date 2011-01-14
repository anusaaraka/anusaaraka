
(defrule crew0
(declare (salience 5000))
(id-root ?id crew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAvikagaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crew.clp 	crew0   "  ?id "  nAvikagaNa )" crlf))
)

;"crew","N","1.nAvikagaNa"
;Officers && the crew of the ship are all alert. 
;He is a member of the Cambridge crew. 
;--"2.karmacArI"
;The crew of the Rajdhani Express do their duty sincerely. 
;
(defrule crew1
(declare (salience 4900))
(id-root ?id crew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAja_para_nAvikoM_ko_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crew.clp 	crew1   "  ?id "  jahAja_para_nAvikoM_ko_lagA )" crlf))
)

;"crew","V","1.jahAja_para_nAvikoM_ko_lagAnA"
;You can employ a crew for our ship. 
;
