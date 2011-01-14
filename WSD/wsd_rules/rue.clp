
(defrule rue0
(declare (salience 5000))
(id-root ?id rue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id brAhmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rue.clp 	rue0   "  ?id "  brAhmI )" crlf))
)

;"rue","N","1.brAhmI"
;Rue is used as a ayurvedic medicine. 
;
(defrule rue1
(declare (salience 4900))
(id-root ?id rue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilApa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rue.clp 	rue1   "  ?id "  vilApa_kara )" crlf))
)

;"rue","VTI","1.vilApa_kara"
;My son rued the day he joined the new college.  
;
