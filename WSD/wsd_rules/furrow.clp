
(defrule furrow0
(declare (salience 5000))
(id-root ?id furrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala_reKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furrow.clp 	furrow0   "  ?id "  hala_reKA )" crlf))
)

;"furrow","N","1.hala_reKA"
;The farmer planted the seeds in the freshly made furrows.
;--"2.JurrI"
;She has furrows on her forehead.
;
(defrule furrow1
(declare (salience 4900))
(id-root ?id furrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furrow.clp 	furrow1   "  ?id "  hala_calA )" crlf))
)

;"furrow","V","1.hala_calAnA"
;The farmer furrowed the fields for the new season.
;
