
(defrule graduate0
(declare (salience 5000))
(id-root ?id graduate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id snAwaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graduate.clp 	graduate0   "  ?id "  snAwaka )" crlf))
)

;"graduate","N","1.snAwaka"
;He is a graduate in Biology.
;
(defrule graduate1
(declare (salience 4900))
(id-root ?id graduate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upAXi_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  graduate.clp 	graduate1   "  ?id "  upAXi_prApwa_kara )" crlf))
)

;"graduate","VI","1.upAXi_prApwa_karanA"
;Anil graduated from IIT Kanpur.
;
