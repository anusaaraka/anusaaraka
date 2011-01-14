;Meanings changed from sisakArI to PuPakAra and sisakAra to PuPakAra in rules hiss0 and hiss1 respectively (Meena 20.02.10)
 
(defrule hiss0
(declare (salience 5000))
(id-root ?id hiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PuPakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hiss.clp 	hiss0   "  ?id "  PuPakAra )" crlf))
)

;"hiss","N","1.sisakArI/PuPakArI"
;sAzpa kI PuPakArI 'hiss'suna kara saBI BAga KadZe hue.
;
(defrule hiss1
(declare (salience 4900))
(id-root ?id hiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PuPakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hiss.clp 	hiss1   "  ?id "  PuPakAra )" crlf))
)

;"hiss","V","1.sisakAranA/PuPakAranA"
;sAzpa ne jora se 'hiss' (PuPakAra BarI)
;
