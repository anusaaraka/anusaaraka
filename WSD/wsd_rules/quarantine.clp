
(defrule quarantine0
(declare (salience 5000))
(id-root ?id quarantine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgaroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarantine.clp 	quarantine0   "  ?id "  saMgaroXa )" crlf))
)

;"quarantine","N","1.saMgaroXa"
;The Jews were in quarantine for a long period.
;
(defrule quarantine1
(declare (salience 4900))
(id-root ?id quarantine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgaroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarantine.clp 	quarantine1   "  ?id "  saMgaroXa_kara )" crlf))
)

;"quarantine","V","1.saMgaroXa_karanA"
;The animals are quarantined before they are allowed to enter a foreign nation.
;
