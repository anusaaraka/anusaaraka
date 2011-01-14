
(defrule telephone0
(declare (salience 5000))
(id-root ?id telephone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telIPZona))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telephone.clp 	telephone0   "  ?id "  telIPZona )" crlf))
)

;"telephone","N","1.telIPZona"
;Telephone is used for quick communication.
;
(defrule telephone1
(declare (salience 4900))
(id-root ?id telephone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  telephone.clp 	telephone1   "  ?id "  telIPona_kara )" crlf))
)

;"telephone","VT","1.telIPona_kara"
;He telephoned his friend to say that he would be late for the function.
;
