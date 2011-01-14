
(defrule throughout0
(declare (salience 5000))
(id-root ?id throughout)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) year)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throughout.clp 	throughout0   "  ?id "  Bara_meM )" crlf))
)

(defrule throughout1
(declare (salience 4900))
(id-root ?id throughout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SurU_se_anwa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throughout.clp 	throughout1   "  ?id "  SurU_se_anwa_waka )" crlf))
)

;"throughout","Adv","1.SurU_se_anwa_waka"
;The rule works throughout the data..
;
(defrule throughout2
(declare (salience 4800))
(id-root ?id throughout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throughout.clp 	throughout2   "  ?id "  Bara_meM )" crlf))
)

; Changed by Amba; pUre xeSa meM Vs xeSa+Bara meM; later is preferable from word order point of view
;"throughout","Prep","1.pUre_meM"
;Christmas is celebrated throughout the country.
;
