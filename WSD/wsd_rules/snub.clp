
(defrule snub0
(declare (salience 5000))
(id-root ?id snub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snub.clp 	snub0   "  ?id "  cipatA_huA )" crlf))
)

;"snub","Adj","1.cipatA_huA"
;My friends nose something snub from the front.
;
(defrule snub1
(declare (salience 4900))
(id-root ?id snub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JidZakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snub.clp 	snub1   "  ?id "  JidZakI )" crlf))
)

;"snub","N","1.JidZakI/dZAzta/apamAna"
;His remarks in the T.V. interview are being interpreted as a deliberate snub to the president.
;
(defrule snub2
(declare (salience 4800))
(id-root ?id snub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dapata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snub.clp 	snub2   "  ?id "  dapata )" crlf))
)

;"snub","V","1.dapatanA/JidZakanA"
;Our football players have consistantly snobbed the tournament because of the poor prize money.
;
