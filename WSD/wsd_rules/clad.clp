
(defrule clad0
(declare (salience 5000))
(id-root ?id clad)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cladding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AcCAxiwa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  clad.clp  	clad0   "  ?id "  AcCAxiwa_karanA )" crlf))
)

;"cladding","N","1.AcCAxiwa_karanA"
;The vehicles had metal cladding.
;
(defrule clad1
(declare (salience 4900))
(id-root ?id clad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clad.clp 	clad1   "  ?id "  DakA_huA )" crlf))
)

;"clad","Adj","1.DakA_huA"
;A steelclad machine was kept in the factory.
;--"2.kapadZe_pahane_hue"
;The fashion models were scantily clad.
;
;
