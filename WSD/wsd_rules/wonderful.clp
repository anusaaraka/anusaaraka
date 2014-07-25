;@@@ Added by Nandini (26-08-13)
;The weather was absolutely wonderful.
;mOsama pUrNawaH baDiyA WA.
(defrule wonderful0
(declare (salience 100))
(id-root ?id wonderful)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(or (viSeRya-viSeRaNa  ?id1 ?id)(viSeRya-viSeRaka ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonderful.clp 	wonderful0   "  ?id "  baDZiyA )" crlf))
)

;@@@ Added by Nandini (26-08-13)
;Precious stones have wonderful effect on human being.
;The medicine had a wonderful effect on the patient.
;ORaXI kA marIja para AxBuwa praBAva huA.
;Tajmahal is an example of wonderful architecture.
;$$$ Modified by Pramila(BU) on 21-02-2014 ;added 'kriyA-under_saMbanXI' relation
;He sat under a wonderful velvet sky.    [verified sentence]
;vaha eka axBuwa maKamalI AsamAna ke nIce bETA.
(defrule wonderful1
(declare (salience 200))
(id-root ?id wonderful)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(viSeRya-viSeRaNa  ?id1 ?id)
(or(viSeRya-on_saMbanXI ?id1 ?)(viSeRya-of_saMbanXI  ?id1 ?)(subject-subject_samAnAXikaraNa  ?id2 ?)(kriyA-under_saMbanXI  ?kri ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axBuwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonderful.clp 	wonderful1   "  ?id " axBuwa )" crlf))
)


