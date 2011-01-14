
;Added by human
(defrule tape0
(declare (salience 5000))
(id-root ?id tape)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 record)
(viSeRya-on_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teparikArdara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tape.clp 	tape0   "  ?id "  teparikArdara )" crlf))
)

(defrule tape1
(declare (salience 4900))
(id-root ?id tape)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) deck)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tepa_rikArdara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tape.clp 	tape1   "  ?id "  tepa_rikArdara )" crlf))
)

(defrule tape2
(declare (salience 4800))
(id-root ?id tape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tape.clp 	tape2   "  ?id "  pattI )" crlf))
)

(defrule tape3
(declare (salience 4700))
(id-root ?id tape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwe_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tape.clp 	tape3   "  ?id "  PIwe_se_bAzXa )" crlf))
)

;"tape","V","1.PIwe_se_bAzXanA"
;You tape the bundle.
;--"2.aBileKana_karanA"
;He taped his entire speech.
;
;
