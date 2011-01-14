
(defrule proof0
(declare (salience 5000))
(id-root ?id proof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBexya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proof.clp 	proof0   "  ?id "  aBexya )" crlf))
)

;"proof","Adj","1.aBexya"
;Prepare with firm proof clothing in winter season.
;
(defrule proof1
(declare (salience 4900))
(id-root ?id proof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proof.clp 	proof1   "  ?id "  pramANa )" crlf))
)

;"proof","N","1.pramANa"
;Sita has all proof against her accusations.
;--"2.SoXyapawra"
;Mira is perfect at the work of proof.
;
(defrule proof2
(declare (salience 4800))
(id-root ?id proof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proof.clp 	proof2   "  ?id "  paraKA )" crlf))
)

;"proof","V","1.paraKAnA"
;My wrist watch is proofed against water.
;
