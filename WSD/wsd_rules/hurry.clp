
(defrule hurry0
(declare (salience 5000))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurry.clp 	hurry0   "  ?id "  jalxI )" crlf))
)

;"hurry","N","1.jalxI"
;tInU 'hurry' meM apanA pAsaporta lenA BUla gayA.
;
(defrule hurry1
(declare (salience 4900))
(id-root ?id hurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurry.clp 	hurry1   "  ?id "  jalxI_kara )" crlf))
)

;"hurry","V","1.jalxI_karanA"
;vaha sArA kAma'hurry' meM karawA hE.
;
