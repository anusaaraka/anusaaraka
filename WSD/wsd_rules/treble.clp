
(defrule treble0
(declare (salience 5000))
(id-root ?id treble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_svara_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treble.clp 	treble0   "  ?id "  ucca_svara_kA )" crlf))
)

;"treble","Adj","1.ucca_svara_kA"
;The music system has a treble recording facility.
;--"1.wigunA"
;She earns treble my salary .
;
(defrule treble1
(declare (salience 4900))
(id-root ?id treble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treble.clp 	treble1   "  ?id "  ucca_Xvani )" crlf))
)

;"treble","N","1.ucca_Xvani"
;Switch off the treble on the music system.
;It was a choir of trebles.
;
(defrule treble2
(declare (salience 4800))
(id-root ?id treble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wigunA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treble.clp 	treble2   "  ?id "  wigunA_kara )" crlf))
)

;"treble","V","1.wigunA_karanA"
;The businessman had to treble his profits.
;
