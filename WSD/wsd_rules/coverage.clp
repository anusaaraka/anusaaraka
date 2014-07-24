;@@@ Added by Preeti(7-12-13)
;The book gives good, general coverage of the subject. [ Oxford Advanced Learner's Dictionary]
;puswaka viRaya kI acCI, sAmAnya jAnakArI xewI hE.
(defrule coverage1
(declare (salience 5050))
(id-root ?id coverage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coverage.clp      coverage1   "  ?id "  jAnakArI )" crlf))
)

;@@@ Added by Preeti(7-12-13)
;The government provides health coverage for low-income families. 
;sarakAra nimna Aya vAle parivAroM ke lie svAsWya bImAkqwa rASi xewI hE.
(defrule coverage2
(declare (salience 6000))
(id-root ?id coverage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 health|insurance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bImAkqwa_rASi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coverage.clp      coverage2   "  ?id "  bImAkqwa_rASi )" crlf))
)

;@@@ Added by Preeti(7-12-13)
;Immunization coverage against fatal diseases has increased to 99% in some countries. 
;kuCa xeSoM meM jIvaGAwaka bImAriyoM ke viruxXa prawirakRaNa kAryakRewra vyApwi meM  99%  kI vqxXi_huI hE.
(defrule coverage3
(declare (salience 6000))
(id-root ?id coverage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 immunization)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryakRewra_vyApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coverage.clp      coverage3   "  ?id "  kAryakRewra_vyApwi )" crlf))
)



;Added by sheetal(17-03-10)
;The coverage on TV and on the radio has been terrible .
(defrule coverage0
(declare (salience 5000))
(id-root ?id coverage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(id-root =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA_viSeRa_kA_byOrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coverage.clp      coverage0   "  ?id "  GatanA_viSeRa_kA_byOrA )" crlf))
)

