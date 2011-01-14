
(defrule jig0
(declare (salience 5000))
(id-root ?id jig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wirakana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jig.clp 	jig0   "  ?id "  Wirakana )" crlf))
)

;"jig","N","1.Wirakana{nAca_nAcane_kI_gawa}"
;I don't mind doing a jig at parties.
;
(defrule jig1
(declare (salience 4900))
(id-root ?id jig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jig.clp 	jig1   "  ?id "  nAca )" crlf))
)

;"jig","VI","1.nAcanA"
;The music is such that you can't help jigging.
;
