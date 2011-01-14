
(defrule yen0
(declare (salience 5000))
(id-root ?id yen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yena))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yen.clp 	yen0   "  ?id "  yena )" crlf))
)

;"yen","N","1.yena{jApAna_kI_muxrA}"
;The value of yen keeps fluctuating.  
;--"1.lalaka"
;I have a yen to go to Antartica.
;
(defrule yen1
(declare (salience 4900))
(id-root ?id yen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lalaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yen.clp 	yen1   "  ?id "  lalaka )" crlf))
)

;"yen","V","1.lalakanA"
;He was yenning to go to Antartica.
;
