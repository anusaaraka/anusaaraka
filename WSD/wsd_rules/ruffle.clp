
(defrule ruffle0
(declare (salience 5000))
(id-root ?id ruffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAlara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruffle.clp 	ruffle0   "  ?id "  JAlara )" crlf))
)

;"ruffle","N","1.JAlara"
;People used to put wide stiff  ruffles on their garments in 16th && 17th centuary.  
;
(defrule ruffle1
(declare (salience 4900))
(id-root ?id ruffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hadZabadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruffle.clp 	ruffle1   "  ?id "  hadZabadZa )" crlf))
)

;"ruffle","VTI","1.hadZabadZanA"
;She never gets ruffled even under odd circumstances.
;--"2.KalabalI_macAnA"
;The breeze ruffled the calm waters of the pond.
;
