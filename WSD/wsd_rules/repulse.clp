
(defrule repulse0
(declare (salience 5000))
(id-root ?id repulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repulse.clp 	repulse0   "  ?id "  iMkAra )" crlf))
)

;"repulse","N","1.iMkAra"
;My request for a donation met with a repulse.
;
(defrule repulse1
(declare (salience 4900))
(id-root ?id repulse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaxedZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repulse.clp 	repulse1   "  ?id "  KaxedZa_xe )" crlf))
)

;"repulse","VT","1.KaxedZa_xenA"
;The enemy forces were repulsed.  
;--"2.TukarA_xenA"
;Rita repulsed Ravi's advances.
;
