
(defrule progressive0
(declare (salience 5000))
(id-root ?id progressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  progressive.clp 	progressive0   "  ?id "  pragawiSIla )" crlf))
)

;"progressive","Adj","1.pragawiSIla"
;Indis is progressive among south Asian countries. 
;
(defrule progressive1
(declare (salience 4900))
(id-root ?id progressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  progressive.clp 	progressive1   "  ?id "  pragawiSIla )" crlf))
)

;"progressive","N","1.pragawiSIla"
;Progressives && conservatives clash in communist countries.
;
