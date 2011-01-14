
(defrule groan0
(declare (salience 5000))
(id-root ?id groan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groan.clp 	groan0   "  ?id "  Aha )" crlf))
)

;"groan","N","1.Aha"
;The patient's groan could be heard even outside the operation room
;
(defrule groan1
(declare (salience 4900))
(id-root ?id groan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groan.clp 	groan1   "  ?id "  karAha )" crlf))
)

;"groan","VI","1.karAhanA"
;The patient is groaning with pain
;
