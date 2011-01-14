
(defrule faint0
(declare (salience 5000))
(id-root ?id faint)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirbala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  faint.clp 	faint0   "  ?id "  nirbala )" crlf))
)

;"faint","Adj","1.nirbala"
;Illness has made her faint && inactive.
;--"2.aspaRta"
;I only have a faint idea of what she is doing at present.
;--"3.XImA"
;I suddenly felt faint from the pain
;
(defrule faint1
(declare (salience 4900))
(id-root ?id faint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  faint.clp 	faint1   "  ?id "  mUrCA )" crlf))
)

;"faint","N","1.mUrCA"
;She fell down from the staircase in a faint. 
;
(defrule faint2
(declare (salience 4800))
(id-root ?id faint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrCiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  faint.clp 	faint2   "  ?id "  mUrCiwa_ho )" crlf))
)

;"faint","VI","1.mUrCiwa_honA"
;She fainted during assembly due to weakness.
;
